<?php

function verifierMoyenne( $moyenne, $note, $prenom, $college, $matiere)
{
    if (empty($college)) {
        $college = "College de France";
    }
    
    if ($moyenne >= "10") {
        echo "Bravo $prenom ! Vous êtes reçu(e) au $college !";
    }elseif ($moyenne>= "8" && $moyenne< "10" ){
        echo "Vous devez passer l'examen de rattrapage en $matiere !";
    }elseif ($moyenne<"8"){
        echo "Désolé $prenom ! Vous êtes recalé(e) !";
    }else{
        echo "Très bien";
    }
}
$moyenne = "10";
$note = "12";
$prenom = "paul";
$college = "";
$matiere ="Maths";

verifierMoyenne($moyenne, $note, $prenom, $college, $matiere);
?>