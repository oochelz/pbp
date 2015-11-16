echo "$(tput setaf 5)Pulling and bundling consumer-layouts...$(tput sgr0)"
cd consumer-layouts
git pull
bundle install

echo "$(tput setaf 5)Pulling and bundling consumer-domain...$(tput sgr0)"
cd ../consumer-domain
git pull
bundle install

echo "$(tput setaf 5)Pulling and bundling consumer-session...$(tput sgr0)"
cd ../consumer-session
git pull
bundle install

echo "$(tput setaf 5)Pulling and bundling domain-values...$(tput sgr0)"
cd ../domain-values
git pull
bundle install

echo "$(tput setaf 5)Pulling and bundling consumer-main...$(tput sgr0)"
cd ../consumer-main
git pull
bundle install

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
