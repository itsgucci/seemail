module ApplicationHelper
  
  
  def nice_date(date)
    return "" if date.nil?
    #time_ago_in_words(date) + " " + (date.past? ? "ago" : "from now")
    date_displayed = date.strftime "%b %e"
    date_displayed += date.strftime " %Y" if date.year != Time.now.year
    date_displayed
  end
  def nice_time(date)
    return "" if date.nil?
    date.strftime "%R"
  end
  def nice_date_and_time(date)
    nice_date(date) + " " + nice_time(date)
  end
  
end
