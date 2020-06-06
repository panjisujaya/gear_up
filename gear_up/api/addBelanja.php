<?php
include '../config/conn.php';

if($_SERVER['REQUEST_METHOD']=="POST") {
    $response               = array();
    $pembeli                = $_POST['pembeli'];
    $idBarang               = $_POST['idBarang'];
    // $qty                    = $_POST['qty'];

    $sql = "INSERT INTO tb_pembelian_barang VALUE(NULL,'$pembeli', '$idBarang', '1', NOW())";

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

