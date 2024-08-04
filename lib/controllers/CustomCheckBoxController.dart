import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/res/colors/app_color.dart';

class CustomCheckBoxController extends GetxController {
  RxBool isChecked;

  CustomCheckBoxController(bool initialChecked)
      : isChecked = RxBool(initialChecked);

  void toggleChecked() {
    isChecked.value = !isChecked.value;
  }
}

class CustomCheckBox extends StatelessWidget {
  final double? size;
  final double? iconSize;
  final Function(bool) onChange;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? borderColor;
  final IconData? icon;
  final bool isChecked;

  CustomCheckBox({
    Key? key,
    this.size,
    this.iconSize,
    required this.onChange,
    this.backgroundColor,
    this.iconColor,
    this.borderColor,
    this.icon,
    required this.isChecked, required Null Function(dynamic value) OnChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CustomCheckBoxController controller =
        Get.put(CustomCheckBoxController(isChecked));

    return GestureDetector(
      onTap: () {
        controller.toggleChecked();
        onChange(controller.isChecked.value);
      },
      child: Obx(
        () => AnimatedContainer(
          height: size ?? 30,
          width: size ?? 30,
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn,
          decoration: BoxDecoration(
            border: Border.all(color: borderColor ?? AppColor.greycolor),
            borderRadius: BorderRadius.circular(8.0),
            color: controller.isChecked.value
                ? backgroundColor ?? AppColor.greencolor
                : AppColor.lightgreycolor,
          ),
          child: Icon(
            icon ?? Icons.check,
            color: controller.isChecked.value
                ? iconColor ?? Colors.white
                : Colors.transparent,
            size: iconSize ?? 20,
          ),
        ),
      ),
    );
  }
}
