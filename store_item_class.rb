class Book

  attr_reader :title, :author, :length
  attr_accessor :price

  def initialize(title, author, length, price)
    @title = title
    @author = author
    @length = length
    @price = price
  end

  def print_info
    p "'#{@title}' is a book by #{@author} that has #{@length} pages and costs $#{price}."
  end

end

purchased_item = Book.new("The Andromeda Strain", "Michael Crichton", 285, 7.99)
p purchased_item

p purchased_item.title
p purchased_item.author
p purchased_item.length
p purchased_item.price
purchased_item.price = 8.99
p purchased_item.price

purchased_item.print_info