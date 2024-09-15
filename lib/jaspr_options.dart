// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:flashlist_website/components/home/feature_gallery.dart' as prefix0;
import 'package:flashlist_website/components/cta_bar.dart' as prefix1;
import 'package:flashlist_website/components/navigation.dart' as prefix2;
import 'package:flashlist_website/constants/theme.dart' as prefix3;
import 'package:flashlist_website/pages/about.dart' as prefix4;
import 'package:flashlist_website/pages/home.dart' as prefix5;
import 'package:flashlist_website/pages/how_to_delete.dart' as prefix6;
import 'package:flashlist_website/pages/imprint.dart' as prefix7;
import 'package:flashlist_website/pages/privacy_policy.dart' as prefix8;
import 'package:flashlist_website/pages/terms.dart' as prefix9;

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
final defaultJasprOptions = JasprOptions(
  clients: {
    prefix1.CallToActionBar: ClientTarget<prefix1.CallToActionBar>('components/cta_bar'),
    prefix0.FeatureGallery: ClientTarget<prefix0.FeatureGallery>('components/home/feature_gallery'),
    prefix4.About: ClientTarget<prefix4.About>('pages/about'),
    prefix5.Home: ClientTarget<prefix5.Home>('pages/home'),
    prefix6.HowToDelete: ClientTarget<prefix6.HowToDelete>('pages/how_to_delete'),
    prefix7.Imprint: ClientTarget<prefix7.Imprint>('pages/imprint'),
    prefix8.PrivacyPolicy: ClientTarget<prefix8.PrivacyPolicy>('pages/privacy_policy'),
    prefix9.TermsOfService: ClientTarget<prefix9.TermsOfService>('pages/terms'),
  },
  styles: () => [
    ...prefix2.Navigation.styles,
    ...prefix3.styles,
  ],
);
