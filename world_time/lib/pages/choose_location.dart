import 'package:flutter/material.dart';
import 'package:com/services/world_time.dart';
class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorlTime> locations = [
    WorlTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorlTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    WorlTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorlTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorlTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorlTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorlTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorlTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    WorlTime(url: 'Asia/Kolkata', location: 'India', flag: 'indonesia.png'),
  ];
  void updatetime(index) async
  {
    WorlTime inst = locations[index];
    await inst.getTime();
    Navigator.pop(context,{
      'location':inst.location,
      'flag':inst.flag,
      'time':inst.time,
      'isDay':inst.isDay,
    } );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor:Colors.blue[900],
        title: Text("Choose a Location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context,index){
          return Card(
            child: ListTile(
              onTap: () {
               updatetime(index);
              },
              title: Center(child:Text(locations[index].location)),
            ),
          );
        },
      ),
    );
  }
}
