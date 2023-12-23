/*
 * Copyright (c) 2023, Pedro Alves. All rights reserved. Use of this source code
 * is governed by a MIT-style license that can be found in the LICENSE file.
 */

import 'dart:math';

import 'package:awesome_quotes/src/quotes.dart';

class Quote {
  String text;
  String author;

  Quote(this.text, this.author);

  @override
  String toString() {
    return '$text [$author]';
  }
}

var _quotes = [];

void _loadQuotes() {
  var lines = quotesTxt.split('\n');


  int currentLineIdx = 0;
  String currentText = '';
  while (currentLineIdx < lines.length) {
    var line = lines[currentLineIdx];
    if (line.isNotEmpty) {
      if (!line.startsWith('--')) {
        currentText += line;
      } else {
        var author = line.replaceFirst('-- ', '');
        _quotes.add(Quote(currentText, author));
        currentText = '';
      }
    }
    currentLineIdx++;
  }
}

Quote randomQuote() {

  if (_quotes.isEmpty) {
    _loadQuotes();
  }

  Random random = Random();
  int randomIndex = random.nextInt(_quotes.length);
  return _quotes[randomIndex];
}
