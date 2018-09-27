class SalesUpload < ApplicationRecord

  mount_uploader :video, VideoUploader
  serialize :video, JSON # If you use SQLite, add this line.

  def order_sales_relationship
    Order.where(id: SalesUpload.where(:order_id))


  end


  def ordertits
    Order.where(:id) && SalesUpload.where(:order_id)

  end
  #belongs_to :order

  belongs_to :user
#  belongs_to :buyer
  #has_many :listings
  #belongs_to :order
  #has_many :orders, through: :listings
  has_one :order
  has_one :buyer

end
