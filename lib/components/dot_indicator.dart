import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  final bool isActive;
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 300,
      ),
      height: isActive ? 10 : 7,
      width: isActive ? 10 : 7,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive
            ? const Color(
                0xff00214e,
              )
            : const Color(
                0xff00214e,
              ).withOpacity(0.4),
      ),
    );
  }
}
