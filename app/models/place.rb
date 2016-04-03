class Place < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :phone
  validates_presence_of :address
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zip
  validates_presence_of :website
  validates_presence_of :user_id

  belongs_to :user

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    [address, city, state, zip].join(',')
  end

  has_many :reviews, dependent: :destroy
end
