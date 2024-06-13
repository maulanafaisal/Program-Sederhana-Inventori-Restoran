<?php 

//Koneksi Database
include 'koneksi.php';

//Menangkap ID yang ingin di hapus
$nama_item = $_GET['nama_item'];

//menghapus Data
mysqli_query($db,"DELETE FROM sayuran WHERE nama_item = '$nama_item'");
    
//kembali ke halaman 
header("location:sayuran.php");
?>