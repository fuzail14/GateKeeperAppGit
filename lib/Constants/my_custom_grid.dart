import 'package:flutter/material.dart';

class MyCustomGrid extends StatefulWidget {
  final Color? outerContainerColor;
  final Gradient? gradient;
  final double? outerContainerHeight;
  final double? outerContainerWidth;
  final double outerContainerBorderRadius;
  final void Function()? onTap;
  final Color? innerContainerColor;
  final double? innerContainerHeight;
  final double? innerContainerWidth;
  final double innerContainerBorderRadius;
  final IconData? icon;
  final Color? iconColor;
  final String text;
  final Color? textColor;
  final double? fontSize;
  const MyCustomGrid(
  {super.key,
  this.outerContainerColor,
  this.outerContainerHeight,
  this.outerContainerWidth,
  required this.outerContainerBorderRadius,
  this.onTap,
  this.gradient,
  this.iconColor,
  this.innerContainerColor,
  this.innerContainerHeight,
  this.innerContainerWidth,
  required this.innerContainerBorderRadius,
  this.icon,
  required this.text,
  this.textColor,
  this.fontSize});

  @override
  State<MyCustomGrid> createState() => _MyCustomGridState();
}

class _MyCustomGridState extends State<MyCustomGrid> {
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: widget.onTap,
      child: Container(
        height: widget.outerContainerHeight ??
            MediaQuery.of(context).size.height * 0.170, //137
        width: widget.outerContainerWidth ??
            MediaQuery.of(context).size.width * 0.31, //155
        decoration: BoxDecoration(
            gradient: widget.gradient,
            color: widget.outerContainerColor ?? Colors.red,
            borderRadius:
            BorderRadius.circular(widget.outerContainerBorderRadius )),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.032, //24
            ),
            Container(
              height: widget.innerContainerHeight ??
                  MediaQuery.of(context).size.height * 0.070, //51
              width: widget.innerContainerWidth ??
                  MediaQuery.of(context).size.width * 0.145, //51
              decoration: BoxDecoration(
                  color: widget.innerContainerColor ?? Colors.white,
                  borderRadius: BorderRadius.circular(
                      widget.innerContainerBorderRadius ?? 10)),
              child: Icon(widget.icon ?? Icons.people,color:widget.iconColor ,),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Text(
                widget.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: widget.fontSize ?? 16, //16
                  color: widget.textColor ?? Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}