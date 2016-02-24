namespace :article do
  desc "article.post_reservation_timeを確認して投稿時間になったら記事のpost_statusをopenにする"
  task :check_reservation => :environment do
    articles = Article.where(post_status: 'reservation').where("post_reservation_time <= ?", Time.zone.now)
    if articles.present?
      articles.each do |a|
        a.update(post_status: 'open')
      end
    end
  end
end
