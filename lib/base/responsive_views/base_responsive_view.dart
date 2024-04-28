import 'package:flutter/widgets.dart';
import 'package:maya_maya_architecture/base/utils/responsive_utils.dart';

class BaseResponsiveView extends StatelessWidget {
  final Widget largeScreen;
  final Widget smallScreen;

  const BaseResponsiveView({
    super.key,
    required this.largeScreen,
    required this.smallScreen,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      double width = constrains.maxWidth;

      if (width >= MEDIUM_SCREEN_SIZE) {
        return largeScreen;
      } else {
        return smallScreen ?? largeScreen;
      }
    });
  }
}
