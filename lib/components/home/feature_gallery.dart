import 'package:flashlist_website/styles.dart';
import 'package:jaspr/jaspr.dart';

@client
class FeatureGallery extends StatelessComponent {
  const FeatureGallery({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'feature-gallery', [
      div(classes: 'feature-item', [
        img(
          src: '/images/flashlist_plusicon.svg',
          styles: Styles.box(width: 40.px),
        ),
        h3([text('Create')]),
      ]),
      div(classes: 'feature-item', [
        img(
          src: '/images/edit_icon.svg',
        ),
        h3([text('Edit')])
      ]),
      div(classes: 'feature-item', [
        img(
          src: '/images/share_icon.svg',
        ),
        h3([text('Share')])
      ])
    ]);
  }

  static get styles => [
        css('.feature-gallery', [
          css('&')
              .grid(
            template: GridTemplate(
              columns: GridTracks([
                GridTrack(TrackSize(Unit.percent(100))),
              ]),
            ),
          )
              .raw({'gap': '1%'}),
          css('.feature-item')
              .background(
                color: accentColor,
              )
              .text(color: Colors.white)
              .flexbox(
                direction: FlexDirection.column,
                justifyContent: JustifyContent.center,
                alignItems: AlignItems.center,
              )
              .box(
                width: 100.percent,
              ),
          css('img').box(
            width: 45.px,
            padding: EdgeInsets.all(20.px),
          ),
        ]),
        StyleRule.media(query: MediaRuleQuery(minWidth: 768.px), styles: [
          css('.feature-gallery').grid(
            template: GridTemplate(
              columns: GridTracks([
                GridTrack(TrackSize(Unit.percent(33))),
                GridTrack(TrackSize(Unit.percent(33))),
                GridTrack(TrackSize(Unit.percent(33))),
              ]),
            ),
          ),
          css('.feature-item').box(
            width: 50.percent,
          ),
        ]),
        StyleRule.media(query: MediaRuleQuery(minWidth: 1024.px), styles: []),
      ];
}
