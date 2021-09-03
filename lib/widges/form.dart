import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultmaterialtextfield({required String hinttext,
  required IconData icon,
  required TextInputType textinput
}){
  return Material(
    elevation: 20.0,
    shadowColor: Colors.blueGrey.withOpacity(0.2),
    borderRadius: BorderRadius.circular(60),
    child: TextField(

      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(60)),
        filled: true,
        fillColor: Colors.grey.shade100,
        hintText: hinttext,
        hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade400),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        prefixIcon: Icon(
          icon,
        ),
      ),
      style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent),
      cursorColor: Colors.blueAccent.shade400,
      keyboardType:textinput,
    ),
  );
}

Widget defaultelevatebutton({required String text}){
  return ElevatedButton(onPressed: () {}, child: Text(text));

}

