# Babywearing New Zealand

[This babywearing website](https://babywearing.github.io) is free open source software built with Hakyll.

# Dependencies

## Clone this repository

```
cd ~
git clone git@github.com:babywearing/babywearing.github.io.git
```

## Install stack, hakyll and site

Install stack as described [here](https://docs.haskellstack.org/en/stable/README/) (oneliner for most Un*x'es)

```
cd babywearing.github.io
stack setup
stack install hakyll
stack build
```

The last command builds an executable (check the output for the location) which can build this website from the (markdown) sources. 

## Build the website

```
stack exec babywearing build
```

## Test

Open babywearing.github.io/_site/index.html in a browser. 

## Deploy

Run `make deploy` when you are happy with the changes to deploy to github pages. You can't do this unless you have the required permissions.

## Stuck?

If you get stuck trying to follow these steps, [open an issue](https://github.com/babywearing/babywearing/issues/new).
