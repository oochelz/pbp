#!/usr/bin/env bash

REPOS=(consumer-layouts consumer-domain consumer-session domain-values consumer-main)

for dir in $REPOS
do
  echo "$(tput setaf 5)Pulling and bundling ${dir}...$(tput sgr0)"
  cd "$(pwd)/${dir}"
  git pull
  bundle install
done

echo "$(tput setaf 5)Powdering down and powdering up...$(tput sgr0)"
powder down
powder up

echo "$(tput setaf 5)Warming up domain-values and consumer-domain...$(tput sgr0)"
curl http://domain-values.dev?host=m.careerbuilder.dev >/dev/null 2>&1
curl http://consumer-domain.dev/jobs/search?bid=hello >/dev/null 2>&1

echo "$(tput setaf 5)We're done here. Checkout this sweet turtle and robot."
echo "$(tput setaf 2)"
cat <<"EOT"
        _.._    _       i_i
      ."\__/"./`_\     [@_@]
    _/__<__>__\/       /|_|\
   `"/_/""""\_\\        d b
EOT

echo "$(tput sgr0)"
