<?php 

    //koneksi database
    include 'koneksi.php';

    //menangkap data
    $id = $_POST['id'];
    $nama_item = $_POST['nama_item'];
    $hargaperkg = $_POST['hargaperkg'];
    $jumlah = $_POST['jumlah'];
    $total = $_POST['total'];

    //mengupdate data ke database
    mysqli_query($db,"UPDATE box2 SET id='$id', nama_item='$nama_item', hargaperkg='$hargaperkg', jumlah='$jumlah', total='$total' 
                    WHERE nama_item='$nama_item' ");

    //Mengalihkan Ke halaman
    header("location:buah.php");

?>