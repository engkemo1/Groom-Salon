import 'package:day_picker/day_picker.dart';
import 'package:flutter/material.dart';
import 'package:selectable_container/selectable_container.dart';
import 'package:time_range/time_range.dart';

import '../uidata.dart';
import '../widgets/button.dart';
import '../widgets/date_column.dart';
import '../widgets/specialist_column_book.dart';

class BookPage extends StatefulWidget {
  final  from ;
  final  to ;

  const BookPage({super.key, this.from, this.to});

  @override
  _BookPageState createState() => _BookPageState();
}


class _BookPageState extends State<BookPage> {
  final List<DayInWeek> _days = [
    DayInWeek(
      "Sun",
    ),
    DayInWeek(
      "Mon",
    ),
    DayInWeek(
        "Tue",
        isSelected: true
    ),
    DayInWeek(
      "Wed",
    ),
    DayInWeek(
      "Thu",
    ),
    DayInWeek(
      "Fri",
    ),
    DayInWeek(
      "Sat",
    ),
  ];

  bool _selected=false;
  bool _select1 = false;
  bool _select2 = false;
  bool _select3 = false;
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    //buttonTime

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        leading: IconButton(
            icon: Icon(Icons.chevron_left, color: Colors.white),
            onPressed: () => Navigator.pop(context)),
        title: Text("Book Appointment"),
      ),
      body: Container(
        width: screen_size_width,
        height: screen_size_height,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  color: Color(0xff07030E),
                  width: screen_size_width,
                  child: Column(children: <Widget>[
                    SizedBox(height: 30,),
                    SizedBox(height: 10),
                SelectWeekDays(
                  fontSize:14,
                  fontWeight: FontWeight.w500,
                  days: _days,
                  border: false,
                  boxDecoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [UIData.mainColor, Colors.pinkAccent],
                      tileMode:
                      TileMode.repeated, // repeats the gradient over the canvas
                    ),
                  ),
                  onSelect: (values) { // <== Callback to handle the selected days
                    print(values);
                  },
                ),
                  ])),
              Container(
                  width: screen_size_width,
                  color: Color(0xff07030E),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 18),
                      Text("Available Slot", style: TextStyle(fontSize: 16)),
                      SizedBox(height: 18),
                      TimeRange(
                        fromTitle: Text('From', style: TextStyle(fontSize: 18, color: Colors.grey),),
                        toTitle: Text('To', style: TextStyle(fontSize: 18, color: Colors.grey),),
                        titlePadding: 20,
                        textStyle: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),
                        activeTextStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                        borderColor: Colors.black,
                        backgroundColor: Colors.white12,
                        activeBackgroundColor: UIData.mainColor,
                        firstTime: TimeOfDay(hour: widget.from, minute: 00),
                        lastTime: TimeOfDay(hour: widget.to, minute: 00),
                        timeStep: 60,
                        timeBlock:60,
                        onRangeCompleted: (range) => setState(() => print(range)),
                      )     ,                 SizedBox(height: 25),
                      Text("Choose Hair Specialists",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600)),
              SizedBox(height: 10),

              Container(
                  height: 180,
                  width: screen_size_width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SelectableContainer  (
                        selected: _selected,
                        borderSize: 0,

                        marginColor: Colors.black,
                        selectedBackgroundColor: Colors.black,
                        unselectedBackgroundColor: Colors.black,
                        onValueChanged: (bool newValue) {
                          setState(() {
                            _selected = newValue;
                          });


                        },
                        child: SpecialistColumnBook(
                            specImg: "images/braid2.jpg", specName: "Anny Roy"),
                      ),
                      SizedBox(width: 25),
                      SpecialistColumnBook(
                          specImg: "images/profile.jpg", specName: "Joy Roy"),
                      SizedBox(width: 25),
                      SpecialistColumnBook(
                          specImg: "images/braid3.jpg",
                          specName: "Patience Roy"),
                    ],
                  ))
                    ],
                  )),
                  SizedBox(height: 10),
                  MyButton(btnText: "Book Appointment",
            onpressed: (){}),
            SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
