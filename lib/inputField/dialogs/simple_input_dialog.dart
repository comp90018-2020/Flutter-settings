import 'package:flutter/material.dart';
import 'package:flutter_settings/inputField/base/base_input_dialog.dart';

class SimpleInputDialog extends BaseInputDialog {
  final String title, buttonText;
  final TextInputType keyboardType;

  SimpleInputDialog(
      {this.keyboardType = TextInputType.text, this.title, this.buttonText})
      : super(
          buttonText: buttonText,
          title: title,
          contentWidget: _SimpleDialogContent(
            title: title,
            buttonText: buttonText,
            keyboardType: keyboardType,
          ),
        );
}

class _SimpleDialogContent extends StatelessWidget {
  final String title, buttonText;
  final TextInputType keyboardType;
  const _SimpleDialogContent(
      {Key key, this.title, this.buttonText, this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 24.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 4)),
                  controller: myController,
                  autofocus: true,
                  keyboardType: this.keyboardType,
                ),
              ),
              SizedBox(height: 24.0),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pop<String>(myController.value.text.toString());
                  },
                  child: Text(
                    buttonText,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
