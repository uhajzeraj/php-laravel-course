# 7. Blade templating engine

**Blade basics**
For the `posts.php` template file that we created

- Show a version with/without blade
- `posts.php` vs `posts.blade.php`
  - `<?= ?>` or `<?php echo ?>` vs `{{ }}`

---

- show `storage/framework/views`
- mention **XSS**
- display unescaped values - `{!! !!}`
- mention the **$loop** variable on blade’s `@foreach` directive
- do a `@dd($loop)`

**Blade layouts**

- Create a `layout.blade.php` file
  - `@yield('content')` - can be multiple
  - The actual file contains `@extends('layout')`,  
    also `@section('content') ... @endsection`.

**Blade components**

- First create a directory `resources/views/components`
- `layout.blade.php`
- `{{ $content }}`
- the use it as:

```php
<x-layout content="Hello there"></x-layout>

// or

<x-layout>
    <x-slot name="content">
        Hello there
    </x-slot>
</x-layout>

// or

<x-layout>
    <x-slot:content>
        Hello there
    </x-slot>
</x-layout>

// or (default slot)

<x-layout>
    Hello there
</x-layout>

// use {{ $slot }} on the component - special variable name
```

- Mention that both approaches work, it’s just a matter of preference

- Go through the documentation on [Blade Templates - Laravel - The PHP Framework For Web Artisans](https://laravel.com/docs/9.x/blade)
