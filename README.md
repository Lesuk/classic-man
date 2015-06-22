Classic-man
=======

This is a base [Middleman](http://middlemanapp.com/) application. This
sets all of the defaults that I'll generally set when building a new
application on Middleman. Be sure to read all of the documentation to
become familiar with Middleman before using this base setup.

Setup
-----
### Bower

Bower is used for JavaScript dependency management.

```shell
npm install -g bower # If you don't have it already.
bower install
```

**Note**: By default, Bower Components install to the default `bower_components` directory at the root. You can change this, if you want, in the `.bowerrc` file, but make sure to update the `.gitignore` with your new directory.

Running the Application
-----------------------

You run the application by starting the Middleman server:

```shell
middleman s
```

Building the Static Files
-------------------------

To build the static files:

```shell
middleman build
```
