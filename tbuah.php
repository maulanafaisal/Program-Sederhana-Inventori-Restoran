<?php 

    include 'koneksi.php';

    //menangkap inputan data dari form

    $id = $_POST['id'];
    $nama_item = $_POST['nama_item'];
    $hargaperkg = $_POST['hargaperkg'];
    $jumlah = $_POST['jumlah'];
    $total = $_POST['total'];

    //menginput data ke dabase
    mysqli_query($db, "INSERT INTO buah VALUES('$id', '$nama_item', '$hargaperkg', '$jumlah', '$total')");

    //mengalihkan Halaman kembali ke dahsboard
    header("location:buah.php");
?>