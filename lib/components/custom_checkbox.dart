import 'package:flutter/material.dart';
import 'package:groceries/res/colors/app_color.dart';

// ignore: must_be_immutable
class CustomCheckBox extends StatefulWidget {

  double? size;
  double? iconSize;
  Function OnChange;
  Color? backgroundColor;
  Color? iconColor;
  Color? borderColor;
  IconData? icon;
  bool isChecked;

  CustomCheckBox({
    super.key,
    this.size,
    this.iconSize,
    required this.OnChange,
    this.backgroundColor,
    this.iconColor,
    this.borderColor,
    this.icon,
    required this.isChecked
    });

  @override
  _CustomCheckBoxState createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
          widget.OnChange(isChecked);
        });
      },
      child: AnimatedContainer(
        height: widget.size??30,
        width: widget.size??30,
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn,
        decoration: BoxDecoration(
          border: Border.all(color: widget.borderColor?? AppColor.greycolor),
          borderRadius: BorderRadius.circular(8.0),
          color: isChecked ? widget.backgroundColor?? AppColor.greencolor: AppColor.lightgreycolor,
        ),
        child: Icon(
          widget.icon?? Icons.check,
          color: isChecked ? widget.iconColor?? Colors.white : Colors.transparent,
          size: widget.iconSize??20,
        ),
      ),
    );
  }
}
