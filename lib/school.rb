# code here!
require 'pry'
class School
  attr_accessor :roster, :name
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
    # @roster[grade] = []
    # @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    output = {}
      @roster.each do |grade, student_array|
        output[grade] = student_array.sort_by {|name| name.downcase}
      end
    output
  end
end
