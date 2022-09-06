# 環境構築の手順
### インストール環境

macOS Monterey 12.51

MacBookPro(M1,2021)

学習を始めた当時、環境構築にかなり苦戦した記憶があり、現在の環境にたどり着くまでの正確な手順として正しいかは定かではないのですが、当時の記録をもとに記載します。

参考URL: https://zenn.dev/osuzuki/articles/a535b2840bbea3

### 01. Command Line Toolsをインストール
 
 ```
 xcode-select --install
 ```
 

### 02. rbenvのインストール

  そのためのHomebrewをインストール
  ```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
  rbenvを入手
  ```
  brew install ruby-build rbenv
  ```
  パスを通して初期化
  ```
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
  echo 'eval "$(rbenv init -)"' >> ~/.zshrc
  ```
  
### 03. Rubyをインストール

  Rubyをインストール
  ```
  rbenv install 2.7.6
  ```
  切り替え
  ```
  rbenv global 2.7.6
  ```
  
### 04. Railsをインストール

  Railsをインストール
  ```
  gem install rails -v 6.0.5.1 
  ```
  
### 05. yarnをインストール

   Homebrewでインストール
   ```
   brew install yarn
   ```
   
### 06. プロジェクト作成

  バージョンを指定してプロジェクト作成
  ```
  rails _6.0.5.1_ new shop_app
  ```
  サーバーを起動
  ```
  rails s
  ```
  ブラウザで http://localhost:3000/ にアクセスすると「Yay! You’re on Rails!」ページが表示
  
### 07. ダミーデータの作成

  データベースはSQliteを使用
  
  Fakerを用いてダミーデータを作成
  ```
  bundle install
  rails db:seed  
  ```
  
### Webpackerのインストール

  Webpacker::Manifest::MissingEntryErrorが発生したため、Webpackerをインストールして解決
  ```
  rails webpacker:install
  rails webpacker:compile
  ```
  
  
