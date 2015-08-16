		json.array! @posts do |post|
			json.name post.name
			json.comment post.comment
			json.latitude post.latitude
			json.longitude post.longitude
			json.photo post.photo.url(:medium) 
		end