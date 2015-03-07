#!/bin/bash

if [ -z "$$GITHUB_TOKEN" ]; then
  echo 'no GitHub token provided';
else
  echo 'setting GitHub token';
  (cd /opt/satis-stage/satis; php ../composer.phar --global config github-oauth.github.com $GITHUB_TOKEN)
fi

(cd /opt/satis-stage/satis && php bin/satis build /opt/satis.json /var/www/html/) || { echo 'failed to build satis'; exit 1; }

nginx
