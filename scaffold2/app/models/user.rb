class User < ApplicationRecord

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :description
  validates_format_of :email,:with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  validates_length_of :description, :maximum => 500

end
