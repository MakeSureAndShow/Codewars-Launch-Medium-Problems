SECONDS_PER_MINUTE = 60
SECONDS_PER_HOUR = SECONDS_PER_MINUTE * 60
SECONDS_PER_DAY = SECONDS_PER_HOUR * 24
SECONDS_PER_YEAR = SECONDS_PER_DAY * 365

def format_duration(number)
  
  if number == 0
    return "now"
  end 
  
  years, number = number.divmod(SECONDS_PER_YEAR)
  days, number = number.divmod(SECONDS_PER_DAY)
  hours, number = number.divmod(SECONDS_PER_HOUR)
  minutes, seconds = number.divmod(SECONDS_PER_MINUTE)
  
  result = []
  
  case 
  when years > 1
    result << "#{years} years"
  when years == 1
    result << "1 year"
  end
  
  case
  when days > 1
    result << "#{days} days"
  when days == 1
    result << "1 day"
  end
  
  case
  when hours > 1
    result << "#{hours} hours"
  when hours == 1
    result << "1 hour"
  end
  
  case
  when minutes > 1
    result << "#{minutes} minutes"
  when minutes == 1
    result << "1 minute"
  end
  
  case
  when seconds > 1
    result << "#{seconds} seconds"
  when seconds == 1
    result << "1 second"
  end

  result2 = []
  
  counter = 0
  while counter < result.size - 1 do
    result2 << result[counter]
    counter += 1
  end
  
  result3 = []
  result3 << result2 << [result[-1]]
  
  result3.map! do |subarray|
    subarray.join(", ")
  end
  
  result = result3.join(" and ")
  
  case result[0..4]
  when " and " then result.gsub!(" and ", "")
  end
  result
end

p format_duration(62)