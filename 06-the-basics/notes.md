# 6. The Basics

- The request lifecycle
- Routes, controllers & views
- Working with CSS and Javascript
- Route wildcard constraints

---

- Include some **.css** and **.js** in `public/` directory
  - For the moment
  - \*Explain that static assets MUST be in a publicly accesible place

---

- Create `GET /posts` endpoint and view
  - 3 posts, all static
- Create a post endpoint (`GET /first-post`) that shows the first post
  - Now all posts point to the first one
- Replace hardcoded post with a $post variable
- Pass a $post variable to the view
- Under `resources/posts`, create simple html files with post content
- Use **file_get_contents**
- Rename the route to `GET /posts/{post}`
  - Explain {post} wildcard
- Add check if file exists or not

  - use `abort(404)` or `redirect('/')`

- add constraint to the route wildcard

  - `->where('post', '[A-z_\-]+’)`
  - try with `[a-zA-Z]+` constraint

- **adding caching for the files**
- `cache()->remember()`

  - explain what it does and what the arguments mean
  - MAYBE: explain different caching systems

- **using a model not backed by a database**

  - create a post model - doesn’t extend anything
  - add a static method `find`
  - move getting the file and caching to this method
  - make use of `resource_path()`
  - replace `redirect()` with throwing **ModelNotFoundException**

  - add a `Post::all()` method

    - use **File facade** - `File::files()`
    - use `array_map` and get the contents of each file

  - add a metadata section
    - at the top of a posts html file

```html
---
title: My Fourth Post
excerpt: Lorem ipsum dolor sit amet...
date: 2022-10-18
---
```

- [GitHub - spatie/yaml-front-matter: A to the point yaml front matter parser](https://github.com/spatie/yaml-front-matter)
  - `YamlFrontMatter::parseFile()`
- add properties to **Post** model for the metadata and the body
- also add a constructor

- add **slug** to the metadata
- use collections to clean up code a little
- move code to `Post::all`
- add caching instead of fetching all the time from the filesystem
  - cache forever
  - remove from cache with Laravel tinker
- **mention and demonstrate Laravel tinker**
