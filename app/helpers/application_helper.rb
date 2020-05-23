module ApplicationHelper
  def full_date(datetime)
    datetime.strftime('%B %d, %Y')
  end

  def full_date_time(datetime)
    datetime.strftime('%a %B %d, %Y %r') 
  end

  def fullname(user)
    if user.fname && user.lname
      [user.fname, user.lname].compact.join(' ')
    end
  end
end
