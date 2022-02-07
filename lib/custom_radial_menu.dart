library custom_radial_menu;

import 'dart:math' as math;

import 'package:flutter/widgets.dart';

/// A widget that create a radial menu with the given children.
class CustomRadialMenu extends StatelessWidget {
  const CustomRadialMenu({
    Key? key,
    required this.children,
    this.centerWidget,
    required this.radius,
  }) : super(key: key);

  /// A list of widget for the radial menu
  final List<Widget> children;

  /// Optional widget in the center of the radial menu
  final Widget? centerWidget;

  /// Radius distance between each children
  final double radius;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _radialButtons =
        children.asMap().entries.map<Widget>((entry) {
      final widget = entry.value;
      final index = entry.key;
      return _WrapRadialButton(
        parent: widget,
        transform: _calculateRadialTransform(
          children.length,
          index,
          radius: radius,
        ),
      );
    }).toList();

    _radialButtons.add(Align(
      alignment: Alignment.center,
      child: centerWidget ?? Container(),
    ));

    return Stack(
      alignment: Alignment.center,
      children: _radialButtons,
    );
  }

  Matrix4 _calculateRadialTransform(
    final int menuLength,
    final int index, {
    final radius,
  }) {
    final theta = 2 * math.pi / menuLength;
    final currentAngle = index * theta;
    final transform = Matrix4.identity()
      ..translate(
        radius * math.cos(currentAngle),
        radius * math.sin(currentAngle),
      );
    return transform;
  }
}

class _WrapRadialButton extends StatefulWidget {
  const _WrapRadialButton({
    Key? key,
    required this.parent,
    required this.transform,
  }) : super(key: key);

  final Widget parent;
  final Matrix4 transform;

  @override
  _WrapRadialButtonState createState() => _WrapRadialButtonState();
}

class _WrapRadialButtonState extends State<_WrapRadialButton> {
  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: widget.transform,
      child: widget.parent,
    );
  }
}
