require './employee'

module Actualize
  class Manager < Employee
    
    attr_reader :employees

    def initialize(input_options)
      super
      @employees = input_options[:employees]
    end

    def send_report
      puts "Sending email..."
      # use email sending library...
      puts "Email sent!"
    end

    def give_all_raises
      @employees.each do |employee|
        employee.give_annual_raise
      end
    end

    def fire_all_employees
      index = (@employees.length - 1)
      @employees.length.times do # used instead of .each method so that index can count backwards and nilClass is avoided
        @employees[index].active = false
        @employees.delete(@employees[index])
        index -= 1
      end
    end
  end
end