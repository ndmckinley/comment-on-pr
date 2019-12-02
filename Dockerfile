FROM ruby:2.6.0

LABEL "com.github.actions.name"="Comment on PR"
LABEL "com.github.actions.description"="Leaves a comment after a PR update event."
LABEL "com.github.actions.repository"="https://github.com/ndmckinley/comment-on-pr"
LABEL "com.github.actions.maintainer"="Nathan McKinley <nmckinley@google.com>"
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="blue"

RUN gem install octokit

ADD entrypoint.rb /entrypoint.rb
ENTRYPOINT ["/entrypoint.rb"]
