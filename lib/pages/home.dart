import 'package:flashlist_website/components/home/hero_banner.dart';
import 'package:flashlist_website/components/cta_bar.dart';
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
        h1([text('Flashlist: Simplify Your Task World')]),
        h2([
          text('Effortlessly collect, organize and share your thoughts.'),
        ]),
        p([
          text(
              'Imagine having all your ideas, tasks, and notes in one place. With FlashList, you can effortlessly collect, organize, and share your thoughts. Whether you\'re planning a project, managing a team, or just trying to stay on top of your to-do list, we\'ve got you covered.'),
        ]),
        FeatureGallery(),
        p(
          [
            text(
              'By using FlashList, you can stay organized, focused, and in control. Try it out and see how it can simplify your task world!',
            ),
          ],
          styles: Styles.box(
            margin: EdgeInsets.only(top: 44.px),
          ),
        ),
      ]),
    ]);
  }

  static get styles => [
        css('p').text(align: TextAlign.center),
        css('h2').box(margin: EdgeInsets.only(top: 8.px, bottom: 24.px))
      ];
}
