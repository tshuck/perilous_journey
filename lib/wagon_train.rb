require './lib/linked_list'
require './lib/node'
require 'pry'

class WagonTrain

  attr_reader :list, :supplies
<<<<<<< HEAD

=======
>>>>>>> 589d7596f50a0542319fc5ab9fe9cc552aba4fdd

  def initialize
    @list = LinkedList.new
  end

  def append(surname, supplies = nil)
    @list.append(surname, supplies)
  end

  def supplies
    current = list.head
    until current.next_node.nil?
      current = current.next_node

    end
    p current.supplies
  end

  def go_hunting
    a = ["squirrel", "deer", "bison"]

    output1 = "You got #{rand(5)} #{a.sample},"
    output2 = " #{rand(5)} #{a.sample}"
    output3 = " and #{rand(5)} #{a.sample}"
    output = output1 + output2 +output3
      if output.include?("s" && "2" || "3")
       output.gsub("squirrel", "squirrels")
     else
       output
      end
    end
  end
