import 'package:flashlist_website/app.dart';
import 'package:jaspr/jaspr.dart';

// As your css styles are defined using just Dart, you can simply
// use global variables or methods for common things like colors.

const primaryColor = Color.hex('#2bb673');

const backgroundColor = Color.hex('#f2f2f2');

const accentColor = Color.hex('#78909C');

const textColor = Color.hex('#333333');

// The main styles for this app.
@css
List<StyleRule> styles = [
  // * Mobile first
  const StyleRule.import('https://fonts.googleapis.com/css?family=Roboto'),
  const StyleRule.import(
      'https://fonts.googleapis.com/css2?family=Exo:ital,wght@0,100..900;1,100..900&display=swap'),
  css('.main').flexbox(
    direction: FlexDirection.column,
    justifyContent: JustifyContent.spaceBetween,
  ),
  css('html, body')
      .text(
        fontFamily: const FontFamily.list([
          FontFamily('Roboto'),
          FontFamilies.sansSerif,
        ]),
        color: textColor,
      )
      .box(width: 100.percent, minHeight: 100.vh)
      .box(margin: EdgeInsets.zero, padding: EdgeInsets.zero)
      .background(color: backgroundColor),

  css('.content-wrapper', [
    css('&').box(
      padding: EdgeInsets.symmetric(
        horizontal: 16.px,
        vertical: 32.px,
      ),
    ),
  ]),

  css('h1')
      .text(
        fontSize: 28.px,
        fontFamily: FontFamily('Exo'),
        align: TextAlign.center,
      )
      .box(margin: EdgeInsets.unset),
  css('h2').text(
    fontSize: 22.px,
    fontFamily: FontFamily('Exo'),
    align: TextAlign.center,
  ),
  // * Tablet
  StyleRule.media(query: MediaQuery.screen(minWidth: 768.px), styles: [
    css('.content-wrapper').box(
      padding: EdgeInsets.symmetric(
        horizontal: 32.px,
        vertical: 32.px,
      ),
    ),
    css('h1').text(fontSize: 32.px),
    css('h2').text(fontSize: 26.px),
  ]),
  // * Desktop
  StyleRule.media(query: MediaQuery.screen(minWidth: 1024.px), styles: [
    css('.content-wrapper').box(
      width: 1024.px,
    ),
    css('h1').text(fontSize: 40.px),
    css('h2').text(fontSize: 32.px),
  ]),
  ...App.styles,
];
