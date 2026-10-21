# Task 3: Library Catalog System in Ruby

## Introduction

I enjoyed working with Ruby because of its human friendly syntax. Since I had no previous experience with Ruby, I approached this task step by step and learned the syntax while developing the program.

The goal was to create a library catalog system using object oriented programming (OOP). The system manages books, DVDs, and CDs, each with common properties and properties specific to its type.

I used AI assistance as a helper to understand Ruby syntax, identify errors, and clarify unfamiliar concepts. However, I wrote and developed the OOP implementation myself. The classes, constructors, inheritance relationships, methods, and library management logic were implemented by me, with AI assistance serving as a learning and debugging aid.

## 1. Learning the Basics of Ruby

I started by learning how to define classes and methods in Ruby. I learned that `class` defines a class, `def` defines a method, and `end` closes a class, method, or block.

I also learned about the `initialize` method, which works similarly to a constructor in Java and C#. Ruby calls it automatically when an object is created using `.new`.

For example:

```ruby
item = LibraryItem.new("Clean Code", "Robert C. Martin", 2008)
```

I then learned how to use instance variables, which begin with `@`, to store data belonging to an object.

## 2. Creating the Base Class

The first class I implemented was `LibraryItem`. It contains the properties shared by all library items:

* `@title`
* `@author`
* `@publication_year`

The `initialize` method assigns values to these properties when an object is created. I also implemented `display_info` to display the common information.

This class provides the foundation for the other item types and avoids defining the common properties separately in every subclass.

## 3. Implementing Inheritance

I created three subclasses: `Book`, `DVD`, and `CD`. Each inherits from `LibraryItem`.

In Ruby, inheritance is expressed using the `<` symbol. For example:

```ruby
class Book < LibraryItem
```

Each subclass has its own constructor and additional properties.

* **Book:** `@genre` and `@page_count`
* **DVD:** `@director` and `@duration_minutes`
* **CD:** `@artist` and `@number_of_tracks`

I used `super(title, author, publication_year)` inside each constructor to call the parent class constructor and initialize the common properties. Each subclass then initializes its own additional properties.

This allowed me to reuse the common implementation while keeping each type distinct.

## 4. Implementing Encapsulation

The properties are stored in instance variables, such as `@title`, `@genre`, and `@artist`.

I added `attr_reader` to the base class and the subclasses to provide public getter methods for these properties. For example, `book.title` can be used to read a book's title without directly accessing its instance variable.

I did not add setters because the program does not require external code to modify these properties. This provides a simple public interface for reading the stored information.

## 5. Implementing Method Overriding

Each subclass has its own `display_info` method.

Although the method name is the same, each implementation displays the common properties along with the properties specific to that type.

For example, a book displays its genre and page count, while a DVD displays its director and duration. A CD displays its artist and number of tracks.

I also formatted the output with headings and separate lines to make the information easier to read.

## 6. Creating the Library Class

The `Library` class manages the collection of items. I used an array called `@items` to store the objects.

The class contains three main methods:

* **`add_item(item)`** adds an item to the collection using Ruby's `<<` operator.
* **`remove_item(item)`** removes the specified item using the array's `delete` method.
* **`display_all_items`** iterates through the collection and displays each item's information.

These methods allow the library to manage different types of items in one collection.

## 7. Demonstrating Polymorphism

Polymorphism is demonstrated in the `display_all_items` method:

```ruby
@items.each do |item|
  item.display_info
end
```

The variable `item` can refer to a `Book`, `DVD`, or `CD` object. When `display_info` is called, Ruby executes the version defined by the object's class.

This means that the library does not need separate methods for displaying books, DVDs, and CDs. The same method call works for all three types, while each object displays its own specific information.

This was an important part of the task because it showed how different classes can share a common interface while providing different behavior.

## 8. Testing the Program

After implementing the classes, I created one object of each type and added them to a `Library` object.

First, I called `display_all_items` to display the complete collection. This allowed me to check that all three types were stored and displayed correctly.

Next, I removed the book using `remove_item(book)` and displayed the collection again. The second output showed that the book had been removed while the DVD and CD remained in the library.

This test demonstrated that the collection management methods worked as expected.

## 9. Learning Progress and AI Assistance

I started this task without prior experience in Ruby. I developed the program gradually, beginning with a simple class and constructor before moving on to inheritance, method overriding, encapsulation, and polymorphism.

During development, I encountered syntax errors involving constructor names and the placement of `super`. AI assistance helped me understand these errors and learn the correct Ruby syntax. I then applied the corrections and tested the program.

The implementation itself was developed by me. I made the design decisions, wrote the classes and methods, selected the additional properties, and combined the components into the final program. AI assistance was used as a learning and debugging helper, not as a replacement for my own implementation.

## Conclusion

This task gave me practical experience with Ruby and object oriented programming. I learned how to create classes and objects, reuse code through inheritance, override methods, provide controlled access to properties, and manage different object types in a single collection.

The task also helped me understand polymorphism in practice. Overall, it was a useful opportunity to learn a new language while applying OOP concepts I had studied previously.
