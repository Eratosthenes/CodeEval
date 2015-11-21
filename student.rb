class Student
    attr_accessor :first_name, :last_name, :primary_phone_number

    def introduction
        puts "hi, i'm #{first_name} #{last_name}!"
        puts primary_phone_number
    end
end

frank = Student.new
frank.first_name = "Frank"
frank.last_name = "Joonyah"
frank.primary_phone_number = "123-234-3456"
frank.introduction
