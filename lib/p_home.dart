import 'package:flutter/material.dart';
import 'package:med_ease/widgets_methods_classes.dart';
import 'package:med_ease/p_info.dart';

void main() {
  runApp(const MaterialApp());
}

class Patient_Homepage extends StatefulWidget {
  const Patient_Homepage({Key? key}) : super(key: key);

  @override
  State<Patient_Homepage> createState() => _Patient_HomepageState();
}

class _Patient_HomepageState extends State<Patient_Homepage> {

  final String curr_loc = "Los Angeles";
  final String docName = "Singh";
  final String docSpeciality = "Cardiac Surgeon";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            color: Colors.blueGrey,
            icon: const Icon(Icons.menu),
            onPressed: (){},
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notification_add_outlined),
            ),
          ],
          title: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Current Location',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                curr_loc,
                style: const TextStyle(color: Colors.blueGrey, fontSize: 15),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: ' Search a doctor or health issue ....',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onChanged: (value) {
                    // Add your search functionality here
                    // This callback will be triggered whenever the user types in the search bar.
                  },
                ),
              ),
              const Row(
                children: [
                  Text(
                    ' Hi...\n Anything\n You Need ?',
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Row(
                children: [
                  Text(
                    '   Categories',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    p_main_features(
                      feature: 'Appointment',
                    ),
                    p_main_features(
                      feature: 'Appointment',
                    ),
                    p_main_features(
                      feature: 'Appointment',
                    ),
                    p_main_features(
                      feature: 'Appointment',
                    ),
                    p_main_features(
                      feature: 'Appointment',
                    ),
                    p_main_features(
                      feature: 'Appointment',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Row(
                children: [
                  Text('   Live Consultation',style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    p_main_doc_live_con(
                        docName: docName, docSpeciality: docSpeciality),
                    p_main_doc_live_con(
                        docName: docName, docSpeciality: docSpeciality),
                    p_main_doc_live_con(
                        docName: docName, docSpeciality: docSpeciality),
                    p_main_doc_live_con(
                        docName: docName, docSpeciality: docSpeciality),
                    p_main_doc_live_con(
                        docName: docName, docSpeciality: docSpeciality),
                    p_main_doc_live_con(
                        docName: docName, docSpeciality: docSpeciality),
                  ],
                ),
              ),
              const SizedBox(height: 16,),
              const Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      '   Recent History',style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'See All',style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              Column(
                children: <Widget>[
                  p_main_recent_history(
                      docName: docName, docSpeciality: docSpeciality),
                  p_main_recent_history(
                      docName: docName, docSpeciality: docSpeciality),
                  p_main_recent_history(
                      docName: docName, docSpeciality: docSpeciality),
                  p_main_recent_history(
                      docName: docName, docSpeciality: docSpeciality),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}