import 'package:flashlist_website/styles.dart';
import 'package:jaspr/jaspr.dart';

@client
class CallToActionBar extends StatelessComponent {
  const CallToActionBar({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'cta-background', [
      div(classes: 'cta-bar', [
        a(
          classes: 'cta-button',
          href: 'https://github.com/benauerdev/flashlist',
          target: Target.blank,
          [
            img(classes: 'cta-button-icon', src: 'images/github.svg'),
            text('View on GitHub')
          ],
        ),
        a(
          classes: 'cta-button',
          href:
              'https://play.google.com/store/apps/details?id=com.flashlistapp',
          target: Target.blank,
          [
            img(classes: 'cta-button-icon', src: 'images/playstore.svg'),
            text('Become a Beta Tester')
          ],
        ),
      ])
    ]);
  }

  static get styles => [
        css('.cta-background')
            .background(color: accentColor)
            .box(width: 100.percent)
            .flexbox(justifyContent: JustifyContent.center),
        css('.cta-bar', [
          css('&')
              .flexbox(
                justifyContent: JustifyContent.spaceAround,
                alignItems: AlignItems.center,
                direction: FlexDirection.column,
              )
              .box(
                width: 100.percent,
                padding: EdgeInsets.symmetric(vertical: 10.px),
              ),
        ]),
        css('.cta-button')
            .text(
              color: Colors.white,
              decoration: TextDecoration(line: TextDecorationLine.none),
            )
            .background(
              color: Colors.transparent,
            )
            .flexbox(
              alignItems: AlignItems.center,
              justifyContent: JustifyContent.center,
            )
            .box(
              padding: EdgeInsets.symmetric(
                horizontal: 10.px,
                vertical: 5.px,
              ),
              margin: EdgeInsets.symmetric(vertical: 5.px),
              width: 220.px,
              radius: BorderRadius.all(Radius.circular(15.px)),
              border: Border.all(
                BorderSide.solid(
                  color: Color.hex('#ffffff'),
                  width: 1.px,
                ),
              ),
            ),
        css('.cta-button-icon').box(
          width: 20.px,
          height: 20.px,
          margin: EdgeInsets.only(right: 15.px),
        ),
        StyleRule.media(query: MediaRuleQuery(minWidth: 768.px), styles: [
          css('.cta-bar').flexbox(
            direction: FlexDirection.row,
          ),
        ]),
        StyleRule.media(query: MediaRuleQuery(minWidth: 1024.px), styles: [
          css('.cta-bar').box(width: 1024.px),
        ]),
      ];
}
