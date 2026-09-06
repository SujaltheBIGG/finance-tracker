import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sure_mobile/theme/sure_theme.dart';
import 'package:sure_mobile/widgets/sure_logo.dart';

void main() {
  testWidgets('renders the Founder Finance logo at the requested size',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: SureTheme.dark,
        home: const Scaffold(body: Center(child: SureLogo(size: 40))),
      ),
    );

    final image = tester.widget<Image>(find.byType(Image));
    expect(image.width, 40);
    expect(image.height, 40);
  });
}
