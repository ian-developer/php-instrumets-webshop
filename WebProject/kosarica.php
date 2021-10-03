<?php

if(isset($_GET["kosarica"])){

echo'<div id="kosarica" style="background-color:white"><table border="1px">
        <tr>    <th>ID</th>
                <th>Naziv</th>
                <th>Cijena</th>
                <th>Količina</th>
                <th>Action</th>
        </tr>
        <tr>';

if(!empty($_SESSION["kosarica"]))
{   
        $ukupno = 0;
        foreach($_SESSION["kosarica"] as $keys => $values){

        echo   '<td>'.$values["id_proizvod"].'</td>
        <td>'.$values["p_naziv"].'</td>
        <td>'.$values["p_kolicina"].'</td>
        <td>'.$values["p_cijena"].' €</td>
        <td>
                <form method="post" action="index.php?ukloniID='.$values["id_proizvod"].'">
                        <button class="ukloni" type="submit">
                                <i class="fas fa-trash-alt">Ukloni</i>
                        </button>
        </form></td></tr>';
        
        $ukupno = $ukupno + ($values["p_kolicina"] * $values["p_cijena"]);

        }
        
        
        echo '<td colspan="3" align="right">Ukupno</td>
                <td align="right">'.$ukupno.'  €</td>';
}
echo'</table></div>';

}

if(empty($_SESSION["kosarica"])){
        echo '<div class="not_found"><h2>Košarica je prazna!</h2></div>';
}

?>