module ApplicationHelper

  def title(page_title)
     content_for(:title){ page_title }
     page_title
   end
 

  def saudacao
    timenow = Time.now.hour
    case timenow
      when 0..11
        "<b>Bom dia!</b> #{current_user.name}".html_safe
      when 12..17
        "<b>Boa tarde!</b> #{current_user.name}".html_safe
      when 18..23
        "<b>Boa noite!</b> #{current_user.name}".html_safe
      end

  end


end
