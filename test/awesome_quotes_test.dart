/*
 * Copyright (c) 2023, Pedro Alves. All rights reserved. Use of this source code
 * is governed by a MIT-style license that can be found in the LICENSE file.
 */

import 'package:awesome_quotes/awesome_quotes.dart';
import 'package:test/test.dart';

void main() {
  test('generate random quote', () {
    final quote = randomQuote();
    expect(quote, isNotNull);
    expect(quote.text, isNotEmpty);
    expect(quote.author, isNotEmpty);
  });
}
