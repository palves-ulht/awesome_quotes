
/*
 * Copyright (c) 2023, Pedro Alves. All rights reserved. Use of this source code
 * is governed by a MIT-style license that can be found in the LICENSE file.
 */

import 'package:awesome_quotes/awesome_quotes.dart';

void main() {
  final quote = randomQuote();
  print("${quote.text}\nby ${quote.author}");
}
