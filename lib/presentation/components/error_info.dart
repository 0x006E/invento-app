import 'package:flutter/material.dart';

class ErrorInfo extends StatelessWidget {
  final String errorMessage;
  final int errorCode;

  const ErrorInfo({Key? key, required this.errorMessage, this.errorCode = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                errorCode != 0
                    ? Text(
                        errorCode.toString(),
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w900),
                      )
                    : SizedBox.shrink(),
                Text(
                  "Something went wrong!",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                Text(
                  errorMessage,
                  textAlign: TextAlign.center,
                ),
              ]),
        ),
      ],
    );
  }
}
