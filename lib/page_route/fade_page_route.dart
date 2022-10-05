import 'package:flutter/widgets.dart';

class FadePageRoute extends PageRouteBuilder {
  final Widget enter;

  FadePageRoute({required this.enter})
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
                child: FadeTransition(
                  opacity: animation,
                  child: FadeTransition(
                    opacity: Tween<double>(begin: 1, end: 0)
                        .animate(secondaryAnimation),
                    child: child,
                  ),
                ),
              );
            });
}
