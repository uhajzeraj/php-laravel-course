# Learning material for FLOSSK's PHP and Laravel course

**For lecturers\*** - [Course timeframe and additional info](https://docs.google.com/spreadsheets/d/1JhF0zgAZBPpPpELls8L43TYbRqCkUKggqxQoJApKycI/edit?usp=sharing)

---

## During lecturing

The instructor will create an app, called **TechHub**, where users can add tech-related posts.

The features will include:

- **Adding posts**
  - Will have an author
  - Will belong to one category
  - Will have tags
    - Zero or more
- **Author can create new posts or update existing ones**
  - Only the post author is allowed to do that
- **Authentication**
  - Users can:
    - Register
    - Authenticate
    - Change their display name
    - Change their password
    - Reset their password if they forget it
- **Posts can have comments**
  - By other users
  - By anonymous users
- **Posts can be searched and filtered, by the**:
  - Title, execrpt or content
  - Author
  - Category
  - Tags
  - Date
- **Will integrate a TailwindCSS basic design**
- **Will integrate AlpineJS for website interactivity**
- **Admin section**
  - Admin can:
    - Mark posts as deleted
    - Ban other users

### If these requirements are met, based on the timeline of the project, the following features can be added:

- **Adding third-party authentication**
  - For example, via GitHub
- **Add automated tests for different parts of the application**
  - Unit tests for single classes throughout the project
  - Feature/integration tests for testing whole flows, such as:
    - Endpoints
    - Commands
    - Cron jobs
- **Replace AplineJS with React for a more robust application**

---

## During practice

Throughout the course, students will have to create an web app.  
This will also be the app necessary for them to pass the course.

The app to create will be a **todo app**.

**Note**: Before getting started with Laravel, we have some chapters related to PHP and it's ecosystem.  
Although the code on these chapters will not be used towards the final project, the students should still do exercises on these chapters, during the first week of the training.
These should include:

- **Creating a new PHP project on GitHub**
  - Using the built-in PHP server
  - Setting up SSH for their repositories
  - Using Git cli, or a GUI client like sourcetree, GitHub Desktop, etc.
- **Learning about commiting often and with meaningful messages**
  - See atomic commits
- **Creating classes, value objects**
  - Should be related to classes we'll need for the final project, like:
    - Todo
    - Project
    - User
    - Priority Level
    - Comment
- **Initializing composer on a new PHP project, adding packages and autoloading**
  - Learn about the difference on autoloading
    - PSR 4
    - Classmap
    - Files
  - Difference between `require` and `require-dev`
- **Connecting to a database via PDO and doctrine/dbal**
  - See chapter 4

### The basic requirements for the todo app include:

- **Create todos**
  - Should include a title and content
- **Mark them as done (complete them)**

### After the basic requirements are done, the additional feature will be added:

- **Give tasks a due date**
- **Add search functionality**
  - Tasks can be searched based on their title or content
- **Allow adding tags to tasks**
  - A task can have zero or more
- **Give tasks a priority level**
  - Add 4 priority levels

### After the additional features are done, the more advanced features will be added:

- **Authentication and registration**
  - Simple authentication
  - Registration flow
  - Forgot password
  - Change password
  - Change display name
- **Add projects**
  - Allow tasks to be added to projects
  - Add other users to projects (no invitation needed)
  - Tags can also be added for projects
- **Allow adding subtasks for tasks**
- **Users of a project can add comments to tasks and projects**
- **Integrate a design**
  - Preferably by using TailwindCSS

**Depending on the timeframe and the speed of implementation, other features can be added as well**:
**Important**: For the final result, students must also implement a feature on their own. It can also include something from the list below.

- **Mark tasks as favorites**
- **Assign a progress status to tasks**
  - To do
  - In progress
  - Done
- **Schedule reminders for due dates**
  - Send an email, or
  - Add a notification
  - \*Can do both
- **Assign people to tasks**
  - They need to be added to the project
- **Allow adding filters based on different satuses we have added, based on**:
  - Due date
  - Progress status
  - Favorite tasks
  - Tags
- **Add statistics**
  - Daily, weekly, monthly, yearly tasks
  - Track completion time
  - **Optional**: Display results in graphs
- **Make the app feel like an SPA**
  - Use AlpineJS or React to perform ajax most of the calls
  - Add simple toasts to display success/error messages
- **Allow adding files for tasks or projects**
  - Can be any file
  - Images can be displayed
- **Add automated tests for different parts of the application**
  - Unit tests for single classes throughout the project
  - Feature/integration tests for testing whole flows, such as:
    - Endpoints
    - Commands
    - Cron jobs
