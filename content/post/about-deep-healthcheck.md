---
title: "Deep Healthcheckについて"
date: 2018-02-01T23:39:27+09:00
tags:
- AWS
---

Deep Healthcheckパターンについて書く。

<!--more-->

Deep Healthcheckパターンとは、[こちら](http://aws.clouddesignpattern.org/index.php/CDP:Deep_Health_Check%E3%83%91%E3%82%BF%E3%83%BC%E3%83%B3)で紹介されている
クラウドアーキテクチャのデザインパターンである。

### 概要
一般的にELBを使ったヘルスチェックでは、HTTPステータスコード200を返すだけの小さな処理のみを行うエンドポイントを用意するのが定石。
しかし、これのデメリットは、後ろにあるDBサーバへの接続確認ができないことである。
これを解決するために、単に200を返すのではなく、そのエンドポイントの処理の中でDB接続を発行し、
DB接続観点でのヘルスチェックも一緒に見てしまう、というのが **Deep Healthcheck** パターン。

### メリット
DBにもし繋げなければ5xxを返すなどすることで、DB接続失敗時にもヘルスチェック失敗にすることができる。

### デメリット
ヘルスチェック自体が負荷になる可能性がある。
ELBはデフォルトでヘルスチェックを15秒ごとに発行するので、15秒ごとに両系のサーバからDBへのコネクションが張られることになる。
これが負荷にならないかはよくテストする必要がある。
また当然だが、RDSとの送受信料金もかかる。(微々たるものだとは思うが。)