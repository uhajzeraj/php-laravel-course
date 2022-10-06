<?php

interface RegistrationServiceInterface
{
    public function register($person);
}

class RegistrationService implements RegistrationServiceInterface
{
    public function register($person)
    {
        var_dump('I do some registration stuff');
    }
}

class EmailRegistrationService extends RegistrationService
{
    public function register($person)
    {
        $user = parent::register($person);

        $this->sendEmail($user);
    }

    private function sendEmail($user)
    {
        // Pretend that this code sends an email
    }
}

// ====================================================================================

// class Db { /* ... */ }
// class Core extends Db { /* ... */ }
// class User extends Core { /* ... */ }
// class Admin extends User { /* ... */ }
// class Bot extends Admin { /* ... */ }
// class BotThatDoesSpecialThings extends Bot { /* ... */ }
// class PatchedBot extends BotThatDoesSpecialThings { /* ... */ }

// ====================================================================================

// public, protected, private
// composition vs inheritance?
// testing on composition vs inheritance
// dependency injection (prefer composition)