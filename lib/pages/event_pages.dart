import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {

  final events = [
    {
      "speaker" : "Defend Intelligence",
      "date" : "18h à 18h30",
      "subject" : "A la découverte des IA generatif",
      "avatar" : "defendintelligence"
    },
    {
      "speaker" : "Lior Chamla",
      "date" : "13 à 13h30",
      "subject" : "Le code legacy",
      "avatar" : "lior"
    },
    {
      "speaker" : "Damien Cavailles",
      "date" : "13h30 à 18h",
      "subject" : "git blame --no-offense",
      "avatar" : "damien"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planning du salon"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: events.length,
          itemBuilder: (context, index) {
            final event = events[index];
            final avatar = event['avatar'];
            final speaker = event['speaker'];
            final date = event['date'];
            final subject = event['subject'];

            return Card(
              child: ListTile(
                leading: Image.asset("assets/images/$avatar.jpg"),
                title: Text("$speaker ($date)"),
                subtitle: Text("$subject"),
                trailing: Icon(Icons.more_vert),
              ),
            );
          }
        )
      ),
    );
  }
}
