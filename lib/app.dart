import 'package:flashlist_website/components/footer.dart';
import 'package:flashlist_website/components/home/hero_banner.dart';
import 'package:flashlist_website/components/cta_bar.dart';
import 'package:flashlist_website/components/home/feature_gallery.dart';
import 'package:flashlist_website/components/navigation.dart';
import 'package:flashlist_website/pages/how_to_delete.dart';
import 'package:flashlist_website/pages/imprint.dart';
import 'package:flashlist_website/pages/privacy_policy.dart';
import 'package:flashlist_website/pages/terms.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/header.dart';
import 'pages/about.dart';
import 'pages/home.dart';

// A simple [StatelessComponent] with a [build] method.
class App extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'main', [
      const Header(),
      Router(routes: [
        Route(
          path: '/',
          title: 'Home',
          builder: (context, state) => const Home(),
        ),
        Route(
          path: '/about',
          title: 'About',
          builder: (context, state) => const About(),
        ),
        Route(
          path: '/imprint',
          title: 'Imprint',
          builder: (context, state) => const Imprint(),
        ),
        Route(
          path: '/terms',
          title: 'Terms of Service',
          builder: (context, state) => const TermsOfService(),
        ),
        Route(
          path: '/privacy-policy',
          title: 'Privacy Policy',
          builder: (context, state) => const PrivacyPolicy(),
        ),
        Route(
          path: '/how-to-delete-account',
          title: 'How to Delete Your Account',
          builder: (context, state) => const HowToDelete(),
        ),
      ]),
      Footer(),
    ]);
  }

  static get styles => [
        css('.main', [
          css('&').box(height: 100.vh),
          css('section').flexItem(flex: Flex(grow: 1)).flexbox(
                direction: FlexDirection.column,
                justifyContent: JustifyContent.start,
                alignItems: AlignItems.center,
              ),
        ]),
        ...Header.styles,
        ...Navigation.styles,
        ...HeroBanner.styles,
        ...CallToActionBar.styles,
        ...FeatureGallery.styles,
        ...Home.styles,
        ...About.styles,
        ...Footer.styles,
      ];
}
