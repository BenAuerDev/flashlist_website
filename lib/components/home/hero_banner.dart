import 'package:jaspr/jaspr.dart';

class HeroBanner extends StatelessComponent {
  const HeroBanner({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'header', [
      div(classes: 'header-image-wrapper', [
        img(classes: 'header-image', src: 'images/header-mobile.png'),
      ]),
    ]);
  }

  static get styles => [
        css('.header')
            // .background(
            //   color: Color.hex('#2bb673'),
            // )
            .box(width: 100.percent),
        css('.header-image-wrapper')
            .box(
              width: 100.percent,
              maxHeight: 80.vh,
            )
            .background(
              color: Color.hex('#2bb673'),
            )
            .flexbox(
              justifyContent: JustifyContent.center,
            ),
        css('.header-image').box(
          width: 100.percent,
          maxWidth: 430.px,
          maxHeight: 540.px,
          display: Display.block,
        ),
        StyleRule.media(query: MediaRuleQuery(minWidth: 768.px), styles: [
          css('.header-image').box(
            width: 307.px,
          ),
        ]),
        StyleRule.media(query: MediaRuleQuery(minWidth: 1024.px), styles: [
          // css('header', []),
        ]),
      ];
}
