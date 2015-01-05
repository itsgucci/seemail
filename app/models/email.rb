class Email < ActiveRecord::Base
  attr_accessible :from, :message, :subject, :time, :to
  
  validates_presence_of :to
  
end
