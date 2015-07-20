# HAPPY NEW YEAR!
tm = Time.new
stop_point = Time.local(tm.year, 12, 31, 23, 59, 50).to_i

# IF NEW YEARS EVE
if tm.month == 12 and tm.day == 31
	# FIND Dec 31 11:59:50pm
	if Time.now.to_i < stop_point
		wait_time   = stop_point - Time.now.to_i
		sleep wait_time
	end

	# COUNT DOWN TO NEW YEAR
	10.downto(1) do |i|
		print "..."
		puts i
		sleep 1
	end

	puts "Happy New Year's Day!"

# IF JANUARY
elsif tm.month == 1
	# IF NEW YEAR'S DAY
	if tm.day == 1
		puts "Happy New Year's Day!"
	end
	
	puts "It's the start of a new year."

# ANY OTHER DAY OF THE YEAR
else 
	puts "It's not New Year's Eve yet."
end

# CALC TIME TO NEXT YEAR
new_year_sec = Time.local(tm.year + 1, 1, 1).to_i - Time.now.to_i
new_year = new_year_sec.to_s.reverse.scan(/(?:\d*\.)?\d{1,3}-?/).join(',').reverse

puts "%s seconds until the next year." % new_year
