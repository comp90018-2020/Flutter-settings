import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_settings/navigator/layer/navigator_layer.dart';
import 'package:flutter_settings/util/SettingsConstants.dart';
import 'package:flutter_settings/widgets/SettingsButton.dart';
import 'package:flutter_settings/widgets/SettingsIcon.dart';

class SettingsNavigatorButton extends SettingsButton {
  SettingsNavigatorButton({
    @required BuildContext context,
    SettingsIcon icon,
    @required String title,
    TextStyle titleStyle,
    TextStyle captionStyle,
    WidgetDirection direction = WidgetDirection.ltr,
    Function onPressed,
    String caption,
  }) : super(
            icon: icon,
            title: title,
            caption: caption,
            direction: direction,
            titleStyle: titleStyle,
            captionStyle: captionStyle,
            onPressed: onPressed,
            overlayerWidget: new NavigatorLayer(
              direction: direction,
            ));
}
