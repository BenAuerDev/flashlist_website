import 'package:jaspr/jaspr.dart';

@client
class PrivacyPolicy extends StatelessComponent {
  const PrivacyPolicy({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      div(classes: 'content-wrapper', [
        h1([text('Privacy Policy')]),
        p([text('Last Modified: 10th of June 2024')]),
        h2([text('Introduction')]),
        p([
          text(
            'This privacy policy explains how we collect, use, and protect your personal data when you use Flashlist.',
          )
        ]),
        h2([text('1. Data Collection')]),
        p([
          text('We collect the following data:'),
          ul([
            li([
              text(
                  'Personal information (e.g., username, email address, password) for authentication purposes')
            ]),
            li([
              text(
                'List data (e.g., title, associated color, items and their order) that you create and share with other users',
              )
            ])
          ])
        ]),
        h2([text('2. Data Use')]),
        p([
          text('We use the collected data to:'),
          ul([
            li([text('Authenticate users')]),
            li([
              text(
                  'Allow users to create, share, and manage lists collaboratively')
            ])
          ])
        ]),
        h2([text('3. Data Sharing')]),
        p([
          text(
              'We do not share your personal data with third parties, except:'),
          ul([
            li([text('To comply with legal obligations')]),
            li([text('With your consent')])
          ])
        ]),
        h2([text('4. Data Security')]),
        p([
          text(
              'We take reasonable measures to protect your data from unauthorized access, loss, or misuse.')
        ]),
        h2([text('5. Data Retention')]),
        p([
          text(
              'We retain your data only as long as necessary to provide the service and fulfill the purposes outlined in this policy.')
        ]),
        h2([text('6. User Rights')]),
        p([
          text('You have the right to:'),
          ul([
            li([text('Access your personal data')]),
            li([text('Request correction or deletion of your data')])
          ])
        ]),
        h2([text('7. Changes to This Policy')]),
        p([
          text(
              'We may update this privacy policy from time to time. Changes will be posted on this page.')
        ]),
        h2([text('8. Contact Information')]),
        p([
          text(
              'If you have any questions about this privacy policy, please contact us at [your email address].')
        ])
      ]),
    ]);
  }
}
