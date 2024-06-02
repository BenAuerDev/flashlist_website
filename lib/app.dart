import 'package:flashlist_website/components/footer.dart';
import 'package:flashlist_website/components/hero_banner.dart';
import 'package:flashlist_website/components/navigation.dart';
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
          path: '/about',
          title: 'About',
          builder: (context, state) => const About(),
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
                justifyContent: JustifyContent.center,
                alignItems: AlignItems.center,
              ),
        ]),
        ...Header.styles,
        ...Navigation.styles,
        ...HeroBanner.styles,
        ...Home.styles,
        ...About.styles,
        ...Footer.styles,
      ];
}
