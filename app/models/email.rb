class Email < ActiveRecord::Base
  attr_accessible :from, :message, :subject, :time, :to
  
  validates_presence_of :to
  before_create :set_time_to_now
  
  private
  def :set_time_to_now
    self.time = Time.now
  end
  
end
