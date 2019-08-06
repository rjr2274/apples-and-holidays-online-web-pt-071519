require 'pry'

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

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |day, items|
        items << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |day, items|
        items << supply
      end
    end
  end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
      holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  winter_supplies << holiday_hash[:winter][:christmas]
  winter_supplies << holiday_hash[:winter][:new_years]
  winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    current_holiday = []
    current_supplies = []
    current_season = season.to_s.capitalize
    holidays.each do |holiday, supplies|
      binding.pry
      current_holiday = holiday.to_s.capitalize
      if current_holiday.include?("_")
        current_holiday.sub!("_", " ")
        if current_holiday.include?("_")
          current_holiday.sub!("_", " ")
        end
      end
      if current_holiday.include?(" ")
        new_word = []
        current_holiday.split(" ").each do |holiday|
          new_word << holiday.capitalize
        end
        new_word = new_word.join(" ")
        current_holiday = new_word
      end
      current_supplies = supplies.join(" ")
    end
    puts "#{current_season}:"
    puts "#{  current_holiday}: #{current_supplies}"
  end
end



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end
