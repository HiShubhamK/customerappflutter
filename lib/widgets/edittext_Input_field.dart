import 'package:flutter/material.dart';

class EditTextInputField extends StatelessWidget {
  String hintTextToDisplay;
  String errormessage;
  TextEditingController textEditingController;

  EditTextInputField({
    required this.hintTextToDisplay,
    required this.textEditingController,
    required this.errormessage,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: hintTextToDisplay.toLowerCase().contains("mobile")
          ? TextInputType.phone
          : TextInputType.text,
      controller: textEditingController,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.indigoAccent, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orangeAccent, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: hintTextToDisplay,
      ),
      validator: (String? input) {
        if (input != null && input.isNotEmpty) {
          if (hintTextToDisplay.toLowerCase().contains("email")) {
            if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(input)) {
              return "Invalid email format";
            }
          } else if (hintTextToDisplay.toLowerCase().contains("mobile")) {
            if (!RegExp(r"^\d{10}$").hasMatch(input)) {
              return "Invalid mobile number";
            }
          }
          return null;
        } else {
          return errormessage;
        }
      },
    );
  }
}


// class EditTextInputField extends StatelessWidget{
//
//   String hintTextToDisplay;
//   String errormessage;
//   TextEditingController textEditingController;
//
//   EditTextInputField({required this.hintTextToDisplay, required this.textEditingController, required this.errormessage});
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       keyboardType: TextInputType.number,
//       controller: textEditingController,
//       decoration: InputDecoration(
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                   color: Colors.indigoAccent,
//                   width: 2
//               ),
//               borderRadius: BorderRadius.circular(20)
//           ),
//           enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                   color: Colors.green,
//                   width: 2
//               ),
//               borderRadius: BorderRadius.circular(20)
//           ),
//           errorBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                   color: Colors.red,
//                   width: 2
//               ),
//               borderRadius: BorderRadius.circular(20)
//           ),
//           focusedErrorBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                   color: Colors.orangeAccent,
//                   width: 2
//               ),
//               borderRadius: BorderRadius.circular(20)
//           ),
//           hintText: hintTextToDisplay
//       ),
//       validator: (String? input){
//         if(input != null && input.isNotEmpty){
//           return null;
//         }else if(textEditingController== !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(input!)){
//
//         }else{
//           return errormessage;
//         }
//       },
//     );
//   }
// }