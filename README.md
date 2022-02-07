# Custom Radial Menu
![Pub Version](https://img.shields.io:/pub/v/custom_radial_menu)

Highly customized radial menu for flutter

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

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
