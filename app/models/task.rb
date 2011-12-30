class Task < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true, :length => {:maximum => 140}

  def done!
    self.done = true
    self.save!
  end
end
