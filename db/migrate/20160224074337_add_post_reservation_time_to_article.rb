class AddPostReservationTimeToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :post_reservation_time, :datetime, after: :content
    add_column :articles, :post_status, :string, after: :post_reservation_time
  end
end
