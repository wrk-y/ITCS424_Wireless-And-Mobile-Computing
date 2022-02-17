import 'package:flutter/material.dart';
import 'data.dart';

class AlarmPage extends StatefulWidget {
  @override
  _AlarmPageState createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Text(
        'Alarm',
        style: TextStyle(fontWeight: FontWeight.w700,
            color: Colors.blueGrey[100],
            fontSize: 36),
      ),
      Expanded(
        child: ListView(
            children: alarms.map((alarm) {
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '07:00 AM',
                          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                        Switch.adaptive(
                          onChanged: (bool value) {},
                          value: true,
                          activeColor: Colors.lightBlue,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Mon-Fri',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.label, color: Colors.white, size: 24),
                            SizedBox(width: 8),
                            Text(
                              'Alarm',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 15),
                            Icon(
                              Icons.delete,
                              size: 25,
                              color: Colors.white,
                            ),
                            SizedBox(width: 80),
                            Icon(
                              Icons.edit,
                              size: 20,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 0.5,
                      child: Container(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              );
            }).followedBy([
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[400],
                  borderRadius: BorderRadius.all(Radius.circular(24))
                ),
                child: FlatButton(
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  onPressed: () {},
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        'Add Alarm',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              )
            ]).toList(),
          ),
        ),
      ],
      ),
    );
  }
}