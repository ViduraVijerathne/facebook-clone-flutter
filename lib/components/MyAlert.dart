import 'package:flutter/cupertino.dart';

class MyAlert extends StatelessWidget {
  final String title;
  final String content;
  final String cancelText;
  final String okText;
  final VoidCallback onCancelPressed;
  final VoidCallback onOkPressed;

  const MyAlert({
    Key? key,
    required this.title,
    required this.content,
    required this.cancelText,
    required this.okText,
    required this.onCancelPressed,
    required this.onOkPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        CupertinoDialogAction(
          child: Text(cancelText),
          onPressed: onCancelPressed,
        ),
        CupertinoDialogAction(
          child: Text(okText),
          onPressed: onOkPressed,
        ),
      ],
    );
  }
}
