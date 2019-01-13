require "minitest/autorun"
require "minitest/rg"

require_relative "../my_functions"

class TddPractice < MiniTest::Test
  # Task 1: Pig Latin
  # Pig Latin is a language game where English is converted to a pretendy old language.
  # The first letter of each word in a string is moved to the end, then the letters "ay" are added.
  # Example: pigify("The die is cast") => "Hetay ieday siay astcay"

  def test_pig_latin()
    expected = "Hetay ieday siay astcay"
    actual = pigify("The die is cast")
    assert_equal(expected, actual)
  end


  # Task 2: Reduce a number
  # Take a number that is between 0 and 9999 and add its individual digits together.
  # Keep doing this until the resulting sum has only one digit.
  # Examples:
  #   24 => 2+4 => 6
  #   345 => 3+4+5 => 12 => 1+2 => 3
  #   8 => 8
  #   8412 => 8+4+1+2 => 15 => 1+5 => 6

  def test_reduce_number()
    expected = 6
    actual = reduce_number(24)
    assert_equal(expected, actual)
  end


  # Task 3: Book Orders
  # Take a hash that contains a customer's book order, like this:
  # order = {
  #   name: "John",
  #   items: [
  #     {title: "The Crow Road", author: "Ian Banks", price: 7.99, quantity: 1},
  #     {title: "Dune", author: "Frank Herbert", price: 9.99, quantity: 2},
  #     {title: "And Then There Were None", author: "Agatha Christie", price: 9.99, quantity: 2}
  #   ]
  # }
  # Your method should return a string that tells us the customer name, and their total. For example:
  # "John's total is £43.16"
  # BUT. Each unique book in the order, after the first book, should give the user a 5% discount (up to a maximum of 50%).
  # So in the hash above, the customer has bought 3 unique books, and should get a 10% discount.
  # (7.99 + 9.99 + 9.99 + 9.99 + 9.99) - 10% == 47.95 - 10% == 43.16


  def test_book_order()
    order = {
      name: "John",
      items: [
        {title: "The Crow Road", author: "Ian Banks", price: 7.99, quantity: 1},
        {title: "Dune", author: "Frank Herbert", price: 9.99, quantity: 2},
        {title: "And Then There Were None", author: "Agatha Christie", price: 9.99, quantity: 2}
      ]
    }

    expected = "John's total is £43.16"
    actual = order_total(order)
    assert_equal(expected, actual)
 end
end
