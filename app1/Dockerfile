FROM ruby:3.3-slim

# 必要最低限（PostgreSQL接続用 + psychビルド用）
RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
      build-essential \
      libpq-dev \
      libyaml-dev \
      pkg-config \
      curl && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 3000
CMD ["bash", "-lc", "rm -f tmp/pids/server.pid && bundle exec rails s -b 0.0.0.0 -p 3000"]

