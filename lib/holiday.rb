require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  #loop
  holiday_hash[:winter].each do |k,v| v.push(supply) end 
  
  #repetititve approach
  #holiday_hash[:winter][:christmas].push(supply)
  #holiday_hash[:winter][:new_years].push(supply)
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten

end

  def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each { |k,v| 
    #season
    puts k.to_s.capitalize + ":"
    
    #holiday
    v.each do |k,v| 
      #puts "  "
      
      #supplies
      i = 0 
      s = ""
      while (i < v.length) do 
        s += v[i] 
        if i < v.length - 1
          s += ", "
        end 
        i += 1
      end 
      
      #print supplies next to holiday 
       if k.to_s.include?("_")
        puts "  " + k.to_s.split("_").map {|s| s.capitalize}.join(" ") + ": " + s
      else
        puts "  " + k.to_s.capitalize + ": " + s
      end 
    end 
  
  }
  
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq = []
  holiday_hash.select {|k,v| v.each do |k,v| 
    if v.include? "BBQ" 
      bbq.push(k) 
    end
  end }
  bbq
end







