# Task 2: Static and Dynamic Binding in C#

## Introduction

The goal of this task was to understand the difference between static and dynamic binding in object oriented programming using C#. I used a simple example involving musical instruments to explore how method calls behave when inheritance is involved.

The program contains a parent class called `Instrument` and a child class called `Piano`. Both classes define methods with the same names, but the methods are declared differently to demonstrate method hiding and method overriding.

## Implementation

### 1. Creating the classes

The `Instrument` class is the parent class, and the `Piano` class inherits from it. The `Program` class contains the `Main()` method, which is the entry point of the application.

The `Instrument` class has two methods:

* `Play()`, declared with the `virtual` keyword to allow overriding.
* `PlayStatic()`, an ordinary nonvirtual method used to demonstrate method hiding.

The `Piano` class provides its own implementation of `Play()` using `override` and hides the inherited `PlayStatic()` method using `new`.

### 2. Understanding the console output step by step

The program produces five lines of output. Each line corresponds to a specific statement in the `Main()` method.

**Line 1: Welcome message**

The first statement prints the welcome message:

```csharp
Console.WriteLine("Welcome to the Music World!");
```

This statement executes directly and prints the message to the console.

Output:

```text
Welcome to the Music World!
```

**Line 2: Calling `instrument.Play()`**

First, the program creates an `Instrument` object:

```csharp
Instrument instrument = new Instrument();
instrument.Play();
```

The variable `instrument` has type `Instrument` and refers to an actual `Instrument` object. When `Play()` is called, the `Instrument.Play()` implementation executes and prints the general instrument message.

Output:

```text
The instrument is playing.
```

**Line 3: Calling `instrument2.PlayStatic()`**

Next, the program creates an `Instrument` reference that points to a `Piano` object:

```csharp
Instrument instrument2 = new Piano();
instrument2.PlayStatic();
```

Although the actual object is a `Piano`, the reference type is `Instrument`. Since `PlayStatic()` is a nonvirtual method and the `Piano` version hides the parent method using `new`, the call through this reference selects `Instrument.PlayStatic()`.

Output:

```text
The instrument is playing.
```

This demonstrates method hiding and static method selection.

**Line 4: Calling `instrument2.Play()`**

The next statement uses the same reference and the same object:

```csharp
instrument2.Play();
```

However, `Play()` is declared as `virtual` in `Instrument` and overridden in `Piano`. The runtime therefore selects the overridden method according to the actual object's type, which is `Piano`.

Output:

```text
The piano is playing beautiful notes.
```

This demonstrates dynamic binding.

**Line 5: Calling `piano.Play()`**

Finally, the program creates a variable whose type is `Piano` and calls its `Play()` method:

```csharp
Piano piano = new Piano();
piano.Play();
```

The actual object and the reference type are both `Piano`, so the overridden `Piano.Play()` implementation executes.

Output:

```text
The piano is playing beautiful notes.
```

### 3. Complete program output

When the program runs, the console displays:

```text
Welcome to the Music World!
The instrument is playing.
The instrument is playing.
The piano is playing beautiful notes.
The piano is playing beautiful notes.
```

## Conclusion

This experiment helped me understand how method hiding differs from method overriding in C#.

Using `new` hides an inherited method. For an ordinary nonvirtual method, the reference type determines which implementation is selected. Using `virtual` and `override` enables dynamic dispatch, where the actual object's type determines which implementation executes at runtime.

The clearest comparison appears in lines 3 and 4. Both method calls use the same `Instrument` reference pointing to a `Piano` object, but they produce different results because the methods are declared differently.

Through this exercise, I learned how inheritance, method hiding, and method overriding affect method selection in C#.
