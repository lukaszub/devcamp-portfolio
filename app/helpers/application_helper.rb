module ApplicationHelper
def login_helper style = ''
	if current_user.is_a?(GuestUser) 
    (link_to "Sign up", new_user_registration_path , class: style ) + 
     " ".html_safe +
     (link_to "Login", new_user_session_path, class: style) 
    else 
     link_to "Logout", destroy_user_session_path, method: :delete , class: style
		end
 	end	


 	def sampler_helper
 		content_tag(:div, "My content", class: "my-class")		
 	end	

  def source_helper(layout_name)
   if session[:source]
    greeting = "Thanks for visiting me from  #{session[:source]} and you are on the #{layout_name} layout."
    content_tag(:p,greeting, class: "source-greeting")
   end 
  end

  def copyright_generator
    LumaViewTool::Renderer.copyright('Lukasz Zubrzycki', 'All rights reserved ')
  end


  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      }, 
      {
        url: about_me_path,
        title: 'About me'
      }, 
      {
        url: contact_path,
        title: 'Contact'
      }, 
      {
        url: blogs_path,
        title: 'Blog'
      }, 
      {
        url: portfolios_path,
        title: 'Portfolio'
      }
      


    ]

  end

  def navbar_helper style, tag_type
    nav_links = ''
    nav_items.each do |item|
     nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:title]}'>#{item[:title]}</a></#{tag_type}>"
  end
   
  
   nav_links.html_safe
  end

def active? path
  "active" if current_page? path
end

end
