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
   data.each do |season_hash, contestants_array|
     contestants_array.each do |contestant|
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
