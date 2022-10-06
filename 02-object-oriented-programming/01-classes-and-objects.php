<?php

class Person
{
    public $firstName;

    public $lastName;

    public $age;

    public function getName()
    {
        return $this->firstName . ' ' . $this->lastName;
    }

    public function getAge()
    {
        return $this->age;
    }
}

// something wrong with this class?
// create new object

// ====================================================================================

// Type hints
// Encapsulation
// PHP 8 improvements
// Marking class as final
// Person can vote?

// ====================================================================================

// public function __construct($firstName, $lastName, $age)
    // {
    //     $this->firstName = $firstName;
    //     $this->lastName = $lastName;
    //     $this->age = $age;
    // }