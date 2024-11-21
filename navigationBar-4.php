<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="Style/style-navigationBar-4.css"/>

<nav class="navBar">
    <div id="mySidenav" class="sidenav">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
        <h3 class="insideMenu">Menu</h3>
        <a href="form-list-kapal.php">Daftar Kapal</a>
        <a href="form-data-kapal.php">Data Kapal</a>
        <a href="form-riwayat-pembayaran-kapal.php?halaman=1&dateDari=&dateSampai=&trip=all&submit=Cek#">Riwayat Pembayaran Kapal</a>
        <a href="form-riwayat-penerimaan-saldo-pembayaran.php">Riwayat Penerimaan Saldo</a>
        <a href="form-riwayat-topup.php">Riwayat Top Up</a>
        <a href="form-hitung-pembayaran.php">Hitung Pembayaran</a>
        <a href="form-trayek-kapal.php">Trayek Kapal</a>
        <a href="form-rambu-kapal.php">Rambu Kapal</a>
        <a href="form-daftar-kru-kapal.php?halaman=1&pencarian=">Daftar Kru Kapal</a>
        <a href="../Manajemen_Keuangan/mutasi/form-daftar-mutasi-rekening.php">Manajemen_Keuangan</a>
        <a href="Action/action-logout-users.php">Log Out</a>
      </div>
      
      <span class="spanMenu" onclick="openNav()">&#9776; Menu</span>
      <a href="form-saldo-users.php"><span class="spanLogOut"><?php include("Fetch_Data/fetch-data-saldo.php"); echo "Saldo: Rp ".number_format($sisaSaldo, 0, '','.');?></span></a>
      
      <script>
      function openNav() {
        document.getElementById("mySidenav").style.width = "250px";
      }
      
      function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
      }
      </script>
</nav>
</html> 
