import 'package:jaspr/jaspr.dart';

@client
class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    div(classes: 'feature-item', [
      h3([text('test')])
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
