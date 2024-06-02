import 'package:flashlist_website/components/hero_banner.dart';
import 'package:flashlist_website/components/navigation.dart';
import 'package:jaspr/jaspr.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield header([
      div(classes: 'header-wrapper', [
        img(classes: 'main-logo', src: 'images/logo_horizontal_color.svg'),
        Navigation(),
      ]),
      HeroBanner(),
    ]);
  }

  static get styles => [
        css('header', [
          css('&').flexbox(
            alignItems: AlignItems.center,
            direction: FlexDirection.column,
          ),
          css('.header-wrapper')
              .box(
                width: 100.percent,
              )
              .flexbox(
                justifyContent: JustifyContent.spaceBetween,
                alignItems: AlignItems.center,
                direction: FlexDirection.row,
              ),
          css('.main-logo').box(
            width: 150.px,
            position: Position.relative(right: 20.px, bottom: 0.px),
          ),
        ]),
        StyleRule.media(query: MediaRuleQuery(minWidth: 768.px), styles: [
          css('header', [
            css('&'),
            css('.main-logo').box(
              width: 250.px,
            ),
          ]),
        ]),
        StyleRule.media(query: MediaRuleQuery(minWidth: 1024.px), styles: [
          css('header', [
            css('.header-wrapper').box(
              maxWidth: 1024.px,
              margin: EdgeInsets.symmetric(horizontal: 20.px),
            ),
            css('.main-logo').box(
              width: 250.px,
            ),
          ]),
        ]),
      ];
}
