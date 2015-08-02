# CivicMakers API

This is the API that supports the [Web Client](https://github.com/civicmakers/client).

See the [Spec](https://github.com/civicmakers/api/blob/master/spec).

# Setup Steps

* Install RVM
* Install Postgres
  * https://devcenter.heroku.com/articles/heroku-postgresql#set-up-postgres-on-mac
* Download the project
* Create your .env file
  * https://devcenter.heroku.com/articles/getting-started-with-rails4#procfile
* Bundle
* rake db:create
* rake db:migrate
* foreman start
* Try these out
  * curl http://localhost:3000/tools?include=profile,project_components | python -mjson.tool
  * curl http://localhost:3000/projects?include=profile,project_components | python -mjson.tool
  * curl http://localhost:3000/profiles?include=tools,projects | python -mjson.tool

# Deployment Instructions

Push to the civicmakers-api Heroku app.

# Next Steps

* Add a `project.status` attribute, so that users can save their in-progress work before they are ready for it to become public
  * This will have to be added to the spec as well
  * Also, a filter needs to be added like this: GET /projects?status=published
* Rename `profile` to `user`, both in the code and in the API spec
* Of the CRUD operations, only the R endpoints have been implemented. So Create, Update & Destroy are still to be done.
  * See http://jsonapi.org/format/#crud
  * We need user authentication at this point
    * Use https://github.com/plataformatec/devise
* At this point we can switch from using hard-coded JSON to using the API
* Add model validations
* Add tests
* Write the spec in Swagger
  * http://swagger.io/
* Currently we have two models, ProjectImage and ProjectComponentImage, that are the same data wise, and only differ because of their relationships. Merge these into 1 model.
* Setup some code quality checkers.
* Create some seed data
