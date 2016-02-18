class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  after_create :send_receipt_email

  private 
  	def send_receipt_email
  		@user = User.find_by_email(self.user.email)
  		@project = Project.find(self.project_id)

  		MandrillMailer.new_receipt(@user, @project).deliver_now	
  	end 
end
