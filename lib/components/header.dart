import 'package:flashlist_website/components/navigation.dart';
import 'package:flashlist_website/constants/theme.dart';
import 'package:jaspr/jaspr.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield header([
      div(classes: 'header-wrapper', [
        a(href: '/', [
          img(classes: 'main-logo', src: 'images/logo_horizontal_color.svg'),
        ]),
        Navigation(),
      ]),
    ]);
  }

  static get styles => [
        css('header', [
          css('&')
              .flexbox(
                alignItems: AlignItems.center,
                direction: FlexDirection.column,
              )
              .box(
                border: Border.only(
                  bottom: BorderSide(
                    width: 1.px,
                    color: accentColor,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
          css('.header-wrapper')
              .box(
                width: 100.percent,
                height: 50.px,
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
        StyleRule.media(query: MediaQuery.screen(minWidth: 768.px), styles: [
          css('header', [
            css('&'),
            css('.header-wrapper').box(
              height: 75.px,
            ),
            css('.main-logo').box(
              width: 250.px,
            ),
          ]),
        ]),
        StyleRule.media(query: MediaQuery.screen(minWidth: 1024.px), styles: [
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
