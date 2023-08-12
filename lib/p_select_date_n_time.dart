import 'package:flutter/material.dart';
import 'package:med_ease/widgets_methods_classes.dart';
import 'package:med_ease/p_home.dart';

void main()
{
runApp(PatientSeeALL());
}


class PatientSeeALL extends StatefulWidget {
  const PatientSeeALL({Key? key}) : super(key: key);

  @override
  State<PatientSeeALL> createState() => _PatientSeeALLState();
}

class _PatientSeeALLState extends State<PatientSeeALL> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                SizeTransition4(
                  const Patient_Homepage(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notification_add_outlined,
                color: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text('Your\nPrevious\nAppointments\n'),
                Container(
                  height: 200,
                  color: Colors.grey,
                ),
              ],
            ),
            Container(
              height: 100,
              color: Colors.greenAccent,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.star,color: Colors.yellowAccent,),
                      Text('4.5/5')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
