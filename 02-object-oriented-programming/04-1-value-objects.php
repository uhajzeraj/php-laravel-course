<?php

final class Person
{
    public function __construct(
        private string $firstName,
        private string $lastName,
        private int $age,
    ) {
    }

    public function getName(): string
    {
        return $this->firstName . ' ' . $this->lastName;
    }

    public function getAge(): int
    {
        return $this->age;
    }
}

$uran = new Person('Uran', 'Hajzeraj', -5);
echo $uran->getAge() . PHP_EOL;

//====================================================================================

// final class Age
// {
//     private function __construct(
//         private int $value,
//     ) {
//         if (!$this->isValid($value)) {
//             throw new InvalidArgumentException('Age must be greater or equal to 0');
//         }
//     }

//     public static function fromInt(int $value): self // This is called a named constructor
//     {
//         return new self($value);
//     }

//     private function isValid(int $value): bool
//     {
//         return $value >= 0;
//     }

//     public function getValue(): int
//     {
//         return $this->value;
//     }
// }

//====================================================================================

// What about an email address?
// Can you think of any other value objects?

// Lesson to learn, stay away from primitive values as much as possible, especially arrays
// int, float, string, bool, null

// Exceptions (besides some, e.g. validation) MUST never be user facing
// they should only help developers identify issues

//====================================================================================