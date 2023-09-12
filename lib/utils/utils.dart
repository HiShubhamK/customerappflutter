import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils{


  static var mobile="";
  static var TOKEN="eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6Ijk5Njc5OTQ2ODJAaGljYXJlLmluIiwiTW9iaWxlTm8iOiI5OTY3OTk0NjgyIiwianRpIjoiMzhjZjYzZGItZWI1Zi00YjI4LTg1ZmMtMDFmN2UwYWIyZjM3IiwiZXhwIjoxNjk0NzcxMTI4LCJpc3MiOiJoaWNhcmUubW9iaWxlLmFwaSIsImF1ZCI6ImhpY2FyZS5tb2JpbGUuYXBpIn0.fs-6AREl-BclyYbTFKUxck1nck-r1aOj5l_3e0v8McE";
  static toastMessage(String messsage){



    Fluttertoast.showToast(
        msg: messsage,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );

  }

  static void flushbarErrorMessage(String messsage,BuildContext context){
   showFlushbar(context: context, flushbar: Flushbar(
     forwardAnimationCurve: Curves.decelerate,
     margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
     padding: EdgeInsets.all(15),
     message: messsage,
     duration: Duration(seconds: 3),
     borderRadius: BorderRadius.circular(8),
     flushbarPosition: FlushbarPosition.BOTTOM,
     backgroundColor: Colors.red,
     reverseAnimationCurve: Curves.easeInOut,
     positionOffset: 20,
     icon: Icon(Icons.error,size: 20,color: Colors.white,),
   )..show(context)
   );

  }
  static  showsnackbar(String messsage,BuildContext context){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.green,
  content: Text(messsage))
  );

  }
}