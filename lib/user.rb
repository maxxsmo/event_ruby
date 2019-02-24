
class User
    attr_accessor :email, :name
    @@user_all = []
    

    def initialize(email_to_update, name_to_update)
        @email = email_to_update
        @name = name_to_update
        @@user_all << email 
    end


    def self.all 
            return @@user_all
    end

    # permet de trouver l'user grace à son email.
    # def self.find_by_email(email)
    #     *****ici tape ton code *****
    # end



    # def self.find_by_email(email)
    #     @name = email
    # end

    
end





