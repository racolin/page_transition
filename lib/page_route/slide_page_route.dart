import 'package:flutter/widgets.dart';

class SlidePageRoute extends PageRouteBuilder {
  final Widget enter;

  SlidePageRoute({required this.enter})
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
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(-1, 0),
                    end: Offset.zero,
                  ).animate(animation),
                  child: SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(0, 0),
                      end: const Offset(1, 0),
                    ).animate(secondaryAnimation),
                    child: child,
                  ),
                ),
              );
            });
}
