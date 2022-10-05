import 'package:flutter/widgets.dart';

class SizePageRoute extends PageRouteBuilder {
  final Widget enter;

  SizePageRoute({required this.enter})
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
                child: SizeTransition(
                  sizeFactor: animation,
                  child: SizeTransition(
                    sizeFactor: Tween<double>(begin: 1, end: 0)
                        .animate(secondaryAnimation),
                    child: child,
                  ),
                ),
              );
            });
}
