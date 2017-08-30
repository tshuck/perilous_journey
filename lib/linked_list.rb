require 'pry'
require './lib/node'

class LinkedList

  attr_reader :count, :head

  def initialize
    @head = nil
    @count = 0
  end

<<<<<<< HEAD
  def append(data, supplies = nil)
=======
  def append(data,supplies = {})
>>>>>>> 589d7596f50a0542319fc5ab9fe9cc552aba4fdd
    current = @head
    @count +=1
    if @head == nil
      @head = Node.new(data, supplies)
    else
<<<<<<< HEAD
      append_until_loop(current,data,supplies)
=======
      until current.next_node.nil?
        current = current.next_node
      end
      current.next_node = Node.new(data, supplies)
>>>>>>> 589d7596f50a0542319fc5ab9fe9cc552aba4fdd
    end
  end

  def append_until_loop(current, data, supplies)
    until current.next_node.nil?
      current = current.next_node
    end
    current.next_node = Node.new(data, supplies)
  end

  def to_string
    current = @head
    string = ""
    string << "The #{current.surname} family"
    loop_for_string_method(current,string)
  end

<<<<<<< HEAD
  def loop_for_string_method(current,string)
    while current.next_node != nil
      current = current.next_node
      string << ", followed by the #{current.surname} family"
=======
  def create_string(current, element)
    string = "The #{current.surname} family"
    if element > 1
      until element == 1
        element -= 1
        current = current.next_node
        string << ", followed by the #{current.surname} family"
      end
>>>>>>> 589d7596f50a0542319fc5ab9fe9cc552aba4fdd
    end
    string
  end

<<<<<<< HEAD
  def prepend(data, supplies = nil)
    @count += 1
    if @head.nil?
        @head = Node.new(data, supplies)
    else
      old_head = @head
      @head = Node.new(data, supplies)
=======
  def prepend(data, supplies = {})
    @count += 1
    if @head.nil?
        @head = Node.new(data,supplies)
    else
      old_head = @head
      @head = Node.new(data,supplies)
>>>>>>> 589d7596f50a0542319fc5ab9fe9cc552aba4fdd
      @head.next_node = old_head
    end
  end

<<<<<<< HEAD
  def insert(position, data, supplies = nil)
    return this_doesnt_exist if position > @count
    if @head.nil?
      @head = insert_node
    else
      node_count = 1
      current = @head
      find_position_for_insert(position, node_count, current, data, supplies = nil)
    end
  end

  def find_position_for_insert(position, node_count, current, data, supplies = nil)
  insert_node = Node.new(data, supplies)
    until node_count == position
      node_count += 1
      current = current.next_node
    end
    @count += 1
    insert_node.next_node = current.next_node
    current.next_node = insert_node
  end

  def this_doesnt_exist
    "You can't do this"
=======
  def insert(position, data, supplies = {})
    insert_node = Node.new(data,supplies)
      if @head.nil?
        @head = insert_node
      else
        count = 1
        current = @head
        until count == position
          count += 1
          current = current.next_node
        end
        @count += 1
        insert_node.next_node = current.next_node
        current.next_node = insert_node
      end
>>>>>>> 589d7596f50a0542319fc5ab9fe9cc552aba4fdd
  end

  def find(position, element)
    return this_doesnt_exist if position > @count || element > count
    node_count = 0
    current = @head
    traverse_through_list_for_find(node_count, current, position, element)
  end

  def traverse_through_list_for_find(node_count, current, position, element)
    until node_count == position
      node_count += 1
      current = current.next_node
    end
    create_string(current, element)
  end

  def create_string(current, element)
    string = "The #{current.surname} family"
    if element > 1
      until element == 1
        element -= 1
        current = current.next_node
        string << ", followed by the #{current.surname} family"
      end
    end
    string
  end

  def includes?(data)
    current_node = @head
    traverse_through_list_for_includes?(data, current_node)
  end

  def traverse_through_list_for_includes?(data, current_node)
    until current_node == nil
      if current_node.surname == data
        return true
      else
        current_node = current_node.next_node
      end
    end
    false
  end

  def pop
    current = @head
      until current.next_node.next_node.nil?
        current = current.next_node
      end
    data = current.next_node.surname
    current.next_node = nil
    string = "The #{data} family has died of dysentery"
  end

  def tail
    current = @head
      until current.next_node.nil? || current.next_node == @head
        current = current.next_node
      end
      current.next_node = @head
      current
  end

end
