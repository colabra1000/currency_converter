import 'package:currency_converter/presentation/core/styles/textStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadingOverlay extends StatelessWidget {
  final Decoration? boxDecoration;
  final bool isLoading;
  final String warning;
  const LoadingOverlay({
    this.isLoading = true,
    this.warning = "",
    this.boxDecoration,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isLoading,
      child: AnimatedOpacity(
        opacity: isLoading ? .8 : 0,
        duration: const Duration(milliseconds: 500),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            width: double.infinity,
            // alignment: Alignment.center,
            color: boxDecoration == null ? Colors.black : null,
            decoration: boxDecoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  color: lightColor,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  warning,
                  style: smallText.copyWith(color: primaryColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
