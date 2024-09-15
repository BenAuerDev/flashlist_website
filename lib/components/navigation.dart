import 'package:flashlist_website/constants/theme.dart';
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
    ];

    yield div(classes: 'nav-wrapper', [
      input(
          type: InputType.checkbox,
          classes: 'burger-menu-button',
          id: 'burger-menu-button-checkbox',
          []),
      // Mobile
      nav(id: 'burger-menu-items', [
        for (var route in navPaths)
          div(
              classes: activePath == route.path ? 'active' : null,
              [Link(to: route.path, child: text(route.label))]),
      ]),
      label(
        htmlFor: 'burger-menu-button-checkbox',
        [
          img(classes: 'burger-menu-icon', src: 'images/burger_menu.svg'),
        ],
      ),

      // Desktop
      nav(classes: 'desktop-nav', [
        for (var route in navPaths)
          div(classes: activePath == route.path ? 'active' : null, [
            Link(to: route.path, child: text(route.label)),
          ]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
        // Mobile (first)
        css('.nav-wrapper', [
          css('&').flexbox(
            justifyContent: JustifyContent.spaceBetween,
            alignItems: AlignItems.center,
            direction: FlexDirection.row,
          ),
        ]),
        css('#burger-menu-button-checkbox', [
          css('&').box(display: Display.none),
          css('&:checked ~ #burger-menu-items')
              .box(
                display: Display.block,
                padding: EdgeInsets.all(8.px),
                position: Position.absolute(top: 49.px, right: 0.px),
              )
              .background(color: backgroundColor)
              .flexbox(
                direction: FlexDirection.column,
                justifyContent: JustifyContent.spaceBetween,
                alignItems: AlignItems.center,
              ),
        ]),
        css('.burger-menu-button').box(border: Border.unset),
        css('#burger-menu-items', [
          css('&').box(display: Display.none),
          css('& > div').box(
            padding: EdgeInsets.symmetric(vertical: 8.px),
          ),
          css('& > a')
              .text(decoration: TextDecoration(line: TextDecorationLine.none))
        ]),
        css('.burger-menu-icon', [
          css('&')
              .box(
                width: 24.px,
                padding: EdgeInsets.only(right: 12.px),
              )
              .text(
                color: textColor,
              ),
        ]),

        css('a').text(
          color: textColor,
          fontWeight: FontWeight.w700,
          decoration: const TextDecoration(line: TextDecorationLine.none),
        ),

        css('.desktop-nav')
            .flexbox(
              justifyContent: JustifyContent.spaceBetween,
              alignItems: AlignItems.center,
              direction: FlexDirection.row,
            )
            .box(
              margin: EdgeInsets.only(right: 2.em),
              display: Display.none,
            ),
        // Tablet
        StyleRule.media(query: MediaQuery.screen(minWidth: 768.px), styles: [
          css('.burger-menu-icon').box(display: Display.none),
          css('.desktop-nav', [
            css('&').box(display: Display.flex).flexbox(
                  justifyContent: JustifyContent.spaceBetween,
                  alignItems: AlignItems.center,
                  direction: FlexDirection.row,
                ),
            css('a', [
              css('&')
                  .box(
                      height: 100.percent,
                      padding: EdgeInsets.symmetric(horizontal: 16.px))
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
                      top: 20.px,
                      left: 20.px,
                      right: 20.px,
                    ),
                    radius: BorderRadius.circular(1.px),
                    height: 2.px,
                  )
                  .background(color: textColor)
            ])
          ]),
        ]),
        // Desktop
        StyleRule.media(
            query: MediaQuery.screen(minWidth: 1024.px), styles: []),
        // ...App.styles,
      ];
}
