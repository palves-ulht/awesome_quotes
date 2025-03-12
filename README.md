[![pub package](https://img.shields.io/pub/v/awesome_quotes.svg)](https://pub.dev/packages/awesome_quotes)

## Features

Returns a random quote. The quotes are stored locally, no need for connectivity.

Uses the awesome quotes from [https://gist.github.com/erickedji/68802](https://gist.github.com/erickedji/68802)

## Usage

Get a random quote:

```dart
import 'package:awesome_quotes/awesome_quotes.dart';

final quote = randomQuote();
print('Text: ${quote.text}');
print('Author: ${quote.author}');
```