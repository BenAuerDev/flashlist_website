// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';

import 'pages/home.dart' as c0;
import 'pages/terms.dart' as c1;
import 'pages/privacy_policy.dart' as c2;
import 'pages/imprint.dart' as c3;
import 'pages/about.dart' as c4;
import 'pages/how_to_delete.dart' as c5;
import 'components/home/feature_gallery.dart' as c6;
import 'components/cta_bar.dart' as c7;

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
    c1.TermsOfService: ClientTarget<c1.TermsOfService>('pages/terms'),
    c2.PrivacyPolicy: ClientTarget<c2.PrivacyPolicy>('pages/privacy_policy'),
    c3.Imprint: ClientTarget<c3.Imprint>('pages/imprint'),
    c4.About: ClientTarget<c4.About>('pages/about'),
    c5.HowToDelete: ClientTarget<c5.HowToDelete>('pages/how_to_delete'),
    c6.FeatureGallery: ClientTarget<c6.FeatureGallery>('components/home/feature_gallery'),
    c7.CallToActionBar: ClientTarget<c7.CallToActionBar>('components/cta_bar'),
  },
);
