# 8. Working with databases

**Basics**

- Mention the `.env`, `.env.example` and how they work
- Mention the `/config` directory
- Create a MySQL database
  - CLI and SequelAce
  - Show how to connect with both ways
- Run `php artisan migrate`
  - Show the changes made to the database

**Migrations**

- Show the `/database/migrations` table
- Go through the existing migrations
- Explain **up** and **down** methods
- Explain all the `php artisan migrate:*` commands
- Mention not to run `migrate:fresh` ever in production

**DB Facade**

- Explain using the **DB** facade

**Eloquent and the Active Record Pattern**

- Explain what Eloquent is
- Use **tinker** to create a user
- Explain `User::find`, `User::findOrFail`, `User::all`

**Creating a post model and migration**

- Use the `php artisan make:migration` command
- Use the `php artisan make:model` command
  - Make use of the `--help` prefix on commands
- Create a migration for the **posts** table
  - id
  - title (string)
  - excerpt (text)
  - body (text)
  - timestamps
  - published_at (timestamp, nullable)
- Create a **Post** model
  - Mention the naming convention used on Laravel
  - Convert the existing file-based Post model to a database one
- Show an example of updating a model
  - Using the `save` method
- Wrap the title on a strong tag
  - The output should be escaped
  - Show an example with `<script>alert('hello!')</script>`

**Mass Assignment and it’s vulnerabilities**

- Show `Post::create`

  - explain **MassAssignmentException**
  - add `protected $fillable` property to model
  - show example with setting an **id** value

- Show how `protected $guarded` property works

  - prefer **fillable** over **guarded** -> white labeling

- Third option: Don’t use mass assignment

**Laravel Debugbar**

- Install it
- Show examples of how it works
- [GitHub - barryvdh/laravel-debugbar: Laravel Debugbar (Integrates PHP Debug Bar)](https://github.com/barryvdh/laravel-debugbar)
- Show alternative - clockwork [GitHub - itsgoingd/clockwork: Clockwork - php dev tools in your browser - server-side component](https://github.com/itsgoingd/clockwork)

**Route model binding**

- Explain the concept
  - Bind the route key, to an Eloquent model
  - Key must match the parameter name
- Show binding by a slug
  - `Route::get('posts/{post:slug}')`
  - Explain that it’s a good idea to hide the slug
  - `Post::getRouteKeyName()` method

### Eloquent relationships

- Explain all the types of relationships
  - `one-to-one`
  - `one-to-many` or `many-to-one`
  - `many-to-many`

**One-to-many**

- Create a `categories` table
  - `name` and a `slug`
- Create a **belongsTo** relationship to Category for the Post model
- \*It would be nice to be able to do something like `$post->category`
  - Difference between `$post->category` and `$post->category()`
- Add ability to view all posts for a category
  - Add a new route `/categories/{category}`
  - Add a relationship - **$category->posts**

**The N+1 Problem**

- Show logging queries

```php
DB::listen(function ($query) {
	Log::info($query->sql, $query->bindings);
	// try Log::info($query);
});
```

- Change `Post::all()` to `Post::with('category')->get()`

**Database seeding**

- \*We want to add an author to the post
- Show how to use seeders when freshly migrating
  - `php artisan db:seed`
  - `php artisan migrate:fresh --seed`
- Create a user through the factory, create categories and posts manually
  - Show using `Model::truncate()` on seed to truncate the table
- Add a **belongsTo** relationship to user for the post
- Add a **hasMany** relationship to posts for the user

**Model factories**

- Fake data for a model
- Show the `HasFactory` trait on the model
- Show to deal with e.g. `user_id` when using a factory
- \*Mention that they’re very helpful on tests
- Show how to set specific data
  - `User::factory()->create(['name' => 'John Doe'])`

---

**Post author**

- Rename `Post::user()` relationship to `Post::author()`
  - Explain the importance of the method name for **belongsTo**
  - Explain how to pass extra parameters when defining relationships

---

- Add route to show posts for the author
  - `/authors/{author}`
  - Add a username for the user to use on the uri

---

- Show how to eager load existing models
  - `$author->load('posts')`

---

- Mention the `protected $with` property on the model
  - Advise against using it
