Hi there,

This is just a little test to check wether or not an ISBN number is valid.

To launch this project, you must have installed RVM and ruby 2.6.2.

Before you can start the project :
- clone it from this git repo
- install the gems with : gem install bundler && bundle
- start the server with : foreman start

Then, you can go to your browser and call : http://lvh.me:5000/api/v1/isbn/:code/validate
where :code is an ISBN number to check.
Valid example : 9780306406157
Unvalid example : 9780306406156
