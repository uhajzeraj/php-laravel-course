<?php

interface Animal
{
    public function feed();

    public function walk();

    // private function putToSleep(); // Does this work?
}

abstract class Mammal implements Animal
{
    public function feed()
    {
        $this->drinkMilk();
    }

    abstract public function drinkMilk();

    // abstract protected function putToSleep(); // Does this work?
}

class Dog extends Mammal
{
    public function drinkMilk()
    {
    }

    public function walk()
    {
    }
}

class Cat extends Mammal
{
    public function drinkMilk()
    {
    }

    public function walk()
    {
    }
}
