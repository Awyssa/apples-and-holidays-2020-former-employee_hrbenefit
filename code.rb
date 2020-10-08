def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].map do |holiday, supply|
    winter_supplies << holiday[supply]
  end
  winter_supplies
end
