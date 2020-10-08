holiday_hash = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}


def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash.map do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holidays, supplies|
      puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
  end
end










# def all_supplies_in_holidays(holiday_hash)
#   holiday_hash.each do |season, holidays|
#     puts "#{season.capitalize}:"
#     holidays.each do |holiday, supplies|
#       puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
#     end
#   end
# end
