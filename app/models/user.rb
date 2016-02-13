class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:google_oauth2, :facebook, :github]

  validates :name, presence: true, length: { maximum: 20 }

  after_create :send_notification

  def send_notification
  	MandrillMailler.new_user(self).deliver_later
  end 

  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(provider: access_token.provider, uid: access_token.uid).first
    
    if user
      return user
    else
      registered_user = User.where(email: access_token.email).first
      if registered_user
        return registered_user
      else
        user = User.create(
          name: data['name'],
          email: data['email'], 
          provider: access_token.provider,
          uid: access_token.uid,
          password: Devise.friendly_token[0, 20],
          image: data['image']
        )
      end 
    end
  end 

  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(provider: access_token.provider, uid: access_token.uid).first
    
    if user
      return user
    else
      registered_user = User.where(email: data['email']).first
      if registered_user
        return registered_user
      else
        user = User.create(
          name: data.name,
          email: data.email, 
          provider: access_token.provider,
          uid: access_token.uid,
          password: Devise.friendly_token[0, 20],
          image: data.image
        )
      end 
    end
  end 

  def self.find_for_github_oauth(access_token, signed_in_resource=nil)
    data = access_token.info
    user = User.where(provider: access_token.provider, uid: access_token.uid).first
    
    if user
      return user
    else
      registered_user = User.where(email: data.email).first
      if registered_user
        return registered_user
      else
        user = User.create(
          name: data.name,
          email: data.email, 
          provider: access_token.provider,
          uid: access_token.uid,
          password: Devise.friendly_token[0, 20],
          image: data.image
        )
      end 
    end
  end 
end
