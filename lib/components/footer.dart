import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield footer([
      div(classes: 'footer-wrapper', [
        a(href: '/terms', [text('Terms of Service')]),
        a(href: '/impressum', [text('Impressum')]),
        a(href: '/sitemap', [text('Sitemap')]),
        p([
          text(
            '© 2024 Flashlist. All rights reserved.',
          ),
        ]),
      ])
    ]);
  }

  static get styles => [
        css('footer', [
          css('&').flexbox(justifyContent: JustifyContent.center),
        ]),
        css('.footer-wrapper').box(
          padding: EdgeInsets.all(16.px),
        ),
        StyleRule.media(query: MediaRuleQuery(minWidth: 768.px), styles: [
          css('.footer-wrapper').box(
            padding: EdgeInsets.all(32.px),
          ),
        ]),
        StyleRule.media(query: MediaRuleQuery(minWidth: 1024.px), styles: [
          css('.footer-wrapper').box(
            width: 1024.px,
          ),
        ]),
      ];
}
