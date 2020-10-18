class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        arr = []
        self.actors.each do |a|
        arr << "#{a.first_name} #{a.last_name}"
        end
        arr
    end




end