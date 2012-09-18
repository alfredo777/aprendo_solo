class User < ActiveRecord::Base
  #Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  #devise :database_authenticatable, :registerable,
      #   :recoverable, :rememberable, :trackable, :validatable
  has_many :courses
  has_many :video_loaders
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :about_me, :avatar
  
  mount_uploader :avatar, AvatarUploader
  
  def self.create_with_omniauth(omniauth)

   create! do |user|
       user.provider = omniauth["provider"]
       user.uid = omniauth["uid"]
       user.name = omniauth["info"]["name"]
       user.image = omniauth["info"]["image"]
       user.token = omniauth["credentials"]["token"]
       if user.save        
         #format.html { redirect_to "/auth/:provider/callback", :notice => 'User wass full created' }
       else
        #format.html { redirect_to root_url, :notice => 'User not created' }
       end
       return user
     end
     
    def self.create_from_hash!(hash)
      create(:name => hash['info']['name'])
    end
  end
end
