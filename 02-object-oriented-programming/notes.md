# 2. Object Oriented Programming in PHP

### Classes and objects, properties and methods

    - Defining classes
    - Creating new objects
    - Adding properties and methods
    - Using types

### Inheritance, composition & encapsulation

    - Explain inheritance and when to use it
    - Explain composition and when to use it
    - Explain encapsulation and making properties private
    - Prefer composition over inheritance

### Interfaces and abstract classes

    - Using interfaces
    - Using abstract classes
    - **EXAMPLE** [Matthias Noback - Service abstractions](https://www.youtube.com/watch?v=Ri0AtbiShIw)

### Value objects and mutability

    - Primitive obsession
    - Provide example of a value object
    	- Coordinates
    	- Age
    	- Email address
    	- City
    - Prefer immutability
    	- **Interaction** What is immutability
    		- **A**: Object cannot change after instantiation
    	- **Example**:

```php
$x = new DateTime();
var_dump($x->format('Y-m-d'));
$y = $x->add(new DateInterval('P1D'));
var_dump($y->format('Y-m-d'));

var_dump($x->format('Y-m-d')); // Value here?
```

### Exceptions

    - Try / catch
    - Try / finally
    - Explain how to use exceptions
    - Domain exceptions
    - Application exceptions
    - Global try/catch
    - **Note**: Best to be explained through a Laravel skeleton project
