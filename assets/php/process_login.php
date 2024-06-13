<?php
session_start();

// Konfigurasi database
$host = "localhost";
$username = "root"; 
$password = ""; 
$database = "pandoras"; 

// Membuat koneksi ke database menggunakan MySQLi
$mysqli = new mysqli($host, $username, $password, $database);

// Memeriksa koneksi
if ($mysqli->connect_error) {
    die("Koneksi ke database gagal: " . $mysqli->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $input_email = $_POST["email"];
    $input_password = $_POST["password"];

    // Lakukan validasi dan sanitasi data masukan sesuai kebutuhan Anda
    // Misalnya, gunakan fungsi mysqli_real_escape_string() untuk menghindari SQL injection

    // Buat query untuk mencari pengguna berdasarkan email
    $query = "SELECT * FROM users WHERE email = '$input_email'";
    $result = $mysqli->query($query);

    if ($result && $result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $hashed_password = $row["password"]; // Ganti "password" dengan nama kolom password di tabel Anda

        // Periksa apakah password cocok menggunakan password_verify()
        if (password_verify($input_password, $hashed_password)) {
            // Autentikasi berhasil, setel sesi untuk menandai pengguna telah login
            $_SESSION["user_id"] = $row["id"]; // Ganti "id" dengan nama kolom id pengguna di tabel Anda
            $_SESSION["user_email"] = $input_email;

            // Redirect ke halaman yang sesuai setelah login
            header("Location: dashboard.php"); // Ganti dengan halaman yang sesuai
            exit();
        } else {
            // Autentikasi gagal, tampilkan pesan kesalahan
            $_SESSION["error_message"] = "Email atau password salah. Silakan coba lagi.";

            // Redirect kembali ke halaman login
            header("Location: ../login.html"); // Ganti dengan halaman login
            exit();
        }
    } else {
        // Autentikasi gagal, tampilkan pesan kesalahan
        $_SESSION["error_message"] = "Email atau password salah. Silakan coba lagi.";

        // Redirect kembali ke halaman login
        header("Location: ../login.html"); // Ganti dengan halaman login
        exit();
    }
} else {
    // Jika pengguna mencoba mengakses langsung file ini, mereka akan diarahkan kembali ke halaman login
    header("Location: ../login.html"); // Ganti dengan halaman login
    exit();
}

// Tutup koneksi database
$mysqli->close();
?>
