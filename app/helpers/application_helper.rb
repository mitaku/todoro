module ApplicationHelper
  def brand_logo
    link_to(image_tag("brand.png"), root_path, :class => "brand")
  end

  def head_tags
    capture_haml do
      haml_tag :title, @title || "ToDoRo - ToDo Application"
      haml_tag :link, :href => "/apple-touch-icon.png", :rel => "apple-touch-icon"
      haml_tag :meta, :name => "viewport", :content => "width=device-width, initial-scale=1.0, maximum-scale=0.6667, user-scalable=0;" 
    end
  end

  def footer_content
    capture_haml do
      haml_tag :p, %Q{&copy; Takumi MIURA 2011}.html_safe
    end
  end
end
