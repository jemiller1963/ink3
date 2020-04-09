module ApplicationHelper
  def full_date(datetime)
    datetime.strftime('%B %d, %Y')
  end

  def fullname(user)
    if user.fname && user.lname
      [user.fname, user.lname].compact.join(' ')
    end
  end
end
