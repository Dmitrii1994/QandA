module ApplicationHelper
  def user_avatar(user)
    if user.avatar_url.present?
      user.avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end

  def fa_icon(icon_class)
    content_tag 'span','', class: "fa fa-#{icon_class}"
  end

  def decline(number, question,questions)
    if number == nil || !number.is_a?(Numeric)
      number = 0
    end

    rest = number % 10


    if rest == 1
      question
    elsif rest >= 2 || rest.zero?
      questions
    end
  end


end
