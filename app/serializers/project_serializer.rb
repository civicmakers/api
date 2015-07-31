class ProjectSerializer < ActiveModel::Serializer

  attributes :name, :description, :url, :avatars

  belongs_to :profile

  def avatars
    if object.avatar_url.present?
      { url: object.avatar_url }
    else
      []
    end
  end

end
