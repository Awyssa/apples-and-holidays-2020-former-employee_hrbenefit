let(:holiday_supplies) {
  {
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
      :memorial_day => ["BBQ", "Watermelon"] #MH: Added "Watermelon"
    }
  }
}


def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].map do |holiday, supply|
    winter_supplies << holiday[supply]
  end
  puts winter_supplies
end
