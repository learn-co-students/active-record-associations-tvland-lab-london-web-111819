class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    # Write a method in the Actor class, #list_roles, 
    # that lists all of the characters that actor has alongside the show
    # we with
    #  that the character is in. So, for instance, 
    #  if we had an actor, Peter Dinklage, a character, Tyrion Lannister, and a show, Game of Thrones, 
    def list_roles
        Character.where(actor:self).map{|c|"#{c.name} - #{c.show.name}"}
    end
end
