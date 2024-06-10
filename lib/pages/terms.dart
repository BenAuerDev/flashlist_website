import 'package:jaspr/jaspr.dart';

@client
class TermsOfService extends StatelessComponent {
  const TermsOfService({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      div(
          classes: 'content-wrapper',
          styles: Styles.text(align: TextAlign.start),
          [
            h1([text('Terms of Service')]),
            p([text('Last Modified: 10th of June 2024')]),
            h2([text('TL;DR')]),
            p([
              text(
                'Don\'t be inappropriate, don\'t spam, don\'t break the law, and don\'t be a jerk.',
              )
            ]),
            h2([text('Flashlist Terms of Service')]),
            h3([text('1. Acceptance of Terms')]),
            p([
              text(
                  'By using Flashlist, you agree to these Terms of Service. If you do not agree, do not use the app.')
            ]),
            h3([text('2. Use of the App')]),
            p([
              text(
                  'Flashlist is free to use. You agree to use the app for lawful purposes and not to engage in any activity that interferes with or disrupts the app.')
            ]),
            h3([text('3. Intellectual Property')]),
            p([
              text(
                  'All content and materials in Flashlist, including text, graphics, and logos, are owned by Benjamin Auer and are protected by copyright laws.')
            ]),
            h3([text('4. User Conduct')]),
            p([
              text(
                  'You agree not to use Flashlist to post or transmit any content that is inappropriate, offensive, or illegal.')
            ]),
            h3([text('5. Limitation of Liability')]),
            p([
              text(
                  'Flashlist is provided "as is" without warranties of any kind. Benjamin Auer is not liable for any damages resulting from the use of the app.')
            ]),
            h3([text('6. Changes to Terms')]),
            p([
              text(
                  'We may update these terms from time to time. Changes will be posted on this page. Your continued use of the app signifies your acceptance of the new terms.')
            ]),
            h3([text('7. Contact Information')]),
            p([
              text(
                'If you have any questions about these Terms, please contact us at ben@flashlistapp.com.',
              )
            ])
          ]),
    ]);
  }
}
