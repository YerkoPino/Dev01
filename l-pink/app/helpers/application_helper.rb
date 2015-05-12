module ApplicationHelper
	def avatar_url(user)
		if user.avatar_url?
			user.avatar_url
		else  
		    
		    gravatar_id = Digest::MD5::hexdigest(user.email).downcase  
		    "http://gravatar.com/avatar/#{gravatar_id}.png?s=200" 
		end
  	end 
end