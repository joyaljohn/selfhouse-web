# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :omniauthable, :omniauth_providers => [:facebook, :google_oauth2]


  validates :first_name, presence: true
  validates :last_name, presence: true

  def self.checkOrSaveUser(auth)
    auth_obj = JSON.parse(auth)
    Rails.logger.debug auth_obj['uid']
    where(uuid: auth_obj['uid'] ).first_or_create! do |user|
      user.uuid = auth_obj['uid']
      user.email = auth_obj['info']['email']
      user.first_name = auth_obj['info']['name'].split.first
      user.last_name = auth_obj['info']['name'].split.last
      user.password=user.email+'_selfhouse'
      user.confirmed_at = Time.now.utc
      Rails.logger.debug user.to_json
    end
  end
end
