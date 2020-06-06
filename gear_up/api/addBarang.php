<?php
include '../config/conn.php';

if($_SERVER['REQUEST_METHOD']=="POST") {
    $response           = array();
    $nama               = $_POST['nama'];
    $harga              = $_POST['harga'];
    $qty                = $_POST['qty'];
    $catatanPenjual    = $_POST['catatanPenjual'];

    $sql = "INSERT INTO tb_list_barang VALUE(NULL, '$nama', '$harga', '$qty', '$catatanPenjual')";

    if(mysqli_query($connect, $sql)) {
        //Input success
        $response['value'] = 1;
        $response['message'] = "Input success";
        echo json_encode($response);
    } else {
        //Input failed
        $response['value'] = 2;
        $response['message'] = "Input failed";
        echo json_encode($response);
    }
}


// $connect->query("INSERT INTO tb_jasa (kode_jasa, nama_jasa, deskripsi_jasa, harga_jasa, jumlah_tersedia) VALUES ('" . $kode_jasa . "','" . $nama_jasa . "','" . $deskripsi_jasa . "','" . $harga_jasa . "','" . $jumlah_tersedia . "')");

