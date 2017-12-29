[PlantUML](http://plantuml.com/) 使ってます。  
[AsciiDoc](http://asciidoc.org/)というのも使ってます。

## Asciidoc の自動画像生成ツール

docker環境で実行

```
docker-compose up -d
docker-compose run asciidoc guard start
```

ローカルで起動するとき

```
# ライブラリインストール
bundle install
# Asciidocのビルドを行う
bundle exec guard
もしくは
guard start
```
