mongosh — The Mongo Command-Line Client

### source of `Dockerfile`

https://github.com/alpine-docker/multi-arch-libs/blob/master/mongosh/Dockerfile

### Daily CI build logs

N/A

### Docker image tags

https://hub.docker.com/repository/docker/alpine/mongosh/tags


### quick start

```
alias mongosh="docker run -ti --rm alpine/mongosh mongosh"

mongosh mongodb://192.168.0.5:9999/ships
```

### Install tools

* MongoDB Shell
** mongosh - New mongo shell tool

* Binary Import / Export
** mongodump - Creates a binary export of the contents of a mongod database.
** mongorestore - Restores data from a mongodump database dump into a mongod or mongos
** bsondump - Converts BSON dump files into JSON.

* Data Import / Export
** mongoimport - Imports content from an Extended JSON, CSV, or TSV export file.
** mongoexport - Produces a JSON or CSV export of data stored in a mongod instance.

* Diagnostic Tools
** mongostat - Provides a quick overview of the status of a currently running mongod or mongos instance.
** mongotop - Provides an overview of the time a mongod instance spends reading and writing data. GridFS Tools
** mongofiles - Supports manipulating files stored in your MongoDB instance in GridFS objects.

### Reference

https://www.mongodb.com/docs/mongodb-shell/

https://www.mongodb.com/docs/database-tools/
