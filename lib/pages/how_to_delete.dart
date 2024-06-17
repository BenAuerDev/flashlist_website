import 'package:jaspr/jaspr.dart';

@client
class HowToDelete extends StatelessComponent {
  const HowToDelete({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      div(classes: 'content-wrapper', [
        h1([text('How To Delete Your Account')]),
        p([text('1. Please open the app and navigate to the settings page.')]),
        p([
          text(
            '2. The last item in the list of settings will be "Delete Account".',
          )
        ]),
        p([
          text(
            '3. Click on this item, read the warning, and confirm your choice.',
          )
        ]),
        p([
          text(
            'Please note! Deleting your account will also remove all Flashlists and items you created. ',
          )
        ]),
        p([
          text('Thank you for trying out Flashlist! We appreciate your time!')
        ]),
      ]),
    ]);
  }
}
