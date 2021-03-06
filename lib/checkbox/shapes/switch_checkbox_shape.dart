import 'package:flutter/material.dart';
import 'package:flutter_settings/checkbox/layer/checkbox_layer.dart';
import 'package:flutter_settings/util/SettingsConstants.dart';

class SwitchCheckBoxShape extends CheckBoxLayerState {
  SwitchCheckBoxShape(
      {bool checked,
      WidgetDirection direction,
      Function onPressed,
      bool disabled})
      : super(
            checked: checked,
            direction: direction,
            onPressed: onPressed,
            disabled: disabled);

  @override
  Widget getWidget() {
    return Container(
        margin: EdgeInsets.only(top: 2.0),
        child: Switch(
          onChanged: disabled == false
              ? (bool value) {
                  setState(() {
                    changeState();
                  });
                }
              : null,
          value: this.checked,
          activeColor: Colors.white,
          activeTrackColor: Colors.green,
          inactiveThumbColor: Colors.white,
          inactiveTrackColor: Colors.grey,
        ));
  }
}
