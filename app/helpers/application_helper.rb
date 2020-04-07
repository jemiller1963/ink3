module ApplicationHelper
  def full_date(datetime)
    datetime.strftime('%B %d, %Y')
  end
end
