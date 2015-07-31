class ToolSerializer < ActiveModel::Serializer

  attributes :name, :description, :url, :social_links

  belongs_to :profile
  has_many :project_components

  def social_links
    {
      facebook: object.facebook_url,
      twitter: object.twitter_url,
      linkedin: object.twitter_url
    }
  end

end
