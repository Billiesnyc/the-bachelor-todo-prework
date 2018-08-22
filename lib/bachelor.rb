def get_first_name_of_season_winner(data, season)
  data.each do |season_hash, contestants_array|
    if season_hash.to_s == season
      contestants_array.each do |contestant|
   if contestant["status"] == "Winner"
     return contestant["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_hash, contestants_array|
    contestants_array.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
   count = 0
   data.each do |season_hash, contestants_array|
     contestants_array.each do |contestant|
       if contestant["hometown"] == hometown
         count += 1
       end
     end
   end
   count
end

def get_occupation(data, hometown)
 data.each do |season_hash, contestants_array|
     contestants_array.each do |contestant|
       if contestant["hometown"] == hometown
         return contestant["occupation"]
       end
     end
   end
end

def get_average_age_for_season(data, season)
   age_total = 0 
   number_of_contestants = 0 
   data.each do |season_hash, contestants_array|
    if season_hash.to_s == season
      contestants_array.each do |contestant|
        number_of_contestants += 1 
        age_total += contestant["age"].to_i
      end
    end
  end
end
