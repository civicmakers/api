# == Schema Information
#
# Table name: tools
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :text
#  url          :string
#  facebook_url :string
#  twitter_url  :string
#  linkedin_url :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  profile_id   :integer
#

class Tool < ActiveRecord::Base

  belongs_to :profile

end
