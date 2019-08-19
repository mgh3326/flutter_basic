import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoPage extends StatefulWidget {
  @override
  _CupertinoPageState createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {
  bool _switch1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('쿠퍼티노 UI'),
      ),
      body: Column(
        children: <Widget>[
          CupertinoButton(child: Text('쿠퍼티노 버튼')),
          CupertinoSwitch(
            value: _switch1,
            onChanged: (bool value) {
              setState(() {
                _switch1 = value;
              });
            },
          ),
          RaisedButton(child: Text('쿠퍼티노 버튼')),
          Switch(
            value: _switch1,
            onChanged: (bool value) {
              setState(() {
                _switch1 = value;
              });
            },
          )
        ],
      ),
    );
  }
}
