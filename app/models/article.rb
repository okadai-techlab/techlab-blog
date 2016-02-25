class Article < ActiveRecord::Base
  belongs_to :admin

  # 投稿状態の定義
  enum post_status: {
    open: 'open', # 公開
    pending: 'pending', # 下書き
    reservation: 'reservation' # 予約投稿
  }
end
