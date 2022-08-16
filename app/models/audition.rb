class Audition < ActiveRecord::Base
  belongs_to :roles

  def role
    self.roles.character_name
  end

  def callback
    if self.hired == false
        self.hired = true
    end
  end
end