import 'package:jaspr/jaspr.dart';

class HeroBanner extends StatelessComponent {
  const HeroBanner({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'header', [
      div(classes: 'header-image-wrapper', [
        img(classes: 'header-image', src: 'images/phone-mockup.png'),
      ]),
    ]);
  }

  static get styles => [
        css('.header').box(width: 100.percent),
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
          maxWidth: 450.px,
          maxHeight: 600.px,
          display: Display.block,
        ),
        StyleRule.media(query: MediaQuery.screen(minWidth: 768.px), styles: [
          css('.header-image').box(
            width: 450.px,
          ),
        ]),
        StyleRule.media(query: MediaQuery.screen(minWidth: 1024.px), styles: [
          // css('header', []),
        ]),
      ];
}
