import 'package:coffee_shop/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class DialogShower{
  DialogShower._();


  static void displayToast(String message){
    Fluttertoast.showToast(
        fontSize: 20,
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: AColor.onBackground,
        textColor: AColor.textColor,
        gravity: ToastGravity.TOP,
        msg: message);
  }

  static displayDialog(String message,String title,BuildContext context){
    showDialog(context: context, builder: (context) => AlertDialog(
      actions: [
        TextButton(onPressed: (){
         displayToast("Successfully finished");
          Get.back();
        },
            child: const Text("Ok")),
        TextButton(onPressed: (){
          displayToast("Canceled");
          Get.back();
        },
            child: const Text("Cancel"))
      ],
      title: Text(title),
      content: Text(message),
    ),);
  }

}
