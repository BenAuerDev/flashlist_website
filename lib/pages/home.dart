import 'package:jaspr/jaspr.dart';

@client
class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      div(classes: 'content-wrapper', [
        h1([text('Flashlist')]),
        h2([
          text('Because collaboration should be easy'),
        ]),
        p([
          text(
            'Flashlist is a cutting-edge list management tool designed to streamline your productivity. With its intuitive interface and powerful features, Flashlist makes it easy to organize, track, and complete tasks, helping you stay on top of your work and achieve your goals.',
          ),
        ]),
        div(classes: 'feature-item', [
          h3([text('test')])
        ]),
      ]),
    ]);
  }

  static get styles => [
        css('.feature-item')
            .background(
              color: Color.hex('#616161'),
            )
            .flexbox(
              direction: FlexDirection.column,
              justifyContent: JustifyContent.center,
              alignItems: AlignItems.center,
            )
            .box(
              width: 100.percent,
              height: 100.px,
            ),
      ];
}
