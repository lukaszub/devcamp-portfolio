3.times do  |topic|
Topic.create!(
		title:"Topic #{topic}"
	)
end

puts "3 topics created"


10.times do |blog|
	Blog.create!(
		title:"My Blog post #{blog}",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam magna ante, fringilla eu ante ut, interdum aliquam risus. Sed sed volutpat dolor, non pretium purus. Aliquam erat volutpat. Quisque fringilla in nisl vel malesuada. Quisque quis turpis eu lorem suscipit volutpat a nec massa. Cras dignissim leo pharetra ante sagittis, a aliquam libero porttitor. Suspendisse imperdiet porttitor ligula, sed finibus erat efficitur nec.

",
	topic_id: Topic.last.id
	)
end

puts "10 blogs created"

5.times do |skill|
	Skill.create!(
		title: "Rails: #{skill}",
		percent_utilized: 15
	)

end

puts "5 skills created"

8.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}" ,
		subtitle: "Ruby on rails",
		body:"Nunc pretium condimentum ipsum, sit amet vulputate ligula eleifend vel. Vivamus blandit leo sit amet tempus euismod. Donec ultricies lectus justo, in condimentum diam facilisis id. Nulla ultricies nisi vitae velit vehicula, ac dictum lacus volutpat. Curabitur vel mi enim. Curabitur ac facilisis neque. Maecenas urna tellus, gravida non velit vel, commodo ornare massa. Cras et dapibus tellus. Quisque lacinia ut magna at fermentum.

Sed tincidunt vulputate enim. Nullam suscipit ac magna vel lobortis. Sed ac sapien dignissim, lobortis diam ut, blandit arcu. Quisque euismod vehicula enim, in blandit purus maximus vel. Nam non porta elit. Nulla imperdiet vestibulum nisl a pharetra. Etiam erat mauris, tempus quis luctus vitae, interdum non sapien. Nulla facilisi. Nulla vulputate felis eu ex vestibulum, non cursus purus aliquet. Proin dignissim faucibus sollicitudin." ,
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
	)

end

puts "8 Ruby on rails  portfolio items  created "

1.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}" ,
		subtitle: "Angular",
		body:"Nunc pretium condimentum ipsum, sit amet vulputate ligula eleifend vel. Vivamus blandit leo sit amet tempus euismod. Donec ultricies lectus justo, in condimentum diam facilisis id. Nulla ultricies nisi vitae velit vehicula, ac dictum lacus volutpat. Curabitur vel mi enim. Curabitur ac facilisis neque. Maecenas urna tellus, gravida non velit vel, commodo ornare massa. Cras et dapibus tellus. Quisque lacinia ut magna at fermentum.

Sed tincidunt vulputate enim. Nullam suscipit ac magna vel lobortis. Sed ac sapien dignissim, lobortis diam ut, blandit arcu. Quisque euismod vehicula enim, in blandit purus maximus vel. Nam non porta elit. Nulla imperdiet vestibulum nisl a pharetra. Etiam erat mauris, tempus quis luctus vitae, interdum non sapien. Nulla facilisi. Nulla vulputate felis eu ex vestibulum, non cursus purus aliquet. Proin dignissim faucibus sollicitudin." ,
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
	)

end

puts "1 Angular portfolio item created " 