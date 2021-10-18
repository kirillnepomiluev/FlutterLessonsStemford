import 'package:flutter/material.dart';

class CharacterContainer extends StatefulWidget {

  @override
  _CharacterContainerState createState() {
    return _CharacterContainerState();
  }
}

class _CharacterContainerState extends State<CharacterContainer> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            LinearProgressIndicator(
              minHeight: 10,
              backgroundColor: Colors.red,
              value: 0.7,


            ),
            Image.network("https://img1.picmix.com/output/stamp/thumb/7/1/2/0/690217_bcf80.png"),
          ],
        ),
      ),
    );
  }
}