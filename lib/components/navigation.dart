import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class Navigation extends StatelessComponent {
  const Navigation({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var activePath = context.binding.currentUri.path;

    final navPaths = [
      (label: 'Home', path: '/'),
      (label: 'About', path: '/about'),
      (label: 'Technologies', path: '/tech'),
    ];

    yield div(classes: 'nav-wrapper', [
      // Mobile
      img(classes: 'burger-menu-icon', src: 'images/burger_menu.svg'),
      // Desktop
      nav([
        for (var route in navPaths)
          div(classes: activePath == route.path ? 'active' : null, [
            Link(to: route.path, [text(route.label)])
          ]),
      ]),
    ]);
  }

  static get styles => [
        // Mobile (first)
        css('.nav-wrapper', [
          css('&').flexbox(
            justifyContent: JustifyContent.spaceBetween,
            alignItems: AlignItems.center,
            direction: FlexDirection.row,
          ),
          css('.burger-menu-icon', [
            css('&')
                .box(
                  width: 24.px,
                  padding: EdgeInsets.only(right: 12.px),
                )
                .text(
                  color: Colors.white,
                ),
          ]),
          css('nav').box(display: Display.none),
        ]),
        // Tablet
        StyleRule.media(query: MediaRuleQuery(minWidth: 768.px), styles: [
          css('.burger-menu-icon').box(display: Display.none),
          css('nav', [
            css('&')
                .box(
                  display: Display.flex,
                )
                .flexbox(
                  justifyContent: JustifyContent.spaceBetween,
                  alignItems: AlignItems.center,
                  direction: FlexDirection.row,
                ),
            css('a', [
              css('&')
                  .text(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    decoration:
                        const TextDecoration(line: TextDecorationLine.none),
                  )
                  .box(
                      height: 100.percent,
                      padding: EdgeInsets.symmetric(horizontal: 2.em))
                  .flexbox(alignItems: AlignItems.center),
              css('&:hover').background(color: const Color.hex('#0005')),
            ]),
            css('div.active', [
              css('&').box(position: const Position.relative()),
              css('&::before')
                  .raw({'content': '""'})
                  .box(
                    display: Display.block,
                    position: Position.absolute(
                      bottom: 0.em,
                      left: 20.px,
                      right: 20.px,
                    ),
                    radius: BorderRadius.circular(1.px),
                    height: 2.px,
                  )
                  .background(color: Colors.white)
            ])
          ]),
        ]),
        // Desktop
        StyleRule.media(query: MediaRuleQuery(minWidth: 1024.px), styles: []),
        // ...App.styles,
      ];
}
