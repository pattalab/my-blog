<?php 
    require "koneksi.php";
    $queryProduk = mysqli_query($con, "SELECT id, nama, harga, foto, detail FROM produk LIMIT 6");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Toko Online | Home</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="fontawesome/css/all.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
</head>
<body>
    <?php require "navbar.php"; ?>

    <!-- BANNER DAN KOLOM PENCARIAN -->
    <div class="container-fluid banner d-flex align-items-center">
        <div class="container text-center text-white">
            <h1>Toko Online Fashion</h1>
            <h3 class="animate__animated animate__headShake">Mau Cari Apa?</h3>
            <div class="col-md-8 offset-md-2">
                <form autocomplete="off" method="get" action="produk.php">
                    <div class="input-group input-group-lg my-4">
                        <input type="text" class="form-control" placeholder="Cari Barang" aria-label="Recipient's username" aria-describedby="basic-addon2" name="keyword">
                        <button type="submit" class="btn warna3 text-white"><i class="fa-solid fa-magnifying-glass"></i></button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- HIGHLIGHTED KATEGORI -->
    <div class="container-fluid py-5">
        <div class="container text-center">
            <h3 class="">Kategori Terlaris</h3>
            <div class="row mt-5">
                <div class="col-md-4 mb-3">
                    <div class="highlighted-kategori kategori-baju-pria d-flex justify-content-center align-items-center">
                        <h4 class="text-white"><a class="no-decoration" href="produk.php?kategori=Pakaian Pria">Pakaian Pria</a></h4>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="highlighted-kategori kategori-baju-wanita d-flex justify-content-center align-items-center">
                        <h4 class="text-white"><a class="no-decoration" href="produk.php?kategori=Pakaian Wanita">Pakaian Wanita</a></h4>
                    </div>
                </div>
                <div class="col-md-4 mb-3">
                    <div class="highlighted-kategori kategori-sepatu d-flex justify-content-center align-items-center">
                        <h4 class="text-white"><a class="no-decoration" href="produk.php?kategori=Sepatu Pria">Sepatu Pria</a></h4>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- TENTANG KAMI -->
    <div class="container-fluid warna4 py-5">
        <div class="container text-center">
            <h3>Tentang Kami</h3>
            <p class="fs-5 mt-3">
                Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptatum officiis commodi eum odio, magni, nulla cum asperiores quos error porro hic ut! Quidem cumque ea voluptatibus labore nihil ullam cum!
            </p>
        </div>
    </div>

    <div class="container-fluid py-5">
        <div class="container text-center">
            <h3>Produk Kami</h3>

            <div class="row mt-5">
                <?php while($data = mysqli_fetch_array($queryProduk)){ ?>
                <div class="col-sm-6 col-md-4 mb-3">
                    <div class="card h-100">
                        <div class="image-box">
                            <img src="image/<?php echo $data['foto']; ?> " class="card-img-top" alt="...">
                        </div>
                        <div class="card-body">
                            <h4 class="card-title"><?php echo $data['nama']; ?></h4>
                            <p class="card-text text-truncate"><?php echo $data['detail']; ?></p>
                            <p class="card-text text-harga">Rp <?php echo $data['harga']; ?></p>
                            <a href="produk-detail.php?nama=<?php echo $data['nama']; ?>" class="btn warna2 text-white">Detail</a>
                        </div>
                    </div>
                </div>
                <?php } ?>

            </div>
            <a href="produk.php"><button class="btn btn-outline-warning mt-3">See More</button></a>
        </div>
    </div>

    <!--Footer-->
    <?php require "footer.php"; ?>

    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="fontawesome/js/all.js"></script>
</body>
</html>