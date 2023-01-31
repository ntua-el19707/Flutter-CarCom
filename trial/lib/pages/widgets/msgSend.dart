import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/themes/app_decoration.dart';

class msgSend extends StatefulWidget {
  const msgSend({super.key});

  @override
  State<msgSend> createState() => _msgSendState();
}

class _msgSendState extends State<msgSend> {
  String msg = "send";
  bool direction = true;
  @override
  Widget build(BuildContext context) {
    Alignment al;
    Decoration dec;
    if (direction) {
      al = Alignment.centerLeft;
      dec = AppDecoration.fillBluegray100;
    } else {
      al = Alignment.centerRight;
      dec = AppDecoration.fillblue;
    }
    return Container(
      child: Align(
          alignment: al,
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: Container(decoration: dec, child: Text(msg)),
          )),
    );
  }
}
