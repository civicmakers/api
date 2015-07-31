class ProjectComponentSerializer < ActiveModel::Serializer

  attributes :name, :description, :images

  has_many :tools
  belongs_to :project

  def images
    object.project_component_images.map do |project_component_image|
      { url: project_component_image.image_url }
    end
  end

  def avatars
    if object.avatar_url.present?
      { url: object.avatar_url }
    else
      []
    end
  end

end
