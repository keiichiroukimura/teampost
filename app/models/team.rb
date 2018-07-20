class Team < ApplicationRecord
  include FriendlyId
  friendly_id :name
  belongs_to :owner, class_name: 'User', foreign_key: :owner_id

  has_many :assigns, dependent: :destroy
  has_many :members, through: :assigns, source: :user
  has_many :articles, dependent: :destroy
  has_many :agendas, dependent: :destroy
  mount_uploader :icon, ImageUploader

  def invite_member(user)
    assigns.create(user: user)
  end
end