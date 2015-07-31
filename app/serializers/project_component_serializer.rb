class ProjectComponentSerializer < ActiveModel::Serializer

  attributes :name, :description#, :images

  #has_many :tools
  belongs_to :project

  def social_links
    {
      facebook: object.facebook_url,
      twitter: object.twitter_url,
      linkedin: object.twitter_url
    }
  end

  def avatars
    if object.avatar_url.present?
      { url: object.avatar_url }
    else
      []
    end
  end

end
