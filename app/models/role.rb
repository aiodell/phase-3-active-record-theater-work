class Role < ActiveRecord::Base
    has_many :auditions

    # return an array of names from the actors associated with the role
    def actors
        self.pluck( :actor )
    end

    # returns and array of locations from the auditions associated with this role
    def location
        self.pluck( :location )
    end

    # returns the first instance of the audition that was hired for the role
    # or returns a string 'no actor has been hired for this role
    def lead
        actors = self.auditions.where(hired: true)
        actors.exists? ? actors.first : "no actor has been hired for this role"
    end

    # returns the second instance of the audition that was hired for this
    # role or returns there is no understudy
    def understudy
        actors = self.auditions.where(hired: true)
        actors ? actors.second : "no actor has been hired for the understudy for this role"
    end
end


    # end

    # def understudy
    #     actors = self.auditions.where( hired: true).second
    #     actors ? actors : "no actor has been hired for understudy for this role"
    # end