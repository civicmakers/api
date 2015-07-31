class ProfileSerializer < ActiveModel::Serializer
  
  attributes :name, :description, :url, :social_links, :avatars

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
