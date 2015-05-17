## vagrant + coreos + dockerによる環境構築

### coreos立ち上げ
vagrantは導入済とする
`vagrant plugin dotenv`を実行し、`.env`ファイルで環境変数を取り込み可能としておく
```
TIMEZONE=Asia/Tokyo
# https://github.com/docker/compose/releases
COMPOSE_VERSION=1.2.0
SMB_USERNAME=[your id here]
SMB_PASSWORD=[your password here]
```

vagrantでcoreosを起動。docker/docker-composeがインストールされた環境が作成される
```bash
cd coreos
vagrant up
```

### イメージ作成
`vagrant ssh`でcoreos上の作業になる

```bash
cd gitbucket
docker build -t tamura/gitbucket .
```

