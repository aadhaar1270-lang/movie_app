import 'package:flutter/material.dart';

class MovieField extends StatelessWidget {
  final String field;
  final String value;

  const MovieField({
    Key? key,
    required this.field,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$field: ",
          style: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.w300,
            fontSize: 12,
          ),
        ),
        Flexible(
          child: Text(
            value,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
        )
      ],
    );
  }
}
