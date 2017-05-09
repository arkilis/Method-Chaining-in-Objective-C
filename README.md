# Method-Chaining-in-Objective-C
A project with two ways showing how to create chain methods in objective-c

----

This project illustrates how to create chaining methods in Objective-C. When I used the [Masonry](https://github.com/SnapKit/Masonry), I was shocked by author's thoughts on bring `Functional Programming` to objective-c, which present clean and concise code to all developers. Method Chaining is simple but powerful, which has three key points, everyone can create his/her own chaining method after knowing this:

1. Methods can be called consecutively.
2. Each of the metod return the same type
3. Special in Objective-C, as which only allows to use sqaure brackets to call methods. parathesis is used for block.


----
## Code

#### Method 1:

Thanks Kangzubin's tutorial and idea, method 1 is common method that many developer can come up with.
[](https://kangzubin.com/objective-c-chainable-syntax/index.html)


```objc

CalculateChain *calc = [[CalculateChain alloc] init];
calc.add(10).minus(5).multiply(100).divide(2);
NSLog(@"results: %f", calc.result);
    
```

#### Method 2:

Method 1 is similar to the one used in `Masonry`. However, an instance must be created every time you call those chaining methods. So why not use `categroy` (If you don't know how, go have a check at [Swift Extension and Objective-C category](http://www.arkilis.me/?p=361)).

With `categroy` in hand, all the `NSNumber` type value can call those chaining methods straight away.

```objc

NSNumber *num = @0.0;
NSLog(@"results: %@", num.add(10).minus(5).multiply(100).divide(2));

```

----
## To Do:

* Method Chaining in Swift


----
## Reference

* [Masonry](https://github.com/SnapKit/Masonry)
* [Swift Extension and Objective-C category](http://www.arkilis.me/?p=361)
* [https://kangzubin.com/objective-c-chainable-syntax/index.html]https://kangzubin.com/objective-c-chainable-syntax/index.html

