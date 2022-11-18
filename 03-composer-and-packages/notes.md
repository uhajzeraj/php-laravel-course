# 3. Composer and packages

### Making use of composer and searching for packages

    - Show composer
    - Mention that composer is awesome
    - composer.json and composer.lock
    	- PHP version
    	- require
    	- require-dev
    		- var-dumper example
    - Installing packages
    	- Slim
    	- PHP DI
    - [Packagist](https://packagist.org/)

### The concept of autoloading in PHP

    - **spl_autoload_register** function
    - autoload in composer.json
    	- classmap
    		- no strict directory required
    		- do a dump autoload
    	- files
    		- file is always autoloaded
    	- PSR4
    		- PSR standard
    		- namespaces
    		- strict directory required
    		- what should be used by default
