# == Schema Information
#
# Table name: project_components
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  project_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ProjectComponent < ActiveRecord::Base

  belongs_to :project
  has_many :project_component_images
  has_many :tool_usages
  has_many :tools, through: :tool_usages

end
