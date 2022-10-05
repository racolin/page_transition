import 'package:flutter/widgets.dart';

class RocalePageRoute extends PageRouteBuilder {
  final Widget enter;

  RocalePageRoute({required this.enter})
      : super(
            pageBuilder: (
              context,
              animation,
              secondaryAnimation,
            ) =>
                enter,
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              return Align(
                child: ScaleTransition(
                  scale: animation,
                  child: RotationTransition(
                    turns: animation,
                    child: ScaleTransition(
                      scale: Tween<double>(begin: 1, end: 0)
                          .animate(secondaryAnimation),
                      child: RotationTransition(
                          turns: Tween<double>(begin: 1, end: 0)
                              .animate(secondaryAnimation),
                          child: child),
                    ),
                  ),
                ),
              );
            });
}
