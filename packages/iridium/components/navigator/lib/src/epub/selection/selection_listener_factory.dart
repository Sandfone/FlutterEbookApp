import 'package:flutter/widgets.dart';
import 'package:mno_navigator/epub.dart' as epub;
import 'package:mno_navigator/src/publication/reader_context.dart';

abstract class SelectionListenerFactory {
  epub.SelectionListener create(ReaderContext readerContext, BuildContext context);
}

class SimpleSelectionListenerFactory extends SelectionListenerFactory {
  final State state;

  SimpleSelectionListenerFactory(this.state);

  @override
  epub.SelectionListener create(ReaderContext readerContext, BuildContext context) =>
      epub.SimpleSelectionListener(state, readerContext, context);
}
