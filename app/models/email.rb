class Email < ActiveRecord::Base
  attr_accessible :from, :message, :subject, :time, :to
end
