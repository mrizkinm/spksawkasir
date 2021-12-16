<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct() {
		parent::__construct();
		if (!$this->session->userdata('dataCalon')) {
			redirect('login');
		}
	}

	public function index() {
		$data['content'] = 'dashboard';
		$data['userdata'] = $this->session->userdata('dataCalon');
		$this->load->view('index', $data);
	}

    public function data_calon () {
        $this->load->model('mhome');
        $data['content'] = 'data_calon';
		$data['kriteria'] = $this->mhome->get_kriteria();
        $alternative = $this->mhome->get_alternative();
		$calon = [];
		foreach ($alternative as $key) {
			$arr['nama'] = $key->nama;
			// $arr['alamat'] = $key->alamat;
			// $arr['email'] = $key->email;
			// $arr['phone'] = $key->phone;
			foreach ($this->mhome->get_nilai_matriks($key->id) as $d) {
				$arr[$d['id_kriteria']] = $d['keterangan'];
			}
			array_push($calon, $arr);
		}
		$data['calon'] = $calon;
		$this->load->view('index', $data);
	}

	public function data_kriteria () {
        $this->load->model('mhome');
        $data['content'] = 'data_kriteria';
        $data['kriteria'] = $this->mhome->get_kriteria();
		$this->load->view('index', $data);
	}

	public function data_sub_kriteria () {
        $this->load->model('mhome');
        $data['content'] = 'data_sub_kriteria';
        $data['sub_kriteria'] = $this->mhome->get_sub_kriteria();
		$this->load->view('index', $data);
	}

	public function hasil_akhir () {
        $this->load->model('mhome');
        $data['content'] = 'hasil_akhir';
        $data['kriteria'] = $this->mhome->get_kriteria();
		$alternative = $this->mhome->get_alternative();
		$calon = [];
		foreach ($alternative as $key) {
			$arr['nama'] = $key->nama;
			foreach ($this->mhome->get_nilai_matriks($key->id) as $d) {
				$arr[$d['id_kriteria']] = $d['nilai'];
			}
			array_push($calon, $arr);
		}
		$data['calon'] = $calon;
		$normal = [];
		foreach ($alternative as $key) {
			$arr['nama'] = $key->nama;
			foreach ($this->mhome->get_nilai_matriks($key->id) as $d) {
				$normalisasi = $this->normalisasi($this->mhome->get_array_nilai($d['id_kriteria']), $d['sifat'], $d['nilai']);
				$arr[$d['id_kriteria']] = $normalisasi;
				$hitungbobot[$key->id][$d['id_kriteria']] = $normalisasi*$this->mhome->get_bobot($d['id_kriteria']);
			}
			array_push($normal, $arr);
		}
		$data['normal'] = $normal;
		$rank = [];
		foreach ($alternative as $key) {
			$arr['nama'] = $key->nama;
			$arr['hasil'] = 0;
			foreach($hitungbobot[$key->id] as $keys => $d) {
				$arr[$keys] = $d;
				$arr['hasil'] += $d;
			}
			$check = $this->mhome->check_hasil($key->id);
			if (count($check)> 0) {
				$data_hasil = [
					'hasil' => $arr['hasil']
				];
				$where = [
					'id_calon' => $key->id,
				];
				$this->mhome->update_data($where, $data_hasil, 'hasil');
			} else {
				$data_hasil = [
					'id_calon' => $key->id,
					'hasil' => $arr['hasil']
				];
				// $this->mhome->insert_data($data_hasil, 'hasil');
			}
			array_push($rank, $arr);
		}
		$keys = array_column($rank, 'hasil');
		array_multisort($keys, SORT_DESC, $rank);
		$data['rank'] = $rank;
		$max = $this->mhome->get_hasil();
		$data['max'] = max($max);
		$this->load->view('index', $data);
	}

	private function normalisasi($array, $sifat, $nilai) {
		if ($sifat=='BENEFIT'){
            $result=$nilai/max($array);
        }elseif ($sifat=='COST'){
            $result=min($array)/$nilai;
        }
        return round($result,3);
	}

	public function param_penilaian () {
        $this->load->model('mhome');
        $data['content'] = 'param_penilaian';
		$krit = $this->mhome->get_bobot_kriteria();
		$kriteria = [];
		foreach ($krit as $key) {
			$arr['nama'] = $key->nama;
			$arr['id_kriteria'] = $key->id;
			$arr['bobot'] = $key->bobot;
			$list_krit = $this->mhome->get_nilai_kriteria($key->id);
			$arr['list_nilai'] = [];
			foreach ($list_krit as $d) {
				$arr2['id_nilaikriteria'] = $d->id;
				$arr2['nilai'] = $d->nilai;
				$arr2['keterangan'] = $d->keterangan;
				array_push($arr['list_nilai'], $arr2);
			}
			array_push($kriteria, $arr);
		}
		$data['kriteria'] = $kriteria;
		$this->load->view('index', $data);
	}

	public function update_param () {
        $this->load->model('mhome');
        $id = $this->input->post('id');
		$bobot = $this->input->post('bobot');
		$sum = $this->sumArray($bobot);
		if ($sum == 100) {
			for($i=0; $i < count($id); $i++){
				$data = array(
					'bobot' => $bobot[$i]/100,
				);
				$where = array(
					'id' => $id[$i],
				);
				$this->mhome->update_data($where, $data, 'bobot_kriteria');
			}
			redirect('home/hasil_akhir');
		} else {
			redirect('home/param_penilaian');
		}
	}

	private function sumArray($array) {
		$total = 0;
		foreach ($array as $value) {
			$total += $value;
		}
		return $total;
	}

	public function add_kriteria () {
        $this->load->model('mhome');
        $data['content'] = 'add_kriteria';
		$this->load->view('index', $data);
	}

	public function add_kriteria_process () {
        $this->load->model('mhome');
		$nama = $this->input->post('nama');
		$sifat = $this->input->post('sifat');
		$data = [
			'nama' => $nama,
			'sifat' => $sifat,
		];
		$insert = $this->mhome->insert_data($data, 'kriteria');
		if ($insert) {
			$data = [
				'id_kriteria' => $insert,
				'bobot' => 0,
			];
			$this->mhome->insert_data($data, 'bobot_kriteria');
			redirect('home/data_kriteria');
		} else {
			redirect('home/add_kriteria');
		}
	}

	public function add_sub_kriteria () {
        $this->load->model('mhome');
		$data['kriteria'] = $this->mhome->get_kriteria();
        $data['content'] = 'add_sub_kriteria';
		$this->load->view('index', $data);
	}

	public function add_sub_kriteria_process () {
        $this->load->model('mhome');
		$id_kriteria = $this->input->post('id_kriteria');
		$nilai = $this->input->post('nilai');
		$keterangan = $this->input->post('keterangan');
		$data = [
			'id_kriteria' => $id_kriteria,
			'nilai' => $nilai,
			'keterangan' => $keterangan,
		];
		$insert = $this->mhome->insert_data($data, 'nilai_kriteria');
		if ($insert) {
			redirect('home/data_sub_kriteria');
		} else {
			redirect('home/add_sub_kriteria');
		}
	}

	public function add_calon() {
        $this->load->model('mhome');
        $data['content'] = 'add_calon';
		$krit = $this->mhome->get_kriteria();
		$kriteria = [];
		foreach ($krit as $key) {
			$arr['nama'] = $key->nama;
			$arr['id_kriteria'] = $key->id;
			$list_krit = $this->mhome->get_nilai_kriteria($key->id);
			$arr['list_nilai'] = [];
			foreach ($list_krit as $d) {
				$arr2['id_nilaikriteria'] = $d->id;
				$arr2['nilai'] = $d->nilai;
				$arr2['keterangan'] = $d->keterangan;
				array_push($arr['list_nilai'], $arr2);
			}
			array_push($kriteria, $arr);
		}
		$data['kriteria'] = $kriteria;
		$this->load->view('index', $data);
	}

	public function add_calon_process () {
        $this->load->model('mhome');
		$nama = $this->input->post('nama');
		$nilai = $this->input->post('nilai');
		$kriteria = $this->input->post('kriteria');
		$data = [
			'nama' => $nama
		];
		$insert = $this->mhome->insert_data($data, 'calon');
		for($i=0; $i < count($nilai); $i++){
			$datac = [
				'id_calon' => $insert,
				'id_kriteria' => $kriteria[$i],
				'id_nilaikriteria' => $nilai[$i],
			];
			$id = $this->mhome->insert_data($datac, 'nilai_calon');
		}
		redirect('home/data_calon');
	}

	public function insert_csv_calon() {
		$this->load->model('mhome');
		if (($handle = fopen("datacalon.csv", "r")) !== FALSE) {
			$all_data = array();
			$i = 1;
			while (($data = fgetcsv($handle, 1000, ";")) !== FALSE) {
				if($i==0) {continue; $i=1; }
				// Remove the first iteration as it's not "real" datas
		
				$all_data[] = array(
					'nama' => $data[0],
					'alamat' => $data[1],
					'email' => $data[2],
					'phone' => $data[3],
					'umur' => $data[4],
					'nilai' => $data[5],
					'lulusan' => $data[6],
					'tinggi' => $data[7],
					'berat' => $data[8],
				);
			}
			fclose($handle);
			// print_r($all_data);
			foreach($all_data as $a) {
				$datac = [
					'nama' => $a['nama'],
					'alamat' => $a['alamat'],
					'email' => $a['email'],
					'phone' => $a['phone'],
				];
				$insertcalon = $this->mhome->insert_data($datac, 'calon');
				// $insertcalon = 1;
				for ($x = 1; $x <= 4; $x++) {
					$datan['id_calon'] = $insertcalon;
					$datan['id_kriteria'] = $x;
					if ($x == 1) {
						if ($a['umur'] == 20 || $a['umur'] == 21) {
							$datan['id_nilaikriteria'] = 1;
						} else if ($a['umur'] == 18 || $a['umur'] == 19) {
							$datan['id_nilaikriteria'] = 2;
						} else if ($a['umur'] == 22 || $a['umur'] == 23) {
							$datan['id_nilaikriteria'] = 3;
						} else if ($a['umur'] == 24 || $a['umur'] == 25) {
							$datan['id_nilaikriteria'] = 4;
						} else {
							$datan['id_nilaikriteria'] = 4;
						}
					}
					if ($x == 2) {
						if ($a['lulusan'] >= 0 && $a['nilai'] <= 50) {
							$datan['id_nilaikriteria'] = 5;
						}
						if ($a['nilai'] >= 51 && $a['nilai'] <= 70) {
							$datan['id_nilaikriteria'] = 6;
						}
						if ($a['nilai'] >= 71 && $a['nilai'] <= 90) {
							$datan['id_nilaikriteria'] = 7;
						}
						if ($a['nilai'] >= 91 && $a['nilai'] <= 100) {
							$datan['id_nilaikriteria'] = 8;
						}
					}
					if ($x == 3) {
						if ($a['lulusan'] == 'SMP') {
							$datan['id_nilaikriteria'] = 9;
						}
						if ($a['lulusan'] == 'SMA/SMK') {
							$datan['id_nilaikriteria'] = 10;
						}
						if ($a['lulusan'] == 'D3') {
							$datan['id_nilaikriteria'] = 11;
						}
						if ($a['lulusan'] == 'S1') {
							$datan['id_nilaikriteria'] = 12;
						}
					}
					if ($x == 4) {
						$hitung = $a['berat']/(pow($a['tinggi']/100, 2));
						if ($hitung >= 18.5 && $hitung <= 22.9) {
							$datan['id_nilaikriteria'] = 13;
						} else {
							$datan['id_nilaikriteria'] = 14;
						}
					}
					$insertnilai = $this->mhome->insert_data($datan, 'nilai_calon');
					print_r($datan);
				}
			}
		}
	}

    public function logout() {
        $this->session->sess_destroy();
		redirect('login');
	}
}
