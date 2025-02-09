<?php
$notes = array();
for ($i = 0; $i < 35; $i++) {
    $notes[] = rand(0, 20);
}
echo "Les notes des étudiants :<br>";
foreach ($notes as $note) {
    echo $note . "<br>";
}

$somme = array_sum($notes);
$moyenne = $somme / count($notes);

$moyenne = number_format($moyenne, 2);

// Conditions d'affichage de la moyenne
if ($moyenne >= 12) {
    echo "<span style='color: green;'>La promotion est validée avec une moyenne de $moyenne/20</span>";
} elseif ($moyenne >= 10 && $moyenne < 12) {
    echo "<span style='color: orange;'>La promotion est validée avec une moyenne de $moyenne/20</span>";
} else {
    echo "<span style='color: red;'>La promotion est recalée avec une moyenne de $moyenne/20</span>";
}

?>
