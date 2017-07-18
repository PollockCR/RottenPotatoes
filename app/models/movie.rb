class Movie < ActiveRecord::Base
    
    def self.collect_ratings
        all.map(&:rating).uniq.sort
    end
    
end
