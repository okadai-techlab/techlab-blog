# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# ログ出力先
set :output, "log/crontab.log"
# ジョブ実行環境指定
set :environment, :production

# 1時間毎にpost_reservationをチェックし、予約してある記事を公開するかどうか判断する
every 1.hours do
  rake 'article:check_reservation'
end

# Learn more: http://github.com/javan/whenever
