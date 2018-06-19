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

purchased_item = Book.new(title: "The Andromeda Strain", author: "Michael Crichton", length: 285, price: 7.99)
p purchased_item

p purchased_item.title
p purchased_item.author
p purchased_item.length
p purchased_item.price
purchased_item.price = 8.99
p purchased_item.price

purchased_item.print_info