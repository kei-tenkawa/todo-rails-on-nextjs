# TODO アプリ + Next.js
純正railsアプリをNext.jsに移行する<br>
<br>
## 参考にしたサイト
[Railsガイド/3.2](https://railsguides.jp/api_app.html#%E6%97%A2%E5%AD%98%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%82%92%E5%A4%89%E6%9B%B4%E3%81%99%E3%82%8B)<br>
[Railsで超簡単API](https://qiita.com/k-penguin-sato/items/adba7a1a1ecc3582a9c9)<br>
[Ruby on RailsのAPIのconfig/routes.rb書き方【ルーティング備忘録】](https://usconsort.com/rails-routes/)<br>
[Next.js + Ruby on Rails(APIモード) on Docker 構築手順](https://zenn.dev/taku1115/articles/6c9fa97ab37e38)<br>
[React + Rails(API)で tokenを用いたCSRF対策の基礎(のメモ)](https://kappaz.hatenablog.com/entry/2020/08/17/141127)<br>
[Rails API + SPAのCSRF対策例](https://zenn.dev/leaner_dev/articles/20210930-rails-api-spa-csrf)<br>
[rails-apiのsession認証備忘録](https://zenn.dev/tama8021/scraps/a51482322a593d)
[Next.js 日本語マニュアル](https://nextjs-ja-translation-docs.vercel.app/)

# SPAあたりのお話
[SPA, SSR, SSGって結局なんなんだっけ？](https://zenn.dev/rinda_1994/articles/e6d8e3150b312d)
[結局ReactとNext.jsのどちらで開発を進めればいいの？](https://qiita.com/hiroki-yama-1118/items/b3388c5dcb155e2e367d)
[SPA/MPAとCSR/SSR/SSGの分類](https://zenn.dev/mt877/articles/6dc3afe99ee794)
[【Next.js入門】Next.jsとは？CSR、SSR、SSG、ISRについて](https://blog-mayo.com/2022/10/1211/)


# 基本コマンド
```
// 基本構文
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

// サービスのbashに入る
docker compose exec api /bin/bash

// railsコンソールに入る
rails c

```

# DBシェル
```
$ docker compose exec db bash
bash-4.2# mysql -h 127.0.0.1 -P 3306 -u root -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 3
Server version: 5.7.40 MySQL Community Server (GPL)

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| todo_development   |
| todo_test          |
+--------------------+
6 rows in set (0.00 sec)

mysql> use todo_development
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables;
+----------------------------+
| Tables_in_todo_development |
+----------------------------+
| active_storage_attachments |
| active_storage_blobs       |
| ar_internal_metadata       |
| departments                |
| schema_migrations          |
| sections                   |
| task_statuses              |
| task_types                 |
| tasks                      |
| users                      |
+----------------------------+
10 rows in set (0.00 sec)

mysql> select * from users\G;
Empty set (0.00 sec)
```