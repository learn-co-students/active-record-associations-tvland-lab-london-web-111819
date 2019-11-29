class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show

    def say_that_thing_you_say
        # Character.where(actor:self).map{|c|"#{c.name} - #{c.show.name}"}
        "#{self.name} always says: #{self.catchphrase}" 
    end
end