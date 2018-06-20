class Book

  attr_reader :title, :author, :length
  attr_accessor :price

  def initialize(input_options)
    @title = input_options[:title]
    @author = input_options[:author]
    @length = input_options[:length]
    @price = input_options[:price]
  end

  def print_info
    p "'#{@title}' is a book by #{@author} that has #{@length} pages and costs $#{price}."
  end

end

class Used_Book < Book
  
  attr_reader :condition

  def initialize(input_options)
    super
    @condition = input_options[:condition]
  end

end

purchased_item1 = Book.new(title: "The Andromeda Strain", author: "Michael Crichton", length: 285, price: 7.99)
purchased_item2 = Book.new({:title => "fun book", :author => "person", :length => 10000, :price => 0})

p purchased_item1.title
p purchased_item1.author
p purchased_item1.length
p purchased_item1.price
purchased_item1.price = 8.99
p purchased_item1.price
purchased_item1.print_info

p purchased_item2.title
p purchased_item2.author
p purchased_item2.length
p purchased_item2.price
purchased_item2.price = 8.99
p purchased_item2.price

purchased_item2.print_info