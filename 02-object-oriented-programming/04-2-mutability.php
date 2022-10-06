<?php

$x = DateTime::createFromFormat('Y-m-d', '2022-10-06');
var_dump($x->format('Y-m-d'));

$y = $x->add(new DateInterval('P1D')); // Add one day to the date
var_dump($y->format('Y-m-d'));

var_dump($x->format('Y-m-d')); // Value here?

//==========================================================================================

// Use DateTimeImmutable whenever possible (Carbon)