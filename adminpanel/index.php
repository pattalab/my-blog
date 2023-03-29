<?php
    require "session.php";
    require "../koneksi.php";
    // MENGAMBIL DATA JUMLAH KATEGORI
    $queryKategori= mysqli_query($con, "SELECT * FROM kategori");
    $jumlahKategori = mysqli_num_rows($queryKategori);
    // MENGAMBIL DATA JUMLAH PRODUK
    $queryProduk= mysqli_query($con, "SELECT * FROM produk");
    $jumlahProduk = mysqli_num_rows($queryProduk);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>

    <!-- BOOTSTRAP CSS -->
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <!-- FONTAWESOME CSS -->
    <link rel="stylesheet" href="../fontawesome/css/all.css">
</head>

<style>
    .kotak{
        border: solid;
    }

    .summary-kategori{
        background-color: #048ebf;
        border-radius: 15px;
    }

    .summary-produk{
        background-color: #046f3b;
        border-radius: 15px;
    }

    .no-decoration{
        text-decoration: none;
    }

    

</style>

<body>

    <!-- NAVBAR -->
    <?php require "navbar.php";?>

    <div class="container mt-5">

    <!-- NAVBAR ACTIVE -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">
                <i class="fas fa-home"></i> Home
            </li>
        </ol>
    </nav>

    <!-- GRETTINGS -->
    <h2>Halo <?php echo $_SESSION['username']; ?></h2>

    <div class="container mt-5">
        <div class="row">
            
            <!-- KATEGORI -->
            <div class="col-lg-4 col-md-6 col-12 mb-3">
                <div class="summary-kategori p-3">
                    <div class="row">
                        <div class="col-6">
                            <i class="fas fa-align-justify fa-7x text-white-50"></i>
                        </div>
                        <div class="col-6 text-white">
                            <h3 class="fs-2">Kategori</h3>
                            <p class="fs-4"><?php echo "$jumlahKategori"?> Kategori</p>
                            <p><a href="kategori.php" class="text-white no-decoration">Lihat Detail</a></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- PRODUK -->
            <div class="col-lg-4 col-md-6 col-12 mb-3">
                <div class="summary-produk p-3">
                    <div class="row">
                        <div class="col-6">
                            <i class="fas fa-box fa-7x text-white-50"></i>
                        </div>
                        <div class="col-6 text-white">
                            <h3 class="fs-2">Produk</h3>
                            <p class="fs-4"><?php echo "$jumlahProduk"?> Produk</p>
                            <p><a href="produk.php" class="text-white no-decoration">Lihat Detail</a></p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../fontawesome/js/all.js"></script>
</body>
</html>