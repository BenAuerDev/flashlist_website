import 'package:flashlist_website/constants/theme.dart';
import 'package:jaspr/server.dart';

import 'app.dart';
import 'jaspr_options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultJasprOptions,
  );

  runApp(Document(
    title: 'Flashlist - Simplify your Task World!',
    styles: styles,
    body: App(),
  ));
}
