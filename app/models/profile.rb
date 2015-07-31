# == Schema Information
#
# Table name: profiles
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :text
#  avatar_url   :string
#  url          :string
#  facebook_url :string
#  twitter_url  :string
#  linkedin_url :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Profile < ActiveRecord::Base

  has_many :tools

end
