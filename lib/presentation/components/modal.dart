import 'package:flutter/material.dart';

/// Returns a [ModalBottomSheet] with the given [Widget] as its child.
void openModalBottomSheet(Widget? w, BuildContext context) {
  showModalBottomSheet<void>(
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    context: context,
    builder: (BuildContext context) {
      return SizedBox(
        child: w,
      );
    },
  );
}