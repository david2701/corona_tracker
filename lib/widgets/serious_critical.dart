import 'package:flutter/material.dart';

class SeriousCritical extends StatelessWidget {
  final String data;
  final String type;
  final double dataSize;
  final double textSize;
  final bool isRow;

  SeriousCritical({
    this.data,
    this.type,
    this.dataSize,
    this.textSize,
    this.isRow,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: isRow ? 20.0 : 5.0,
        ),
        padding: EdgeInsets.symmetric(
          vertical: isRow ? 15.0 : 10,
        ),
        decoration: BoxDecoration(
          color: Color(0xff131C2F),
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 2.0,
            ),
          ],
        ),
        child: isRow
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '$type',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: textSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    '$data',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: dataSize,
                      color: data == 'NONE' || data == 'NO'
                          ? Colors.greenAccent
                          : int.parse(data.replaceAll(',', '').toString()) >= 10
                              ? Colors.redAccent[100]
                              : Colors.greenAccent[100],
                    ),
                  ),
                ],
              )
            : Column(
                children: <Widget>[
                  Text(
                    '$data',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: dataSize,
                      color: data == 'NONE' || data == 'NO'
                          ? Colors.greenAccent
                          : int.parse(data.replaceAll(',', '').toString()) >= 10
                              ? Colors.redAccent[100]
                              : Colors.greenAccent[100],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    '$type',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: textSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
      ),
    );
  }
}