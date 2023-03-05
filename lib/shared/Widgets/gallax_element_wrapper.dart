import 'package:flutter/material.dart';
import 'package:gallax/shared/Widgets/gallax_element.dart';

class GallaxElementWrapper extends StatelessWidget {
  const GallaxElementWrapper({
    Key? key,
    required this.child,
    required this.scrollPositionSteam,
  }) : super(key: key);

  final GallaxElement child;
  final Stream<double>? scrollPositionSteam;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
      stream: scrollPositionSteam,
      builder: (context, snapshot) => Positioned(
        top: -1 * (snapshot.data ?? 0.0),
        child: child,
      ),
    );
  }
}
