# personal_website

## About 

This site is a static website based off the Jekyll [cvless](https://github.com/piazzai/cvless) theme.

Since Jekyll is a static site generator, it has to build the site before we can view it. Run either of the following commands to build your site:

`jekyll build` - Builds the site and outputs a static site to a directory called _site.


`jekyll serve` - Does jekyll build and runs it on a local web server at http://localhost:4000, rebuilding the site any time you make a change.



## production
Uses AWS copilot for deploying to production and the 'static-site' as the sevice type.  [AWS Copilot CLI](https://aws.github.io/copilot-cli/docs/overview/)

To deploy rebuild the static files and run deploy script in `./run`:

`bash run/deploy_to_prod.sh`
