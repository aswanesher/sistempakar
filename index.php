<?php include 'header.php'; ?>
<div class="container">
<div class="well well-small">
  		<?php 
include("koneksi.php"); 
echo '<div class="alert alert-info"> <CENTER><H2>Sistem Pakar Diagnosa Kerusakan Motor Ninja 150 RR</H2></CENTER> </div>' ; 
echo "<CENTER><IMG SRC='images/vga.JPG' ' BORDER=0 ALT=''></CENTER>"; 


echo "<br>";

echo' <div class="row-fluid"><ul class="thumbnails">
  <li class="span4">
  <h4>Diagnosa Kerusakan Komponen Lainnya</h4>
    <a href="diagnosa_psu.php" class="thumbnail">
	
      <img src="images/psu.jpg" alt="">
    </a>
	
  </li>
   <li class="span4">
    <h4>Diagnosa Kerusakan Kelistrikan</h4>
    <a href="diagnosa_vga.php" class="thumbnail">
      <img src="images/vga.jpg" alt="">
    </a>
  </li>
   <li class="span4">
    <h4>Diagnosa Kerusakan Mesin</h4>
    <a href="diagnosa_mobo_pro_ram.php" class="thumbnail">
      <img src="images/pmr.jpg" alt="">
    </a>
  </li>
</ul></div>   ';
echo '<div class=" well">
<center><p><strong>Anggota Kelompok : </strong><br>
<span class="label label-warning">Reza Pahlava</span>

</center> </div>';
?>
</div>
</div>
</div>
