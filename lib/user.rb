require 'pry'

class User
    attr_accessor :email, :name
    
    @@users = []
    @@user_count = 0

    def initialize(email_to_save)
        @email = email_to_save
        @@user_count = @@user_count + 1
        @@users << email_to_save
    end

    def self.all
        puts @@users.inspect
    end

    # def self.find_by_email(email)
    #     ouech = @@users.select {|x| p x == email}
    #     return ouech
    # end
end


