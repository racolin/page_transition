import 'package:flutter/widgets.dart';

class RotationPageRoute extends PageRouteBuilder {
  final Widget enter;

  RotationPageRoute({required this.enter})
      : super(
            pageBuilder: (
              context,
              animation,
              secondaryAnimation,
            ) =>
                enter,
            transitionDuration: const Duration(seconds: 1),
            reverseTransitionDuration: const Duration(seconds: 1),
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              return Align(
                child: RotationTransition(
                  turns: animation,
                  child: RotationTransition(
                    turns: Tween<double>(begin: 1, end: 0)
                        .animate(secondaryAnimation),
                    child: child,
                  ),
                ),
              );
            });
}
