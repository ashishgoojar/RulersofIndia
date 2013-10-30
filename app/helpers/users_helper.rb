module UsersHelper

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user, options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
if user.avatar_url.nil?
   image_tag("missing.png", alt: user.name)
   else
    image_tag(user.avatar_url(:thumb)) if user.avatar_url
  end
  end
end
