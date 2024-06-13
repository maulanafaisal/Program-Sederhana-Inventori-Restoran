<?php

include 'koneksi.php';
require 'vendor/autoload.php';

// reference the Dompdf namespace
use Dompdf\Dompdf;
// instantiate and use the dompdf class
$dompdf = new Dompdf();

$html ='<style>
table, th, td{
    font-size: 12px;
    border : 1px solid black;
    border-collapse : collapse;   
}
</style>

<table width="100%">
<tr>
    <th width="3%">No</th>
    <th width="5%">Nama Item</th>
    <th width="5%">Harga/kg</th>
    <th width="5%">Jumlah</th>
    <th width="5%">Total</th>
</tr>';

 
    $data = mysqli_query($db, "SELECT * FROM buah");
    $i = 1;
    $total = 0;
    while($d = mysqli_fetch_array($data)){
        $total += $d['total'];

 
        $html .=' <tr>
        <th> '. $i['id']; .'</th>
        <th>'. $d['nama_item']; .'</th>
        <th>Rp. '. number_format($d['hargaperkg']); .'</th>
        <th>'. $d['jumlah']; .'</th>
        <th>Rp. '. number_format($d['total']); .'</th>
        </tr>';

        '<tr>
            <td colspan = "4"><b>Jumlah Total Keseluruhan</b></td>
            <td><b>Rp '. echo number_format($total); .'</b></td>
        </tr>';

    }
        
$html .='
    </table>';

$dompdf->loadHtml($html);
// (Optional) Setup the paper size and orientation
$dompdf->setPaper('A4', 'landscape');
// Render the HTML as PDF
$dompdf->render();
// Output the generated PDF to Browser
$dompdf->stream("Data Buah.pdf", array("Attachment=>0"));

?>