<?php
    $batas=10;
    $halaman = isset($_GET['halaman'])?(int)$_GET['halaman'] : 1 ;
    $halaman_awal = ($halaman>1)?($halaman*$batas) - $batas : 0;

    $previous = $halaman -1;
    $next = $halaman + 1;

    //session_start();
    $username=$_SESSION['username'];
    $password=$_SESSION['password'];

    $query = "SELECT * FROM riwayat_topup WHERE user_id =(SELECT id FROM users WHERE username='$username' AND password='$password')";
    $data = mysqli_query($dbConnection, $query);
    $jumlah_data = mysqli_num_rows($data);
    $total_halaman = ceil($jumlah_data/$batas);

    
    $query = "SELECT * FROM riwayat_topup WHERE user_id =(SELECT id FROM users WHERE username='$username' AND password='$password') ORDER BY tanggal_topup DESC LIMIT $halaman_awal,$batas";
    $data_riwayat = $dbConnection->query($query);
    $nomor = $halaman_awal+1;

    $noUrut=0;
    if($halaman > 1){
        $noUrut = ($halaman -1) *10; 
    }
    
    while($row_data = mysqli_fetch_array($data_riwayat)){
        $noUrut++;
        echo "<tr>";
        echo "<td scope='row' style='display:none'>". $row_data["id"] ."</td>";
        echo "<td>". $noUrut ."</td>";
        echo "<td>". $row_data["saldo"] ."</td>";
        echo "<td><a href=". $row_data["bukti_topup"] ." target='_blank'>". $row_data["bukti_topup"] ."</td>";
        echo "<td><a></a>". $row_data["tanggal_topup"] ."</td>";
        echo "<td>";
        echo "<a href = 'form-edit-saldo-users.php?id=".$row_data['id']."'>Edit</a></td>";
        echo "<td>";
        echo "<a href = 'Action/hapus-riwayat-topup.php?id=".$row_data['id']."'>Hapus</a>";
        echo "</td>";
        echo "</tr>";
    }
?>
<?php 
    

?>