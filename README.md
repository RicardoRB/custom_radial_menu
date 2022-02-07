# Custom Radial Menu
![Pub Version](https://img.shields.io:/pub/v/custom_radial_menu)

Highly customized radial menu for flutter

## Desktop

<img src="https://github.com/RicardoRB/custom_radial_menu/blob/main/screenshots/capture1.png"/>

## Mobile

<img src="https://github.com/RicardoRB/custom_radial_menu/blob/main/screenshots/capture2.png"/>

## How to use

```dart
import 'package:custom_radial_menu/custom_radial_menu.dart';

```


```dart
CustomRadialMenu(
  radius: 100,
  centerWidget: FloatingActionButton(
    child: const Icon(Icons.account_circle_outlined),
    onPressed: () {},
  ),
  children: [
    FloatingActionButton(
      child: const Icon(Icons.refresh),
      onPressed: () {},
    ),
    ElevatedButton(
      child: const Text('Hi'),
      onPressed: () {},
    ),
    const Text("Hi Radial"),
    IconButton(
      icon: const Icon(Icons.home),
      onPressed: () {},
    ),
    const FlutterLogo(),
    const Image(
      image: NetworkImage(
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
        height: 50,
    ),
  ],
);
```
