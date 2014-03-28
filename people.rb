class Person
	attr_accessor :name

	def initialize(name)
		@name =name
	end
	
	def greeting
		puts "Hi ,my name is #{name}"
	end

end
class Student < Person
	def learn
		puts "I get it"
	end
end

class Instruction < Person
	def teach
		puts "Everything in Ruby is an Object"
	end

end

student = Student.new("Christina")
instructor = Instruction.new("Chris")




print "#{instructor.greeting}"
instructor.teach
print "#{student.greeting}"
student.learn
#instructor.learn or student.teach will not work because encapsulation
