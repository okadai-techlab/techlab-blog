てくらぼブログシステム！！ 
===

### システムを動かすまで
Ruby, MySQLが入っている前提  
もし入っていない場合はインストールしてください  

`bundler`をインストール
```
$ gem install bundler
```

`bundler`を使ってGemをインストール （pathを入力しておくとGemのバージョン管理とか楽になると思う）
```
$ bundle install --path vendor/bundle
```

`config/database.yml`を自分の環境にセッティング
```
$ vi config/database.yml
```

データベースを更新する
```
$ bundle exec rake db:migrate
```

サーバーを立ち上げる
```
$ bundle exec rails server
```

### Adminユーザーを追加する
Adminはフォームから追加出来ないのでコンソールから追加します
```
$ bundle exec rails console
> a = Admin.new 
> a.email = "xxx"
> a.password = "yyy"
> a.password_confirmation = "yyy"
> a.save
```

これで情報が保存されるのでAdminログイン出来るようになります。