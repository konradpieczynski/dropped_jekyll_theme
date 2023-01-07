FROM ruby:3.1

RUN gem update bundler && gem install bundler jekyll

RUN gem install jekyll-gist jekyll-paginate jekyll-asciidoc coderay

WORKDIR /srv/jekyll

COPY . /srv/jekyll

EXPOSE 4000 35729

CMD ["jekyll", "serve", "--livereload"]