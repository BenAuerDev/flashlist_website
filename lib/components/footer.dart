import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield footer([
      div(classes: 'footer-wrapper', [
        div(classes: 'footer-links', [
          a(href: '/sitemap', [text('Sitemap')]),
          a(href: '/impressum', [text('Impressum')]),
          a(href: '/terms', [text('Terms of Service')]),
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
            .background(color: Color.hex('#616161'))
            .flexbox(justifyContent: JustifyContent.center)
            .box(width: 100.percent),
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
            color: Colors.white,
            decoration: TextDecoration(line: TextDecorationLine.none),
            align: TextAlign.center,
          ),
        ]),
        StyleRule.media(query: MediaRuleQuery(minWidth: 768.px), styles: [
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
        StyleRule.media(query: MediaRuleQuery(minWidth: 1024.px), styles: [
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
