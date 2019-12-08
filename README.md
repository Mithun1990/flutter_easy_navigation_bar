## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

# easy_bottom_navigation_bar

A new Flutter widget for easy bottom navigation bar.

## Dependencies
dependencies:
  easy_bottom_navigation_bar: ^1.0.1
  
## Import the package
import 'package:easy_bottom_navigation_bar/easy_bottom_navigation_bar.dart';

## Adding widget

     bottomNavigationBar: EasyBottomNavigationBar(
          onTap: (index) {
            _currentIndex = index;
          },
          indicatorColor: Colors.white,
          selectedIndex: _currentIndex,
          items: [
            EasyNavigationBarItem(
                title: "Home", icon: Icons.home, widget: null),
            EasyNavigationBarItem(
                title: "Profile",
                icon: Icons.supervised_user_circle,
                widget: null),
            EasyNavigationBarItem(
                title: "Flight", icon: Icons.flight, widget: null)
          ],
          activeIconColor: Colors.white,
          iconColor: Colors.black26),
    );


## License

Copyright 2019 Forhad Naim

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

