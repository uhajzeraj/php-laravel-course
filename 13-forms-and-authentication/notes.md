# 13. Forms and authentication

Add a register controller

- `GET /register` endpoint
  - Should include a basic registration form with:
    - Email
    - Name
    - Password
- `POST /register` endpoint
  - Add validation for the data
    - Show the Laravel validation documentation
    - Mention the custom validation rules
- Mention the `419 expired` response and how to fix it
  - Explain the **@csrf** directive
- Mention how validation through `$request->validate()` works

---

- Show how to store hashed password
  - Modify the `$attributes` array we get from the validate method
  - Show using an eloquent mutator
    - Explain mutators and accessors
      - Show the updated version from Laravel docs as well

---

- Show how to work with validation errors
  - `@error` directive

```php
@error('name')
    {{ $messsage }}
@enderror
```

- Show how the old session data can be used to repopulate the fields
  - `value="{{ old('name') }}"`
- Add a **unique validation constraint** for the email field
- Mention that `$errors` variable is always included on blade templates
  - Show how to display all the validation errors

---

- Add a flash message
  - `session()->flash('success', Your account has been created');` on the controller
  - on blade, do `@if(session()->has('success')) ... @endif`
- add AlpineJS functionality to hide the flash message after 3 seconds
- extract a blade component
- mention that `redirect()->with(...)` does also flash

---

- Log the user in after registering
  - `Auth::login($user)`
- Add a middleware for guests
  - `->middleware('guest')` on a route
  - Explain what middlewares are
- Use the `"@guest ... @endguest"` directives in blade as well
  - Also, `"@auth ... @else ... @endauth"`
  - Or, `"@if (auth()->check()) ... @endif"`
- Add logout functionality
  - Add `POST /logout` endpoint
  - `"auth()->logout()"`
  - Redirect back to homepage with a flash message

---

- Add login page and functionality
  - Add `GET /login` endpoint
  - Add `POST /login` endpoint
    - Use `"auth()->attempt($attributes)"` to log the user in
    - Use `"return back()->withErrors([email' => 'Your ...']);"`
    - Use `"->withInput()"` as well to remember old input
    - Or better, throw a validation exception
      - `"throw ValidationException::withMessages(['email' => 'Your ...'])"`
    - Add a `"session()->regenerate();"` call to mitigate against a **session fixation attack**

---

- Laravel Breeze introduction
  - Do so on a new example project
  - Setup a database connection in `.env`
  - Go through the entire routes and controllers added by Laravel
    - Good learning tool
  - Mention that it is a **starter kit** (not to be used 6 months down the line)
- Mention other authentication kits (Jetstream)
