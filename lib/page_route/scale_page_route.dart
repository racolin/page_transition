import 'package:flutter/widgets.dart';

class ScalePageRoute extends PageRouteBuilder {
  final Widget enter;

  ScalePageRoute({required this.enter})
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
                  child: ScaleTransition(
                    scale: Tween<double>(begin: 1, end: 0)
                        .animate(secondaryAnimation),
                    child: child,
                  ),
                ),
              );
            });
}
