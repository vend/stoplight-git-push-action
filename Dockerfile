FROM alpine

LABEL "repository"="http://github.com/vend/git-push-action"
LABEL "homepage"="http://github.com/vend/git-push-action"
LABEL "maintainer"="Piotr Zurek <piotr@vendhq.com>"

LABEL "com.github.actions.name"="Git Push Action"
LABEL "com.github.actions.description"="Get a file from the current repository and push it to another repository"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="blue"

RUN apk --no-cache add git && apk --no-cache add tree

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
