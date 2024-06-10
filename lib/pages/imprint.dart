import 'package:jaspr/jaspr.dart';

@client
class Imprint extends StatelessComponent {
  const Imprint({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      div(classes: 'content-wrapper', [
        h1([text('Imprint')]),
        p([text('Name: Benjamin Auer')]),
        p([text('Address: Maanderweg 31L, 6711 NC Ede, Netherlands')]),
        p([text('Email: ben@flashlistapp.com')]),
        p([text('Phone: +34 6 16 08 45 66')]),
        h2([text('Disclaimer')]),
        p([
          text(
              'The content provided in this app is for general information purposes only. Benjamin Auer assumes no liability for the accuracy, completeness, or timeliness of the information')
        ]),
      ]),
    ]);
  }
}
