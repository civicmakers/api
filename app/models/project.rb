# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  avatar_url  :string
#  profile_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  url         :string
#

class Project < ActiveRecord::Base

  belongs_to :profile

end
