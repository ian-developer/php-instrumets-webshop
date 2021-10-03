<?php

// proizvodi_filter.php

//Prikazuje proizvode po odabranim kategorijama


if(isset($_GET["kategorija"]))
{
    $kategorija = $_GET["kategorija"];

    $query = "SELECT
    IDProizvod, 
    KategorijaID,
    proizvod.Naziv,
    Opis,
    SlikaID,
    Cijena

    FROM proizvod
    LEFT JOIN kategorija ON proizvod.KategorijaID = kategorija.IDKategorija
    WHERE 1 AND kategorija.Naziv LIKE '$kategorija'";

    include("proizvodi_box.php");
}

else if(isset($_POST["search_bar"])){

    $search = $_POST["search_bar"];

    $query = "SELECT
    IDProizvod, 
    KategorijaID,
    Naziv,
    Opis,
    SlikaID,
    Cijena
    
    FROM proizvod
    WHERE 1 AND Naziv LIKE '%$search%'";

    /*$count = mysqli_num_rows($query);
    echo $count;*/
    
    include("proizvodi_box.php");
}

else{
    $query = "SELECT
    IDProizvod, 
    KategorijaID,
    Naziv,
    Opis,
    SlikaID,
    Cijena
    
    FROM proizvod
    WHERE 1";

    include("proizvodi_box.php");
}



?>