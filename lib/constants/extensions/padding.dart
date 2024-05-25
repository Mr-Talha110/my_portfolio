import 'package:flutter/widgets.dart';

extension Paddings on Widget {
  Widget paddingLeft(double value) {
    return Padding(
      padding: EdgeInsets.only(
        top: 0,
        right: 0,
        bottom: 0,
        left: value,
      ),
      child: this,
    );
  }

  Widget paddingRight(double value) {
    return Padding(
      padding: EdgeInsets.only(
        top: 0,
        right: value,
        bottom: 0,
        left: 0,
      ),
      child: this,
    );
  }

  Widget paddingTop(double padding) {
    return Padding(
      padding: EdgeInsets.only(
        top: padding,
        right: 0,
        bottom: 0,
        left: 0,
      ),
      child: this,
    );
  }

  Widget paddingBottom(double value) {
    return Padding(
      padding: EdgeInsets.only(
        top: 0,
        right: 0,
        bottom: value,
        left: 0,
      ),
      child: this,
    );
  }

  Widget paddingHorizontal(double value) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: value,
        vertical: 0,
      ),
      child: this,
    );
  }

  Widget paddingVertical(double value) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: value,
      ),
      child: this,
    );
  }

  Widget paddingSymmetric(
      {required double horizontal, required double vertical}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontal,
        vertical: vertical,
      ),
      child: this,
    );
  }

  Widget paddingAll(double value) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  Widget paddingHorizontalBottom(
      {required double horizontal, required double bottom}) {
    return Padding(
      padding: EdgeInsets.only(
        top: 0,
        bottom: bottom,
        left: horizontal,
        right: horizontal,
      ),
      child: this,
    );
  }

  Widget paddingHorizontalTop(
      {required double horizontal, required double top}) {
    return Padding(
      padding: EdgeInsets.only(
        top: top,
        bottom: 0,
        left: horizontal,
        right: horizontal,
      ),
      child: this,
    );
  }

  Widget paddingHorizontalTopBottom(
      {required double horizontal,
      required double top,
      required double bottom}) {
    return Padding(
      padding: EdgeInsets.only(
        top: top,
        bottom: bottom,
        left: horizontal,
        right: horizontal,
      ),
      child: this,
    );
  }
}
