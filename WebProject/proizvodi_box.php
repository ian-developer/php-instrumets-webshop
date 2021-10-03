<?php

//proizvodi_tablica.php

include("db_connection.php");

$result = mysqli_query($con, $query);

$count = mysqli_num_rows($result);

    if($count > 0){

        while($row = mysqli_fetch_array($result))
        {
        $IDProizvod = $row["IDProizvod"];
        $proizvodNaziv = $row["Naziv"];
        $proizvodOpis = $row["Opis"];
        $proizvodCijena = $row["Cijena"];
        $slika = $row["SlikaID"];

        echo ' <div class="col-md-12">
                    <form method="post" action="index.php?dodajID='.$IDProizvod.'">
                        <div id="box_proizvod" style="border:1px solid #333; background-color: #f1f1f1; border-radius:0px; margin-bottom: 15px">
                                <div id="box_slika">
                                    <img src="./images/'.$slika.'.jpg">
                                </div>
                                <div id="box_tekst">
                                    <h4>'.$proizvodNaziv.'</h4>
                                    <p>'.$proizvodOpis.'</p>
                                    <h5 class="text-danger">'.$proizvodCijena.' €</h5>
                            </div>
                            <div id="box_input">
                                    <input type="text" name="kolicina" class="form-control" value="1" id="input_kolicina"/>
                                    <input type="hidden" name="hidden_naziv" value="'.$proizvodNaziv.'"/>
                                    <input type="hidden" name="hidden_cijena" value="'.$proizvodCijena.'"/>
                                    <input type="submit" name="dodaj_u_kosaricu" class="btn btn-info" value="Dodaj u košaricu" id= "dodaj_u_kosaricu" style="margin-top:10px"/>

                                </div>
                        </div>
                    </form>
            </div>
        ';
        }
    }

    else{
        echo '<div class="not_found"><h2>Proizvod nije pronađen!</h2></div>';
    };



?>