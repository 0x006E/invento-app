import 'package:flutter/material.dart';

/// Returns a [ModalBottomSheet] with the given [Widget] as its child.
void openModalBottomSheet(Widget? w, BuildContext context,
    [bool isDismissible = false]) {
  showModalBottomSheet<void>(
    isDismissible: isDismissible,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: w,
      );
    },
  );
}
