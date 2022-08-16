class Role < ActiveRecord::Base

    has_many :auditions

    def auditions
        
    end
    def actors
 
    end

    def locations

    end

    def lead
        if hired == true
            self.audition.first
        else
            "no actor has been hired for this role"
        end
    end

    def understudy
        if hired  == true
            self.audition.second
        else
            "no actor has been hired for understory for this role"
        end
    end
end