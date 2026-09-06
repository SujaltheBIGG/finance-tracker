import 'package:flutter/widgets.dart';
/// The Founder Finance logo.
class SureLogo extends StatelessWidget {
  const SureLogo({super.key, this.size = 36});

  /// Square edge length in logical pixels.
  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/founder-finance-logo.png',
      width: size,
      height: size,
      fit: BoxFit.cover,
    );
  }
}
