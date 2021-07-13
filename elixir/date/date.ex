# Time

time = Time.utc_now
IO.puts time
IO.puts("#{time.hour}, #{time.minute}")

# Date
IO.puts Date.utc_today
{:ok, date} = Date.new(2020, 07, 21)
IO.puts date
IO.puts(Date.leap_year? date)

# NaiveDateTime - No timezone support
IO.puts NaiveDateTime.utc_now

# DateTime
IO.puts DateTime.utc_now


