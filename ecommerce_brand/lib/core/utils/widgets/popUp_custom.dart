import 'package:ecommerce_brand/core/utils/theme/colors.dart';
import 'package:flutter/material.dart';

class Popup {
  final String? title;
  final String? message;
  final String? rightButton;
  final VoidCallback? onTapRightButton;
  final String? leftButton;
  final VoidCallback? onTapLeftButton;

  Popup({
    this.title,
    this.message,
    this.rightButton,
    this.onTapRightButton,
    this.leftButton,
    this.onTapLeftButton,
  });

  show(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return _PopupCall(
            title: title ?? "Title",
            message: message ?? "Message",
            leftButton: leftButton ?? "Left Button",
            rightButton: rightButton ?? "Right Button",
            onTapLeftButton: onTapLeftButton ?? (() => {}),
            onTapRightButton: onTapRightButton ?? (() => {}));
      },
    );
  }
}

class _PopupCall extends StatefulWidget {
  final String title;
  final String message;
  final String rightButton;
  final VoidCallback onTapRightButton;
  final String leftButton;
  final VoidCallback onTapLeftButton;

  const _PopupCall(
      {required this.title,
      required this.message,
      required this.rightButton,
      required this.onTapRightButton,
      required this.leftButton,
      required this.onTapLeftButton});
  @override
  _PopupCallState createState() => _PopupCallState();
}

class _PopupCallState extends State<_PopupCall> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(9),
        ),
      ),
      backgroundColor: AppColors.background,
      titlePadding: const EdgeInsets.all(0),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            height: 25,
          ),
          // Align(
          //   alignment: Alignment.topRight,
          //   child: IconButton(
          //     icon: const Icon(
          //       Icons.close,
          //       color: Colors.red,
          //       size: 25,
          //     ),
          //     onPressed: () {
          //       Navigator.pop(context);
          //     },
          //   ),
          // ),
          Center(
            child: Text(widget.title,
                style: const TextStyle(
                  wordSpacing: 0,
                  letterSpacing: 0,
                  fontSize: 25,
                  color: AppColors.primary,
                )),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              wordSpacing: 2,
              letterSpacing: 1,
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10.0,
            left: 10,
          ),
          child: Center(
            child: GestureDetector(
              onTap: () {
                widget.onTapRightButton.call();
                Navigator.pop(context);
              },
              child: Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.3, color: AppColors.black),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(9),
                  ),
                ),
                child: Center(
                  child: Text(
                    widget.rightButton.toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      wordSpacing: 0,
                      letterSpacing: 0,
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
