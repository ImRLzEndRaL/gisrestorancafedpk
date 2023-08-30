<?php
// koneksi database
include '../koneksi.php';

// menangkap data yang di kirim dari form
$id = $_POST['id_restoran'];
$nama = $_POST['nama_restoran'];
$alamat = $_POST['alamat'];
$deskripsi = $_POST['deskripsi'];
$latitude = $_POST['latitude'];
$longitude = $_POST['longitude'];

// update data ke database
mysqli_query($koneksi, "update wisata set nama_restoran='$nama', alamat='$alamat', deskripsi='$deskripsi',  latitude='$latitude', longitude='$longitude' where id_restoran='$id'");

// mengalihkan halaman kembali ke index.php
header("location:tampil_data.php");
