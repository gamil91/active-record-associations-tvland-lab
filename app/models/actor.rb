class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

     def list_roles
        arr = []
        self.characters.each do |c|
            self.shows.each do |s|
           arr << "#{c.name} - #{s.name}"
           end
        end
        arr
     end


end