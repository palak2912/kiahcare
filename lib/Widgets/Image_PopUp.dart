import 'package:flutter/material.dart';

class ImageDialog extends StatelessWidget {
  final url;

  const ImageDialog({Key? key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height/1.5,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage('$url'),
                fit: BoxFit.contain
            )
        ),
      ),
    );
  }
}

