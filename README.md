# mysql-snapshot
A dockerfile example to create a docker image of mysql with a dataset snapshot embedded. 

It is helpful when you want to test a application with a local database and your dataset take several minutes to load.

With this example (it's an example because is too hardcoded and you should customize), the dataset load happens at build time.
After it has been built, you can start and stop the service very quickly and becomes easy to test different versions of your application with exactly the same database state.
