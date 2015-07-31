# == Schema Information
#
# Table name: project_images
#
#  id         :integer          not null, primary key
#  project_id :integer
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProjectImage < ActiveRecord::Base

  belongs_to :project

end
