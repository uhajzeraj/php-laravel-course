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
