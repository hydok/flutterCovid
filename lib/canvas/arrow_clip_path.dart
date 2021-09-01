

import 'package:flutter/cupertino.dart';

class ArrowClipPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(0, size.height);
    path.lineTo(size.width*0.5, 0); //상단 중간
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
  //화면 갱신시 refresh

}