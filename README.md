# mysql-snapshot
A dockerfile example to create a docker image of MySQL with a dataset snapshot embedded. 

It is helpful when you want to test an application with a local database and your dataset take several minutes to load.

With this example (it's an example because is too hardcoded and you should customize), the dataset load happens at build time.
After it has been built, you can start and stop the service very quickly and becomes easy to test different versions of your application with exactly the same database state.

In order to build, you must provide a MySQL dump file and change the values of all ENV instructions.
