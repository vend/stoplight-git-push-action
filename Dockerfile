FROM alpine

LABEL "repository"="http://github.com/vend/stoplight-git-push-action"
LABEL "homepage"="http://github.com/vend/stoplight-git-push-action"
LABEL "maintainer"="Piotr Zurek <piotr@vendhq.com>"

LABEL "com.github.actions.name"="Stoplight Git Push Action"
LABEL "com.github.actions.description"="This action pushes updates to the main.hub.yml file to a Stoplight repo"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="blue"

RUN apk --no-cache add git && apk --no-cache add tree

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
