# README
This webapp was created to store family recipes from grandma.
I made the design thinking to be usable to all family that like to cook.

### Requirements
- Allow add, edit, read and delete recipes
- Provide an endpoint to list all recipes stored

### Data Structure
The recipes has a kind and are compose by ingredients with the measure, how to do the food and the time to do that
We have 3 steps to store a recipes
1 - Choose or create a kind of recipe
2 - Fill the name of dish, how do do and time
3 - Choose or create a ingredients that compose the dish

### Data Structure - Improvement
To be more exact, I thing separated de unit of measurement from ingredients
Create a relationship many to many between recipes and ingredients to avoid data duplicated on db

### To Improve
Create a social login and make the app collaborative
Create a option to upload video with the steps from recipes
Export a shopping list from recipe
Add option to share the recipe by social apps and whatsapp
Add option to upload image after the dish
Add comment and like area to create interaction with users

### How to use the system
* If you not logged, you'll be able to see the dashboard, made the navigation and access the endpoint with all the recipes
* If you are admin, you'll be able to manage all context from system, even add, edit, delete and read data
* The system are available on heroku and can be accessed by: https://aqueous-sea-10432.herokuapp.com/
* To make a login https://aqueous-sea-10432.herokuapp.com/users/sign_in
- **email:** admin@cookbook.com
- **password:** !@#qwe
* To get a list of recipes on JSON format: https://aqueous-sea-10432.herokuapp.com/recipes_list

### Technical choice to develop
- **Ruby:** ruby-2.4.0
- **Rails:** 5.2.1
- **DB Postgres:**
- **Access Control:** Devise
- **Permission:** CanCanCan
- **Deployment:** Heroku
- **Tests:** Rspec
- **View:** RailsAdmin
