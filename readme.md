Store
===========
JCVogelsberg
11 Apr 14
------------
Utilizing capybara with RSpec for acceptance testing. Also, first attempt at user authentication.
------------

[+] As a store owner, I want to create a new entry for a product with a name, price, and description.

[+] As a shopper, I want to see a list of all the products in the store, and be able to click on them to get more information.

[-] As a store owner, I want to make sure only I and other store employees can add, edit, and remove products. Hint: Add user authentication. Instead of letting people sign up for the site, "seed" the site with one login you create from the Rails console. Allow that user to CRUD/L additional users. Only allow unauthenticated users to list and show products; all other actions for products and all actions for users should be restricted to authenticated users.

[-] As a store owner, I want to add product in bulk by uploading a CSV with information on them. Hint: Add a ProductUploadsController with only new and create actions. When you upload a CSV and the create action is run, it should look something like this:
