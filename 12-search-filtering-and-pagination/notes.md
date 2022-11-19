# 12. Search, filtering and pagination

add search functionality to the website

- search on the post title or post body
  - show how `LIKE` statement with wildcards works on SQL

---

- cleanup the search functionality by using a query scope
  - pass the query parameter as a parameter to the query scope
    - don't directly reach into the request from the model
      - explain why this is a bad idea
    - use query->when

---

- show how to work with repositories
  - explain what the benefits are

allow filtering on categories as well

- pass both `search` and `category` as query string parameters
  - use whereExists (with where column)
  - use whereHas (matches with an eloquent model relationship)
    - `whereHas('category', fn ($query) => $query->where('slug', $passedSlug))`
  - use whereIn
  - use a join

---

- extract a categories dropdown component
  - create a class-based component
  - pass the current category and all categories through the component

---

- use laravel convetion for naming routes and controller actions
- add author filtering
- allow combining categories and search filters in query parameter
- discuss and fix issue when using WHERE and OR statements without grouping in parentheses

---

Pagination

- Show difference between `paginate` and `simplePaginate`
- Mention the `page` query parameter
- Add the links
  - `$posts->links()`
  - Mention that they use tailwind styling by defalt
  - Show how to override the design
  - `php artisan vendor:publish` then look for **laravel-pagination**
  - `Pagination::useTailwind()` on a Service Provider
- Fix issue with query string being reset
  - `->witQueryString()` on paginator
