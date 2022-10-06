<?php

$exception = new Exception('My message goes here');

throw new $exception;

// try {
//     throw new Exception('My exception goes here');
// } catch (Exception $e) { // $e can be optional
//     echo 'Something went wrong' . PHP_EOL;
// }

// Throwable - both errors (notice, warnings, deprecations) and exceptions
// Finally?