FROM ruby:3.3-slim

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /srv/jekyll

ENV BUNDLE_FORCE_RUBY_PLATFORM=1

COPY Gemfile ./
RUN bundle install

COPY . .

EXPOSE 4000 35729

CMD ["sh", "-c", "bundle install && bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload"]
