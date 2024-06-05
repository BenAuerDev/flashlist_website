import 'package:flashlist_website/components/home/hero_banner.dart';
import 'package:flashlist_website/components/home/cta_bar.dart';
import 'package:flashlist_website/components/home/feature_gallery.dart';
import 'package:jaspr/jaspr.dart';

@client
class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      HeroBanner(),
      CallToActionBar(),
      div(classes: 'content-wrapper', [
        h1([text('FlashList')]),
        h2([
          text('Because communicating your ideas should be easy.'),
        ]),
        p([
          text(
            'Flashlist is a cutting-edge list management tool. Designed to be simple and intuitive, it allows you to create a list and fill it with your ideas quickly. Also Collaboration is easy like never before thanks to the ability to share lists and work together in real-time.',
          ),
        ]),
        FeatureGallery(),
      ]),
    ]);
  }

  static get styles => [
        css('p').text(align: TextAlign.center),
      ];
}
