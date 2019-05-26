class Advertisement < ApplicationRecord

  has_many :comments

  belongs_to :user
  belongs_to :category

  def waiting?
    self.state === "waiting"
  end

end
