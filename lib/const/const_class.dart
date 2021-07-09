import 'package:flutter/material.dart';

class IntraDayContainer extends StatelessWidget {
  final String text;
  final Color color;
  const IntraDayContainer({@required this.text, @required this.color});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.045,
      width: size.width * 0.17,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 10,
        ),
      ),
    );
  }
}

class CommonContainer extends StatelessWidget {
  final String text;
  const CommonContainer({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height * 0.055,
          width: size.width * 0.19,
          decoration: BoxDecoration(
            color: Color(0xff9ADBD5),
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Color(0xff203046),
                // borderRadius:
                //     BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 10,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class WithoutCheckContainer extends StatelessWidget {
  final String text;
  const WithoutCheckContainer({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
            color: Color(0xff9ADBD5),
            borderRadius: BorderRadius.circular(10),
          ),
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
