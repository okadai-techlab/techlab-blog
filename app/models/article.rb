# == Schema Information
#
# Table name: articles
#
#  id                    :integer          not null, primary key
#  title                 :string(255)
#  content               :text(65535)
#  post_reservation_time :datetime
#  post_status           :string(255)
#  admin_id              :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Article < ActiveRecord::Base
  belongs_to :admin
  has_many :comments

  validates :title, presence: true

  # 投稿状態の定義
  enum post_status: {
    open: 'open', # 公開
    pending: 'pending', # 下書き
    reservation: 'reservation' # 予約投稿
  }

end
