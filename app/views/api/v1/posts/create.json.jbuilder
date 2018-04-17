json.message 'Post has been created very very successfully.....'
json.data do 
	json.title @post.title
	json.image @post.image
end