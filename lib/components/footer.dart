import 'package:flashlist_website/constants/theme.dart';
import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield footer([
      div(classes: 'footer-wrapper', [
        div(classes: 'footer-links', [
          a(href: '/imprint', [text('Imprint')]),
          a(href: '/terms', [text('Terms of Service')]),
          a(href: '/privacy-policy', [text('Privacy Policy')]),
        ]),
        p([
          text(
            '© 2024 Flashlist. All rights reserved.',
          ),
        ])
      ]),
    ]);
  }

  static get styles => [
        css('footer')
            // .background(color: accentColor)
            .flexbox(justifyContent: JustifyContent.center)
            .box(
              width: 100.percent,
              border: Border.only(
                top: BorderSide(
                  width: 1.px,
                  color: accentColor,
                  style: BorderStyle.solid,
                ),
              ),
            )
            .text(
              color: textColor,
            ),
        css('.footer-wrapper', [
          css('&')
              .flexbox(
                justifyContent: JustifyContent.spaceBetween,
                alignItems: AlignItems.center,
                direction: FlexDirection.column,
              )
              .box(
                padding: EdgeInsets.all(16.px),
              ),
        ]),
        css('.footer-links', [
          css('&').flexbox(
              direction: FlexDirection.column,
              justifyContent: JustifyContent.center),
          css('a').text(
            color: textColor,
            decoration: TextDecoration(line: TextDecorationLine.none),
            align: TextAlign.center,
          ),
        ]),
        StyleRule.media(query: MediaQuery.screen(minWidth: 768.px), styles: [
          css('.footer-wrapper')
              .flexbox(
                direction: FlexDirection.row,
                justifyContent: JustifyContent.spaceBetween,
              )
              .box(
                width: 100.percent,
              ),
          css('.footer-links', [
            css('&').box().flexbox(direction: FlexDirection.row),
            css('a').box(margin: EdgeInsets.only(right: 16.px)),
          ]),
        ]),
        StyleRule.media(query: MediaQuery.screen(minWidth: 1024.px), styles: [
          css('.footer-wrapper').box(
              width: 1024.px, padding: EdgeInsets.symmetric(vertical: 16.px)),
          css('.footer-links')
              .flexbox(
                justifyContent: JustifyContent.spaceBetween,
                alignItems: AlignItems.center,
              )
              .box(maxWidth: 1024.px)
        ]),
      ];
}
