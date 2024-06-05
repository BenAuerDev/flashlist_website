// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';

import 'pages/home.dart' as c0;
import 'pages/about.dart' as c1;
import 'components/home/feature_gallery.dart' as c2;
import 'components/home/cta_bar.dart' as c3;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
const defaultJasprOptions = JasprOptions(
  targets: {
    c0.Home: ClientTarget<c0.Home>('pages/home'),
    c1.About: ClientTarget<c1.About>('pages/about'),
    c2.FeatureGallery: ClientTarget<c2.FeatureGallery>('components/home/feature_gallery'),
    c3.CallToActionBar: ClientTarget<c3.CallToActionBar>('components/home/cta_bar'),
  },
);
