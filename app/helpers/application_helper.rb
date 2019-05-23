module ApplicationHelper

  def title(page_title)
     content_for(:title){ page_title }
     page_title
   end
 

  def saudacao
    timenow = Time.now.hour
    case timenow
      when 0..11
        "Bom dia! #{current_user.name}"
      when 12..17
        "Boa tarde! #{current_user.name}"
      when 18..23
        "Boa noite! #{current_user.name}"
      end

  end


end
