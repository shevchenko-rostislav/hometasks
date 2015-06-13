class User 
  attr_accessor :profile, :store

  private

  def create_profile
  self.profile = Profile.create(:user => self) if self.profile.nil?
  self.profile
  end
end
