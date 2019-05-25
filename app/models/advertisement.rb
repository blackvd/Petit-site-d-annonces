class Advertisement < ApplicationRecord

  has_many :comments

  belongs_to :user

  def waiting?
    self.state === "waiting"
  end

end
