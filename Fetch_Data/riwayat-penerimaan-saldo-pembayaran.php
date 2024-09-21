<?php
$tbl_name="detail_saldo";       //your table name
$adjacents = 3;

$query = "SELECT COUNT(*) as num FROM $tbl_name";
$total_pages = mysqli_fetch_array(mysqli_query($dbConnection, $query));
$total_pages = $total_pages['num'];


$targetpage = "form-riwayat-penerimaan-saldo-pembayaran.php";   //your file name  (the name of this file)
$limit = 10;                                //how many items to show per page
$page = $_GET['page'];
if($page) 
    $start = ($page - 1) * $limit;          //first item to display on this page
else
    $start = 0;                             //if no page var is given, set start to 0

/* Get data. */
$sql = "SELECT * FROM detail_saldo ORDER BY tanggal_terima DESC LIMIT $start,$limit";
$result = mysqli_query($dbConnection,$sql);

/* Setup page vars for display. */
if ($page == 0) $page = 1;                  //if no page var is given, default to 1.
$prev = $page - 1;                          //previous page is page - 1
$next = $page + 1;                          //next page is page + 1
$lastpage = ceil($total_pages/$limit);      //lastpage is = total pages / items per page, rounded up.
$lpm1 = $lastpage - 1;                      //last page minus 1

/* 
    Now we apply our rules and draw the pagination object. 
    We're actually saving the code to a variable in case we want to draw it more than once.
*/
$pagination = "";
if($lastpage > 1)
{   
    $pagination .= "<div class=\"pagination\">";
    //previous button
    if ($page > 1) 
        $pagination.= "<a href=\"$targetpage?page=$prev\">Previous</a>";
    else
        $pagination.= "<span class=\"disabled\">? previous</span>"; 

    //pages 
    if ($lastpage < 7 + ($adjacents * 2))    //not enough pages to bother breaking it up
    {   
        for ($counter = 1; $counter <= $lastpage; $counter++)
        {
            if ($counter == $page)
                $pagination.= "<span class=\"current\">$counter</span>";
            else
                $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
        }
    }
    elseif($lastpage > 5 + ($adjacents * 2)) //enough pages to hide some
    {
        //close to beginning; only hide later pages
        if($page < 1 + ($adjacents * 2))     
        {
            for ($counter = 1; $counter < 4 + ($adjacents * 2); $counter++)
            {
                if ($counter == $page)
                    $pagination.= "<span class=\"current\">$counter</span>";
                else
                    $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
            }
            $pagination.= "...";
            $pagination.= "<a href=\"$targetpage?page=$lpm1\">$lpm1</a>";
            $pagination.= "<a href=\"$targetpage?page=$lastpage\">$lastpage</a>";       
        }
        //in middle; hide some front and some back
        elseif($lastpage - ($adjacents * 2) > $page && $page > ($adjacents * 2))
        {
            $pagination.= "<a href=\"$targetpage?page=1\">1</a>";
            $pagination.= "<a href=\"$targetpage?page=2\">2</a>";
            $pagination.= "...";
            for ($counter = $page - $adjacents; $counter <= $page + $adjacents; $counter++)
            {
                if ($counter == $page)
                    $pagination.= "<span class=\"current\">$counter</span>";
                else
                    $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
            }
            $pagination.= "...";
            $pagination.= "<a href=\"$targetpage?page=$lpm1\">$lpm1</a>";
            $pagination.= "<a href=\"$targetpage?page=$lastpage\">$lastpage</a>";       
        }
        //close to end; only hide early pages
        else
        {
            $pagination.= "<a href=\"$targetpage?page=1\">1</a>";
            $pagination.= "<a href=\"$targetpage?page=2\">2</a>";
            $pagination.= "...";
            for ($counter = $lastpage - (2 + ($adjacents * 2)); $counter <= $lastpage; $counter++)
            {
                if ($counter == $page)
                    $pagination.= "<span class=\"current\">$counter</span>";
                else
                    $pagination.= "<a href=\"$targetpage?page=$counter\">$counter</a>";                 
            }
        }
    }

    //next button
    if ($page < $counter - 1) 
        $pagination.= "<a href=\"$targetpage?page=$next\">next ?</a>";
    else
        $pagination.= "<span class=\"disabled\">next ?</span>";
    $pagination.= "</div>\n";     
}
?>

<?php
    while($row_data = mysqli_fetch_array($result))
    {
        echo "<tr>";
            echo "<td scope='row' style='display:none'>". $row_data["id"] ."</td>";
            echo "<td>". $row_data["tanggal_terima"] ."</td>";
            echo "<td>". $row_data["total_trip"] ."</td>";
            echo "<td>". $row_data["cop_karantina"] ."</td>";
            echo "<td>". $row_data["phqc_karantina"] ."</td>";
            echo "<td>". $row_data["pnbp_labuh"] ."</td>";
            echo "<td>". $row_data["pnbp_mc"] ."</td>";
            echo "<td>". $row_data["pnbp_rambu"] ."</td>";
            echo "<td>". $row_data["buku_kesehatan_karantina"] ."</td>";
            echo "<td>". $row_data["catatan"] ."</td>";
            //echo "<td>". $row["tipe_kapal_id"] ."</td>";
            echo "<td>";
            echo "<a href = 'form-edit-riwayat-pembayaran-kapal.php?id=".$row_data['id']."'>Edit</a></td>";
            echo "<td>";
            echo "<a href = 'Action/hapus-riwayat-pembayaran-kapal.php?id=".$row_data['id']."'>Hapus</a>";
            echo "</td>";
            echo "</tr>";
    }
?>
<?=$pagination?>
