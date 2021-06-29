import 'package:flutter/material.dart';

Widget dateInput(String label, String defaultDate, Function calendarFunction) =>
    Container(
      child: Center(
        child: Container(
          child: GestureDetector(
              onTap: () => calendarFunction(),
              child: AbsorbPointer(
                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelText: label,
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                    contentPadding: EdgeInsets.only(bottom: 10, top: 10),
                    suffixIcon: Icon(
                      Icons.calendar_today,
                      color: Colors.white,
                    ),
                  ),
                  controller: TextEditingController(text: defaultDate),
                  readOnly: true,
                ),
              )),
          width: 300,
          decoration: BoxDecoration(
            color: Color.fromRGBO(1, 1, 33, 100),
            //color: Colors.red,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  offset: Offset(0.2, 0.2),
                  spreadRadius: 0.2)
            ],
          ),
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 0),
        ),
      ),
    );

// GestureDetector(
//   onTap:()=>showDialog(),
//   child:AbsorbPointer(
//     child: MyTextField(),
//   )
// )

// TextField(
//             style: TextStyle(color: Colors.white, fontSize: 15),
//             decoration: InputDecoration(
//               enabledBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: Colors.white),
//               ),
//               focusedBorder: UnderlineInputBorder(
//                 borderSide: BorderSide(color: Colors.white),
//               ),
//               labelText: label,
//               labelStyle: TextStyle(
//                 color: Colors.white,
//                 fontSize: 10,
//               ),
//               contentPadding: EdgeInsets.only(bottom: 10, top: 10),
//               suffixIcon: Icon(
//                 Icons.calendar_today,
//                 color: Colors.white,
//               ),
//             ),
//           )