import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/sizes.dart';

class HoverAnimation extends StatefulWidget {
  final Widget Function(bool isHovered) builder;
  const HoverAnimation({super.key, required this.builder});

  @override
  State<HoverAnimation> createState() => _HoverAnimationState();
}

class _HoverAnimationState extends State<HoverAnimation> {
  final nonHover = Matrix4.identity();
  final onHover = Matrix4.identity()..translate(0, -3, 0);
  bool hovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => mouseEnter(true),
      onExit: (_) => mouseEnter(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: WebSize.s200.toInt()),
        transform: hovering ? onHover : nonHover,
        child: widget.builder(hovering),
      ),
    );
  }

  mouseEnter(bool hoveringCursor) {
    setState(() {
      hovering = hoveringCursor;
    });
  }
}
