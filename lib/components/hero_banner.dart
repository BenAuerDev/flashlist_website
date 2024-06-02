import 'package:jaspr/jaspr.dart';

class HeroBanner extends StatelessComponent {
  const HeroBanner({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([
      div(classes: 'header-image-wrapper', [
        img(classes: 'header-image', src: 'images/header-mobile.png'),
      ]),
    ]);
  }

  static get styles => [
        css('.header-image-wrapper')
            .box(
              width: 100.percent,
            )
            .flexbox(
              justifyContent: JustifyContent.center,
              alignItems: AlignItems.center,
            )
            .background(
              color: Color.hex('#2bb673'),
            ),
        css('.header-image').box(
          width: 40.percent,
          display: Display.block,
        ),
        StyleRule.media(query: MediaRuleQuery(minWidth: 768.px), styles: [
          // css('', []),
        ]),
        StyleRule.media(query: MediaRuleQuery(minWidth: 1024.px), styles: [
          // css('header', []),
        ]),
      ];
}
