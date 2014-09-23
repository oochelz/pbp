echo "$(tput setaf 5)Pulling and bundling js-global...$(tput sgr0)"
cd js-global
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

echo "$(tput setaf 5)Pulling and bundling consumer-profile...$(tput sgr0)"
cd ../consumer-profile
git pull
bundle install

echo "$(tput setaf 5)Pulling and bundling consumer-resume...$(tput sgr0)"
cd ../consumer-resume
git pull
bundle install

echo "$(tput setaf 5)Powdering down and powdering up...$(tput sgr0)"
powder down
powder up

echo "$(tput setaf 5)Hitting http://cb-mobile.dev so you don't have to wait for it to startup...$(tput sgr0)"
wget --quiet http://cb-mobile.dev

echo "$(tput setaf 5)We're done here. Checkout this sweet turtle and robot."
echo "$(tput setaf 2)"
cat <<"EOT"
        _.._    _       i_i
      ."\__/"./`_\     [@_@]
    _/__<__>__\/       /|_|\
   `"/_/""""\_\\        d b
EOT

echo "$(tput sgr0)"
