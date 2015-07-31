# == Schema Information
#
# Table name: tool_usages
#
#  id                   :integer          not null, primary key
#  project_component_id :integer
#  tool_id              :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class ToolUsage < ActiveRecord::Base

  belongs_to :tool
  belongs_to :project_component

end
