<?php

//dodaj_u_kosaricu.php

session_start();

include("db_connection.php");

if(isset($_POST["dodaj_u_kosaricu"]))
{
    if(isset($_SESSION["kosarica"]))
    {
        $proizvod_array_id = array_column($_SESSION["kosarica"], "id_proizvod");
        if(!in_array($_GET["dodajID"], $proizvod_array_id))
        {
            $count = count($_SESSION["kosarica"]);
            $proizvod_array = array(
                'id_proizvod'   =>      $_GET["dodajID"],
                'p_naziv'       =>      $_POST["hidden_naziv"],
                'p_cijena'      =>      $_POST["hidden_cijena"],
                'p_kolicina'    =>      $_POST["kolicina"]
            
            );
            $_SESSION["kosarica"][$count] = $proizvod_array;
            //echo '<script>alert("Dodali ste proizvod!")</script>';
        }
        else{
            echo '<script>alert("Proizvod je vec dodan!")</script>';
        }
    }
    else
    {
        $proizvod_array = array(
            'id_proizvod'   =>      $_GET["dodajID"],
            'p_naziv'       =>      $_POST["hidden_naziv"],
            'p_cijena'      =>      $_POST["hidden_cijena"],
            'p_kolicina'    =>      $_POST["kolicina"]
        );
        $_SESSION["kosarica"][0] = $proizvod_array;
}

} 
if(isset($_GET["ukloniID"]))
    {
            foreach($_SESSION["kosarica"] as $keys => $value)
            {
                if($value["id_proizvod"] == $_GET["ukloniID"])
                {
                    unset($_SESSION["kosarica"][$keys]);
                    $_GET["kosarica"] = $_GET["ukloniID"];
                }
            }
    }
//briše proizvod iz košarice
  

?>