# Miscellanious stuff

- Add comments for posts
  - Create a comments table
    - Comments fields
      - Has body
      - Belongs to an author
      - Belongs to a post
    - Add foreign key constraints
      - For author
      - For post
      - Mention the database indexes that are created for foreign keys
  - Add a form before displaying comments for a post
  - Add endpoint `POST /posts/{posts:slug}/comments`
    - Name the controller and action `"PostCommentsController::store"`
      - Explain why to use this approach
  - Hide the form if there's no authenticated user

---

- Use Mailchimp's API for the "subscribe to newsletter" functionality
  - Check out mailchimp's API documentation for PHP
  - Tinker around with it
  - Setup the API keys
    - Show how to use the `".env"` and `".env.example"` files on these cases
    - Show how to make use of `"config()"`
  - Add endpoint for subscribing to newsletter
    - Add try/catch for possible errors, such as
      - Such as a gibberish email provided
- Create a newsletter service
  - Has a subscribe method that accepts an email

---

- Explain how the service container on Laravel works
- Show how to register something on the service container
- Introduce an interface
  - Mention why this is needed
    - We are swapping our newsletter service
- Show how to bind to an interface
- Go through the Laravel documentation for service providers and service container

---

### Admin section

---

- Add an endpoint for adding posts from an admin
- Add a simple middleware
  - Check if the user is authenticated
  - Check if the authenticated user is an admin
  - Maybe remove the first check by using the null safe operator (PHP 8)
  - Explain middleware on `"app/Http/Kernel.php"`
- Add a form for adding a new post

---

- Allow uploading a post thumbnail
  - Change form enctype to multipart/form-data
  - Mention Laravel's `"UploadedFile"` class
  - Show what `"$request->file($filename)->store($location)"` does
  - Store on the public filesystem
    - Show how to create a symlink
    - Explain what symlinks are
  - Add a `thumbnail_path` column to the **posts** table
  - Add image validation - `"...|image"`
  - Use the `"asset()"` helper on the blade template
  - Extract components for form input
    - Type can be a prop passed to the component
    - Labels can be a component
    - Errors can be a component
- Add a dropdown menu
