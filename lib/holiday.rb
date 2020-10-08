require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:spring][:memorial_day][0].to_s
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # let(:holiday_supplies) {
  #   {
  #     :winter => {
  #       :christmas => ["Lights", "Wreath"],
  #       :new_years => ["Party Hats"]
  #     },
  #     :summer => {
  #       :fourth_of_july => ["Fireworks", "BBQ"]
  #     },
  #     :fall => {
  #       :thanksgiving => ["Turkey"]
  #     },
  #     :spring => {
  #       :memorial_day => ["BBQ", "Watermelon"] #MH: Added "Watermelon"
  #     }
  #   }
  # }
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].map do |holiday, supply|
    winter_supplies << holiday[supply]
  end
  winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  def all_winter_holiday_supplies(holiday_hash)
    winter_supplies = []
    holiday_hash.map do |season, holidays|
      puts "#{season.capitalize}:"
      holidays.map do |holiday, supplies|
        puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
      end
    end
  end

def all_holidays_with_bbq(holiday_hash)
  def all_holidays_with_bbq(holiday_hash)
    holiday_hash.map do |season, holidays|
      holidays.map do |holiday, supplies|
        holiday if supplies.include?("BBQ")
      end
    end.flatten.compact
  end
