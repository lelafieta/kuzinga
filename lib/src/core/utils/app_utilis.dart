import 'package:fluttertoast/fluttertoast.dart';

import '../../configs/themes/color_palette.dart';

class AppUtilis {
  static void toastSuccess(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.success,
        textColor: AppColors.whiteColor,
        fontSize: 16.0);
  }

  static void toastError(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColors.error,
        textColor: AppColors.whiteColor,
        fontSize: 16.0);
  }
}
