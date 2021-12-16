<?php
class Mhome extends CI_Model {

    public function cek_login($email, $password) {
        $this->db->select('*');
        $this->db->from('user');
        $this->db->where('email', $email);
        $this->db->where('password', $password);
        $query = $this->db->get();
        return $query->result();
    }

    public function get_calon() {
        $this->db->select('*');
        $this->db->from('calons');
        $this->db->order_by('id', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

    public function get_kriteria() {
        $this->db->select('*');
        $this->db->from('kriteria');
        $this->db->order_by('id', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

    public function get_sub_kriteria() {
        $this->db->select('nilai_kriteria.id, kriteria.nama, nilai_kriteria.nilai, nilai_kriteria.keterangan');
        $this->db->from('nilai_kriteria');
        $this->db->join('kriteria', 'nilai_kriteria.id_kriteria = kriteria.id');
        $this->db->order_by('nilai_kriteria.id', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

    public function get_alternative() {
        $this->db->select('calon.nama, calon.alamat, calon.email, calon.phone, calon.id');
        $this->db->from('nilai_calon');
        $this->db->join('calon', 'nilai_calon.id_calon = calon.id');
        $this->db->order_by('calon.id', 'asc');
        $this->db->group_by('calon.id');
        $query = $this->db->get();
        return $query->result();
    }

    public function get_nilai_matriks($id) {
        $data = [];
        $this->db->select('nilai_kriteria.nilai as nilai, nilai_kriteria.keterangan as keterangan, kriteria.sifat as sifat, nilai_calon.id_kriteria as id_kriteria');
        $this->db->from('nilai_calon');
        $this->db->join('kriteria', 'nilai_calon.id_kriteria = kriteria.id');
        $this->db->join('nilai_kriteria', 'nilai_calon.id_nilaikriteria = nilai_kriteria.id');
        $this->db->where('nilai_calon.id_calon', $id);
        $this->db->order_by('nilai_kriteria.id', 'asc');
        $query = $this->db->get();
        $hasil = $query->result();
        foreach ($hasil as $key) {
            array_push($data, array(
                "nilai"=>$key->nilai,
                "sifat"=>$key->sifat,
                "keterangan"=>$key->keterangan,
                "id_kriteria"=>$key->id_kriteria
            ));
        }
        return $data;
    }

    public function get_array_nilai($id) {
        $data = [];
        $this->db->select('nilai_kriteria.nilai as nilai');
        $this->db->from('nilai_calon');
        $this->db->join('nilai_kriteria', 'nilai_calon.id_nilaikriteria = nilai_kriteria.id');
        $this->db->where('nilai_calon.id_kriteria', $id);
        $query = $this->db->get();
        $hasil = $query->result();
        foreach ($hasil as $key) {
            array_push($data, $key->nilai);
        }
        return $data;
    }

    function get_bobot($id) {
        $this->db->select('bobot');
        $this->db->from('bobot_kriteria');
        $this->db->where('id_kriteria', $id);
        $query = $this->db->get();
        $hasil = $query->result();
        return $hasil[0]->bobot;
    }

    public function get_bobot_kriteria() {
        $this->db->select('bobot_kriteria.bobot, bobot_kriteria.id, kriteria.nama');
        $this->db->from('bobot_kriteria');
        $this->db->join('kriteria', 'bobot_kriteria.id_kriteria = kriteria.id');
        $query = $this->db->get();
        return $query->result();
    }

    public function update_data($where, $data, $table) {
        $this->db->where($where);
		return $this->db->update($table, $data);
    }

    public function insert_data($data, $table) {
		$this->db->insert($table, $data);
        $last_id = $this->db->insert_id();
        return $last_id;
	}

    public function check_hasil($id) {
        $this->db->select('hasil');
        $this->db->from('hasil');
        $this->db->where('id_calon', $id);
        $query = $this->db->get();
        return $query->result();
    }

    public function get_nilai_kriteria($id) {
        $this->db->select('*');
        $this->db->from('nilai_kriteria');
        $this->db->where('id_kriteria', $id);
        $this->db->order_by('id', 'asc');
        $query = $this->db->get();
        return $query->result();
    }

    public function get_hasil() {
        $this->db->select('hasil.hasil, calon.nama');
        $this->db->from('hasil');
        $this->db->join('calon', 'hasil.id_calon = calon.id');
        $query = $this->db->get();
        return $query->result();
    }

}