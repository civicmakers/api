# == Schema Information
#
# Table name: project_component_images
#
#  id                   :integer          not null, primary key
#  project_component_id :integer
#  image_url            :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class ProjectComponentImage < ActiveRecord::Base

  belongs_to :project_component

end
