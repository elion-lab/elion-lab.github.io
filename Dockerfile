FROM ruby:3.1.0

WORKDIR /app
RUN gem update --system
RUN gem install sass-embedded -v 1.63.6
RUN gem install jekyll bundler

COPY . .

EXPOSE 4002

CMD ["bundle", "exec", "jekyll", "serve", "--livereload", "--host", "0.0.0.0"]

# docker build -t elion .
# docker image ls
# docker run -dp 4002:4000 -v "$(pwd):/app" elion