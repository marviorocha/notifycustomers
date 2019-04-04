module ApplicationHelper

  def title(page_title)
     content_for(:title){ page_title }
     page_title
   end

  def tags

   { "company_name" => I18n.t(:company_name),
     "version" => 'v0.1',
     "licensed" => '',
     "developer" => '',
     }

  end



end
