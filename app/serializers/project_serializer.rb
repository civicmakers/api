class ProjectSerializer < ActiveModel::Serializer

  attributes :name, :description, :url, :avatars, :images

  belongs_to :profile

  def images
    object.project_images.map do |project_image|
      { url: project_image.image_url }
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
