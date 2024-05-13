<h1 align="center"> Dot Navigation Bar</h1>

<p align="center">
 
<img src="https://img.shields.io/badge/Maintained%3F-Yes-green?style=for-the-badge">
<br>
 <a href="#" target="_blank"><img alt="undefined" src="https://badgen.net/pub/flutter-platform/dot_navigation_bar"></a>
 <a href="#" target="_blank"><img alt="undefined" src="https://badgen.net/pub/sdk-version/uuid"></a>
<br>
</p>

<p> Screen Shot</p>
https://github.com/alibirkanbayram/dot_navbar/assets/ss.jpg

<p> Video </p>
https://github.com/alibirkanbayram/dot_navbar/assets/video.mp4

<h2> Introduction </h2>
The <b>dot_navbar</b> package provides a customizable and visually appealing dotted bottom/top navigation bar for Flutter developers. This package allows you to easily integrate a bottom navigation bar into your Flutter application with smooth navigation between screens.

<h2>Features</h2>
<b>Customizable Icons:</b> Easily customize icons for both active and inactive states, with support for different icons per state.
<br>
<b>Flexible Styling:</b> Adjust font size for selected and unselected items, and set a custom background color for the navigation bar.
<br>
<b>Seamless Integration:</b> Simple integration into Flutter applications, compatible with various screen sizes and resolutions.
<br>
<b>Responsive Design:</b> Automatically adjusts to screen dimensions, ensuring a responsive design.
<br>
<b>Intuitive Interaction:</b>Responsive tap handling with the onTap callback for capturing user interactions.

<h2> Installation </h2>
To use dot_navbar, add the following to your <b>pubspec.yaml</b> file:

```
dependencies:
  dot_navbar: ^0.0.1
```

Then, run:

```
flutter pub get
```

Then import the package in your dart code:

```dart
import 'package:dot_novbar/dot_navbar.dart';
```

<h2>Usage</h2>

<h4>Dot NavigationBar</h4>

<p>A customizable navigation bar .</p>
<p>Selected Icon color :selectedItemColor.</p>
<p>Unselected Icon color :unselectedItemColor.</p>
<p>IsBottom value : bottom or top.</p>

<br>

```
DotNavBar(
        dotMenuItems: SharedList.itemList,
        navbarBackgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        isBottom: true,
        isTitleVisible: true,
        dotMenuItems:[
            DotMenuItemModel(
                keyValue: 'home',
                page: Container(
                    color: Colors.red,
                ),
                icon: Icons.home,
            ),
            DotMenuItemModel(
                keyValue: 'search',
                page: Container(
                    color: Colors.blue,
                ),
                icon: Icons.search,
            ),
            DotMenuItemModel(
                keyValue: 'add',
                page: Container(
                    color: Colors.green,
                ),
                icon: Icons.add,
            ),
            DotMenuItemModel(
                keyValue: 'notifications',
                page: Container(
                    color: Colors.yellow,
                ),
                icon: Icons.notifications,
            ),
            DotMenuItemModel(
                keyValue: 'profile',
                page: Container(
                    color: Colors.purple,
                ),
                icon: Icons.person,
            ),
        ]
    ),
```

<br>

<h4>Dot Menu Item Model</h4>
A data class representing an item in the navigation bar.
<br>

```
DotMenuItemModel(
    keyValue: "Object Key Value",
    page: widgets(),
    icon: Icons.home,
)
```

<br>

<h2> Complete Implementation </h2>

```

```

<h2>Issues </h2>
If you encounter any issues or have suggestions for improvement, please visit the
<a href="https://github.com/alibirkanbayram/dot_navbar">GitHub repository </a> and submit an issue or pull request.

<h2>Developed By</h2>
<b><a href="https://www.linkedin.com/in/alibirkanbayram">Ali Birkan BAYRAM - Linkedin</a></b>
