<?php

//index.php

echo'<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8">
		<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/style.css">
		<title>Brand Web Shop</title>
	</head>
	<body>
		<div id="container">
			<header id="myHeader">
			<h1><a href="index.php" id="naslov">instruments</a></h1>
				<div id= "nav1">
					<nav>
						<li><a href="index.php?kontakti">Kontakti</a></li>
						<li><a href="index.php?o_nama">O nama</a></li>
						<li><a href="index.php?kosarica">Košarica</a></li>
						<li><form type="textbox"></form></li>
						<li><form method= "post" id="search_bar" action="index.php">
							<input type="text" style="width: 100px" name="search_bar">
							<input type="submit" value="Traži" action="search_bar">
							</form>
						</li>		
					</nav>
					
				</div>
				
			</header>
	
			<div id="content">
				<div id="aside">
					<aside>
						<ul style="list-style-type:none;" id="kategorije">
							<li><a href="index.php?kategorija=Električne_Gitare">Električne Gitare</a></li>
							<li><a href="index.php?kategorija=Bass Gitare">Bass Gitare</a></li>
							<li><a href="index.php?kategorija=Akustične Gitare">Akustične Gitare</a></li>
							<li><a href="index.php?kategorija=Klasične Gitare">Klasične Gitare</a></li>
							<li><a href="index.php?kategorija=Akustične Bass Gitare">Akustične Bass Gitare</a></li>
							<li><a href="index.php?kategorija=Udaraljke">Udaraljke</a></li>
							<li><a href="index.php?kategorija=Pojačala za Električne Gitare">Pojačala za Električne Gitare</a></li>
							<li><a href="index.php?kategorija=Pojačala za Bass Gitare">Pojačala za Bass Gitare</a></li>
							<li><a href="index.php?kategorija=Žice">Žice</a></li>
							<li><a href="index.php?kategorija=Stalci za Gitare">Stalci za Gitare</a></li>
							<li><a href="index.php?kategorija=Klavijature">Klavijature</a></li>
							<li><a href="index.php?kategorija=Studio Oprema">Studio Oprema</a></li>
							<li><a href="index.php?kategorija=Kablovi">Kablovi</a></li>
							<li><a href="index.php?kategorija=Mikrofoni">Mikrofoni</a></li>
							<li><a href="index.php?kategorija=Efekti i Procesori">Efekti i Procesori</a></li>
							<li><a href="index.php?kategorija=Torbe i Koferi">Torbe i Koferi</a></li>
						</ul>
					</aside>
				</div>
					<div id="main">';
						include("dodaj_u_kosaricu.php");
						if(isset($_GET["kosarica"])){include("kosarica.php");}
						else if (isset($_GET["kontakti"])){include("kontakti.php");}
						else if (isset($_GET["o_nama"])){include("o_nama.php");}
						else{include("proizvodi_kategorije.php");}
					echo'
					</div>
		
				
			</div>
				<div id="footer">
								<footer>Prentović, Perret 2020.</footer>
				</div>	

	
			<img src="">

		</div>

		<script src="script.js"></script>

	</body>
</html>';

?>