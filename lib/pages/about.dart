import 'package:flashlist_website/components/cta_bar.dart';
import 'package:jaspr/jaspr.dart';

@client
class About extends StatelessComponent {
  const About({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      div(classes: 'content-wrapper', [
        h1([text('A Better Way to Get Things Done')]),
        p([
          text(
            'Hi, my name is Ben. I\'m a Software Developer from Austria living in the Netherlands, and when I\'m not coding, you can find me cooking with friends or trying to improve my latte-art (hobby barista). One challenge I\'ve faced when cooking with larger groups is managing shopping lists effectively. Using WhatsApp for shopping lists often leads to confusion, as items can\'t be updated when purchased, and important information gets lost in group chatter.',
          ),
        ]),
        p([
          text(
            'This is why I decided to build Flashlist, to have an app where all my lists like todo, shopping, brainstorming and ideas are in one place. And most importantly it is super easy to add other users as editors and provide real-time updates to all devices. ',
          ),
        ]),
      ]),
      CallToActionBar(),
      div(classes: 'content-wrapper', [
        div(classes: 'app-screens-gallery', [
          img(classes: 'app-screen-item', src: 'images/app-screens/01.png'),
          img(classes: 'app-screen-item', src: 'images/app-screens/02.png'),
          img(classes: 'app-screen-item', src: 'images/app-screens/03.png'),
          img(classes: 'app-screen-item', src: 'images/app-screens/04.png'),
          img(classes: 'app-screen-item', src: 'images/app-screens/05.png'),
        ])
      ]),
      div(classes: 'bottom-cta', [
        CallToActionBar(),
      ])
    ]);
  }

  static get styles => [
        // css('.app-screens-gallery').flexbox(
        //   direction: FlexDirection.column,
        // ),
        css('.bottom-cta').box(width: 100.percent),

        css('.app-screen-item').box(
          width: 100.percent,
          margin: EdgeInsets.only(bottom: 16.px),
        ),

        StyleRule.media(query: MediaQuery.screen(minWidth: 768.px), styles: [
          css('.bottom-cta').box(display: Display.none),
          css('.app-screens-gallery').flexbox(
            justifyContent: JustifyContent.spaceBetween,
          ),
          css('.app-screen-item').box(
            width: 19.percent,
            margin: EdgeInsets.zero,
          ),
        ]),
      ];
}
