<?php
include 'header.php';
include("koneksi.php");
?>

<div class="container"> 
	<div class="well well-small"> 
  <script type='text/javascript' src='http://code.jquery.com/jquery-1.8.3.js'></script>
  <style type='text/css'>
    
  </style>
  


<script type='text/javascript'>//<![CDATA[ 
$(window).load(function(){
$("div.btn-input").live('click', function(){
    var btn = $(this),
        container = btn.parent(),
        name = btn.data('toggle-name'),
        hidden = container.find('input[name="' + name + '"]'),
        value = btn.attr('value');
 
    hidden.val(value);
    container.find(".btn-input").removeClass('active btn-primary');
    btn.addClass('active btn-primary');
});
});//]]>  

</script>


</head>



		<?php 
		if(!isset($_GET['idpertanyaan'])){
		//tampilkan pertanyaan pertama
			$sqlp = "select * from diagnosa where mulai='Y'";
			$rs=mysql_query($sqlp);

			$data=mysql_fetch_array($rs);

		//bentuk pertanyaan
			echo "<form>";
			echo "<CENTER><H1>Sistem Pakar Diagnosa Kerusakan Komputer  </H1></CENTER>";
			echo "<CENTER><H1></H1></CENTER>";
			echo "<CENTER><IMG SRC='images/diagnosa komputer.JPG' WIDTH='348' HEIGHT='257' BORDER=0 ALT=''></CENTER>";
			echo "<legend>Diagnosa Kerusakan Komputer </legend>";
			echo $data['solusi_dan_pertanyaan']."<br>";
			echo "<input type='radio' name='idpertanyaan' value='".$data['bila_benar']."'>Ya<br>";
			echo "<input type='radio' name='idpertanyaan' value='".$data['bila_salah']."'>Tidak<br>";
			echo "<input type='submit' value='Lanjut ' >";		
			echo "</form>";
			echo "<p>copyright &copy; Mei 2014</p>";
		}else{
		//tampilkan pertanyaan pertama

			$idsolusi=$_GET['idpertanyaan'];
			$sqlp = "select * from diagnosa where id=$idsolusi";
			
			$rs=mysql_query($sqlp);

			$data=mysql_fetch_array($rs);
			
		echo "<form>";
			echo "<legend>Diagnosa Kerusakan Komputer </legend>";
			echo "<center>";
			echo "<h1>".$data['solusi_dan_pertanyaan']."</h1></center><br>";
			
			// echo "<a href='' class='btn btn-success btn-large btn-block' /> Kembali Melakukan Diagnosa </a>";

			if($data['selesai']!="Y"){
				echo '
				<div class="span5"> <div class="alert alert-info">
				<div class="control-group "> 
				<label class="control-label" style="width:120px;">Apakah Benar </label>
				<div class="controls" style="margin-left:150px;">
				';
?>
<?php 
				echo "<input type='radio' name='idpertanyaan' value='".$data['bila_benar']."'>
				Benar<br>";
				echo '
				</div>
				</div>
				</div>
				</div>
				<div class="span5"> <div class="alert alert-warning">
				<div class="control-group "> 
				<label class="control-label" style="width:120px;">Nama Awal</label>
				<div class="controls" style="margin-left:150px;">
				';
				echo "<input type='radio' name='idpertanyaan' value='".$data['bila_salah']."'>Tidak<br>";
				echo '
				</div>
				</div>
				</div>
				</div>';
			
				echo "<input type='submit' class='btn btn-primary btn-block btn-large' value='Lanjut ' >";		
			}else{
			//jika ingin menambah pertanyaan
			}
			echo "</form>";		
			echo '</br><div class=" well">
			<center><p>Dikerjakan Oleh Kelompok </p></center> </div>';
		}
		?>
	</div>
</div>
