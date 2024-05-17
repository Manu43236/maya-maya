import 'package:flutter/widgets.dart';
import 'package:maya_maya_architecture/base/utils/responsive_utils.dart';

class BaseResponsiveView extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;
  final double width;

  const BaseResponsiveView(
      {super.key,
      required this.largeScreen,
      required this.smallScreen,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return largeScreen;
  }
}
