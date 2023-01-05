# TODO アプリ + Next.js
純正railsアプリをNext.jsに移行する
参考にしたサイト
[Railsガイド/3.2](https://railsguides.jp/api_app.html#%E6%97%A2%E5%AD%98%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%82%92%E5%A4%89%E6%9B%B4%E3%81%99%E3%82%8B)
[Railsで超簡単API](https://qiita.com/k-penguin-sato/items/adba7a1a1ecc3582a9c9)
[Ruby on RailsのAPIのconfig/routes.rb書き方【ルーティング備忘録】](https://usconsort.com/rails-routes/)
[Next.js + Ruby on Rails(APIモード) on Docker 構築手順](https://zenn.dev/taku1115/articles/6c9fa97ab37e38)
```
docker compose run api rails ---

// routes一覧確認
docker compose run api rails routes

// gemfileを編集後
docker compose build

// modelを作成+migrationも作成
docker compose run api rails g model model名

// db作成
docker compose run api rails db:create
docker compose run api rails db:migrate

// db削除
docker compose run api rails db:drop
```
