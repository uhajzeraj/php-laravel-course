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
