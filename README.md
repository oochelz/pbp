# Pull, Bundle, Powder (pbp)

This script is to `git pull` and `bundle install` certain Rails apps we develop. Once that's done, it does `powder down` and `powder up` to restart [pow](http://pow.cx/) using [powder](https://github.com/Rodreegez/powder).

To run, put the file in the same directory as the repos, then just: `sh pbp.sh`
