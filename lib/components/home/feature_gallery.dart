import 'package:flashlist_website/constants/theme.dart';
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
          styles: Styles.box(
              width: 38.px, margin: EdgeInsets.symmetric(vertical: 5.px)),
        ),
        h3([text('Create')]),
        p([text('Capture your ideas when they appear')])
      ]),
      div(classes: 'feature-item', [
        img(
          src: '/images/edit_icon.svg',
        ),
        h3([text('Edit')]),
        p([text('Customize color for easy distinction')])
      ]),
      div(classes: 'feature-item', [
        img(
          src: '/images/share_icon.svg',
        ),
        h3([text('Share')]),
        p([text('Share your lists in real-time')])
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
                justifyContent: JustifyContent.start,
                alignItems: AlignItems.center,
              )
              .box(
                padding: EdgeInsets.all(20.px),
                radius: BorderRadius.circular(10.px),
              ),
          css('img').box(
            width: 45.px,
          ),
          css('h3').box(
            margin: EdgeInsets.only(top: 4.px, bottom: 4.px),
          ),
          css('p')
              .text(
                fontSize: 20.px,
              )
              .box(
                margin: EdgeInsets.only(top: 4.px, bottom: 4.px),
              ),
        ]),
        StyleRule.media(query: MediaQuery.screen(minWidth: 768.px), styles: [
          css('.feature-gallery').grid(
            template: GridTemplate(
              columns: GridTracks([
                GridTrack(TrackSize(Unit.percent(33))),
                GridTrack(TrackSize(Unit.percent(33))),
                GridTrack(TrackSize(Unit.percent(33))),
              ]),
            ),
          ),
        ]),
        StyleRule.media(
            query: MediaQuery.screen(minWidth: 1024.px), styles: []),
      ];
}
