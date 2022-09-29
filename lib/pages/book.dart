import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:day_picker/day_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:selectable_container/selectable_container.dart';
import 'package:time_range/time_range.dart';

import '../uidata.dart';
import '../viewModel/getx_controller/appoinment_controller/book_controller.dart';
import '../widgets/button.dart';
import '../widgets/specialist_column_book.dart';
import 'package:get/get.dart';

class BookPage extends GetView<BookController> {
  final int? from;

  final int? to;

  final String? salonId;
  final String? docId;
  final String? name;

  final String? price;

  BookPage(
      {super.key,
      this.name,
      this.price,
      this.from,
      this.to,
      this.salonId,
      this.docId});

  final List<DayInWeek> _days = [
    DayInWeek(
      "Sun",
    ),
    DayInWeek(
      "Mon",
    ),
    DayInWeek("Tue", isSelected: true),
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

  String? date;

  int? _select3;

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
        body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('users')
                .where('salonId', isEqualTo: salonId.toString())
                .snapshots(),
            builder: (context, AsyncSnapshot snapshot) {
              var snap = snapshot.data.docs;

              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator.adaptive(
                  backgroundColor: UIData.mainColor,
                );
              } else {
                return GetBuilder<BookController>(
                    init: Get.put(BookController()),
                    initState: (_) {
                      BookController().selectedIndex;
                    },
                    builder: (_) {
                      return Container(
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
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    CalendarTimeline(
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime(2023, 11, 20),
                                      onDateSelected: (date) => controller
                                              .date =
                                          DateFormat('yyyy-MM-dd').format(date),
                                      leftMargin: 20,
                                      monthColor: Colors.white,
                                      dayColor: Colors.white,
                                      activeDayColor: Colors.pink,
                                      activeBackgroundDayColor:
                                          UIData.mainColor,
                                      dotsColor: Color(0xFF333A47),
                                      selectableDayPredicate: (date) =>
                                          date.day != 23,
                                      locale: 'en_ISO',
                                    )
                                  ])),
                              Container(
                                  width: screen_size_width,
                                  color: const Color(0xff07030E),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const SizedBox(height: 18),
                                      const Text("Available Slot",
                                          style: TextStyle(fontSize: 16)),
                                      const SizedBox(height: 18),
                                      TimeRange(
                                          fromTitle: const Text(
                                            'From',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.grey),
                                          ),
                                          toTitle: const Text(
                                            'To',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.grey),
                                          ),
                                          titlePadding: 20,
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                          activeTextStyle: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.pink),
                                          borderColor: Colors.black,
                                          activeBorderColor: Colors.transparent,
                                          backgroundColor: Colors.white12,
                                          activeBackgroundColor:
                                              UIData.mainColor,
                                          firstTime: TimeOfDay(
                                              hour: from!, minute: 00),
                                          lastTime:
                                              TimeOfDay(hour: to!, minute: 00),
                                          timeStep: 60,
                                          timeBlock: 60,
                                          onRangeCompleted: (
                                            range,
                                          ) {
                                            controller.from =
                                                range!.start.format(context);
                                            controller.to =
                                                range.end.format(context);
                                          }),
                                      SizedBox(height: 25),
                                      const Text("Choose Hair Specialists",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600)),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                          height: 180,
                                          width: screen_size_width,
                                          child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: List.generate(
                                                snap.length,
                                                (index) => SelectableContainer(
                                                  selected: controller
                                                              .selectedIndex ==
                                                          index
                                                      ? controller.selected =
                                                          true
                                                      : controller.selected =
                                                          false,
                                                  borderSize: 0,
                                                  marginColor: Colors.black,
                                                  selectedBackgroundColor:
                                                      Colors.black,
                                                  unselectedBackgroundColor:
                                                      Colors.black,
                                                  selectedBackgroundColorIcon:
                                                      UIData.mainColor,
                                                  onValueChanged:
                                                      (bool newValue) {},
                                                  child: InkWell(
                                                    onTap: () {
                                                      controller.select(index);
                                                      controller.specialistId =
                                                          snap[index]['uid'];
                                                      controller.specialistImage=   snap[index]
                                                      ['imageUrl'];
                                                      controller.specialistName=snap[index]
                                                      ['name'];
                                                    },
                                                    child: SpecialistColumnBook(
                                                        specImg: snap[index]
                                                            ['imageUrl'],
                                                        specName: snap[index]
                                                            ['name']),
                                                  ),
                                                ),
                                              )))
                                    ],
                                  )),
                              const SizedBox(height: 10),
                              MyButton(
                                  btnText: "Book Appointment",
                                  onpressed: () {
                                    controller.name = name;
                                    controller.price = price;
                                    controller.salonId=docId;
                                    controller.createOppoinment();
                                  }),
                              SizedBox(height: 20)
                            ],
                          ),
                        ),
                      );
                    });
              }
            }));
  }
}
