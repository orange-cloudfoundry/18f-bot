#!/bin/sh

#redishost=$(echo $VCAP_SERVICES | ./node_modules/.bin/json "redis28[0].credentials.hostname")
#redisport=$(echo $VCAP_SERVICES | ./node_modules/.bin/json "redis28[0].credentials.port")
#redispass=$(echo $VCAP_SERVICES | ./node_modules/.bin/json "redis28[0].credentials.password")

# Redis doesn't use usernames, so it can be anything.
#export REDIS_URL="redis://anyvalue:$redispass@$redishost:$redisport"

export PORT=$PORT
export BIND_ADDRESS=0.0.0.0
export PATH=./node_modules/.bin:$PATH

export  HUBOT_GITHUB_ORG=Orange-OpenSource
export  HUBOT_GITHUB_TOKEN=693d5060347f54e510029a4f4842d2d677600708
export  HUBOT_GITHUB_REPOS_MAP='{"brokers":["static-creds-broker","elpaaso-brokers", "autosleep"],"elpaaso-oss":["elpaaso-core", "elpaaso-starter-parent", "elpaaso-build-tools", "elpaaso", "elpaaso-dbaas-wsdl", "elpaaso-plugins-management", "elpaaso-samples", "elpaaso-wsdl", "elpaaso-system-test-apps"],"sandbox-service":["elpaaso-sandbox-ui","elpaaso-sandbox-service","elpaaso-sandbox-boshrelease"],"db-dumper-service":["db-dumper-service", "db-dumper-cli-plugin"]}'
export  MATTERMOST_ENDPOINT=/elbot/incoming
export  MATTERMOST_INCOME_URL=https://mattermost.nd-cfapi.itn.ftgroup/hooks/wdaagnp447dwjmuj4pk59816ra
export  MATTERMOST_TOKEN=db766pgoxi8n8joeew1338cn4c
export  MATTERMOST_HUBOT_USERNAME=elbot
export  MATTERMOST_ICON_URL=http://www.mobilevillage.com/wp-content/uploads/2016/01/Elbot-robot-50x50.jpg
export  HUBOT_CF_API_ORIGIN=https://api.nd-cfapi.itn.ftgroup
export  HUBOT_CF_UAA_ORIGIN=https://uaa.nd-cfapi.itn.ftgroup
export  HUBOT_CF_USER=hubot-cf-listener
export  HUBOT_CF_PASS=hubot2016elbot!
export  NODE_TLS_REJECT_UNAUTHORIZED=0

./bin/hubot --adapter mattermost --name elbot
