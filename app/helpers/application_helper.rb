module ApplicationHelper
   
   def logo 
     image_tag("logo.png", :alt => "Physiozone", :class => "round")
   end


   def title 
      base_title = "Physio Zone"
      if @title.nil?
         base_title
      else
        "#{base_title} | #{@title}"
      end
   end
end
