# To-Do List

## Use Travis CI to automate publishing releases to GitHub Pages

Two tutorials that will probably help while sorting this out:

* [Auto-deploying built products to gh-pages with Travis](https://gist.github.com/domenic/ec8b0fc8ab45f39403dd)
* [Automatically Publish Javadoc to GitHub Pages with Travis CI](http://benlimmer.com/2013/12/26/automatically-publish-javadoc-to-gh-pages-with-travis-ci/)

Of course, Travis doesn't natively know how to build Inform7 projects.  I'll probably have to design the build script to download and run [this `i7` cli tool](http://inform7.com/download/content/6M62/I7_6M62_Linux_all.tar.gz).  If I want a test suite I'll have to get creative.
