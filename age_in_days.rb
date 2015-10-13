require 'date'

def age_in_days(day, month, year)
    born_day = Date.new(year, month, day)
    today = Date.today
    birthdays = born_day.step(today).select{|d|
        d.month == month && d.day == day
    }
    num_birthdays = birthdays.size
    # Count out the day you were born, as that doesn't count as age 1
    age = num_birthdays - 1
    print age
end

puts age_in_days(15, 8, 1947)

