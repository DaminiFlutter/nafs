import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nafs/screens/home/payment_screen.dart';
import 'package:sizer/sizer.dart';
import '../../constants/dataconstants.dart';
import '../../widgets/appointment_widgets.dart';
import '../../widgets/button.dart';
import '../../widgets/common_label.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:flutter_clean_calendar/clean_calendar_event.dart';
import 'package:get/get.dart';

class BookSession extends StatefulWidget {
  const BookSession({Key? key}) : super(key: key);

  @override
  State<BookSession> createState() => _BookSessionState();
}

class _BookSessionState extends State<BookSession> {
  int selectedIndex = 0;

  final Map<DateTime, List<CleanCalendarEvent>> _events = {
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day): [
      CleanCalendarEvent('Event A',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 12, 0),
          description: 'A special event',
          color: Colors.blue),
    ],
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 2):
        [
      CleanCalendarEvent('Event B',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 12, 0),
          color: Colors.orange),
      CleanCalendarEvent('Event C',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.pink),
    ],
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 3):
        [
      CleanCalendarEvent('Event B',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 12, 0),
          color: Colors.orange),
      CleanCalendarEvent('Event C',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.pink),
      CleanCalendarEvent('Event D',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.amber),
      CleanCalendarEvent('Event E',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.deepOrange),
      CleanCalendarEvent('Event F',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.green),
      CleanCalendarEvent('Event G',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.indigo),
      CleanCalendarEvent('Event H',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.brown),
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: CommonLabel(
                      text: "Book a session",
                      size: 21,
                      color: DataConstants.blackColor,
                      weight: FontWeight.w600)),
              SizedBox(
                height: 1.h,
              ),
              Center(
                  child: CommonLabel(
                      text: "Choose the date and time",
                      size: 18,
                      color: DataConstants.blackColor,
                      weight: FontWeight.w600)),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 400,
                child: Calendar(
                  startOnMonday: true,
                  events: _events,
                  onRangeSelected: (range) =>
                      print('Range is ${range.from}, ${range.to}'),
                  // onDateSelected: (date) => _handleNewDate(date),
                  isExpandable: false,
                  isExpanded: true,
                  weekDays: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                  eventDoneColor: Colors.green,

                  selectedColor: Colors.pink,
                  todayColor: Colors.blue,
                  eventColor: Colors.transparent,

                  // todayButtonText: 'Heute',
                  expandableDateFormat: 'dd. MMMM yyyy',
                  dayOfWeekStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 11),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              CommonLabel(
                  text: "Available Time Slots",
                  size: 18,
                  color: DataConstants.lightBlackColor,
                  weight: FontWeight.w600),
              SizedBox(
                height: 1.h,
              ),
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0;
                          });
                        },
                        child: CommonContainer(
                          textColor: selectedIndex == 0
                              ? DataConstants.whiteColor
                              : DataConstants.lightBlackColor,
                          radius: 15,
                          bgColor: selectedIndex == 0
                              ? DataConstants.blueColor
                              : DataConstants.bgGreyColor,
                          borderColor:
                              DataConstants.lightBlackColor.withOpacity(0.1),
                          text: "09:00 AM",
                        )),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      child: CommonContainer(
                          textColor: selectedIndex == 1
                              ? DataConstants.whiteColor
                              : DataConstants.lightBlackColor,
                          radius: 15,
                          bgColor: selectedIndex == 1
                              ? DataConstants.blueColor
                              : DataConstants.bgGreyColor,
                          borderColor:
                              DataConstants.lightBlackColor.withOpacity(0.1),
                          text: "10:00 AM"),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                      },
                      child: CommonContainer(
                          textColor: selectedIndex == 2
                              ? DataConstants.whiteColor
                              : DataConstants.lightBlackColor,
                          radius: 15,
                          bgColor: selectedIndex == 2
                              ? DataConstants.blueColor
                              : DataConstants.bgGreyColor,
                          borderColor:
                              DataConstants.lightBlackColor.withOpacity(0.1),
                          text: "11:00 AM"),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 3;
                        });
                      },
                      child: CommonContainer(
                          textColor: selectedIndex == 3
                              ? DataConstants.whiteColor
                              : DataConstants.lightBlackColor,
                          radius: 15,
                          bgColor: selectedIndex == 3
                              ? DataConstants.blueColor
                              : DataConstants.bgGreyColor,
                          borderColor:
                              DataConstants.lightBlackColor.withOpacity(0.1),
                          text: "12:00 PM"),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 4;
                        });
                      },
                      child: CommonContainer(
                          textColor: selectedIndex == 4
                              ? DataConstants.whiteColor
                              : DataConstants.lightBlackColor,
                          radius: 15,
                          bgColor: selectedIndex == 4
                              ? DataConstants.blueColor
                              : DataConstants.bgGreyColor,
                          borderColor:
                              DataConstants.lightBlackColor.withOpacity(0.1),
                          text: "01:00 PM"),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 5;
                        });
                      },
                      child: CommonContainer(
                          textColor: selectedIndex == 5
                              ? DataConstants.whiteColor
                              : DataConstants.lightBlackColor,
                          radius: 15,
                          bgColor: selectedIndex == 5
                              ? DataConstants.blueColor
                              : DataConstants.bgGreyColor,
                          borderColor:
                              DataConstants.lightBlackColor.withOpacity(0.1),
                          text: "02:00 PM"),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 6;
                        });
                      },
                      child: CommonContainer(
                          textColor: selectedIndex == 6
                              ? DataConstants.whiteColor
                              : DataConstants.lightBlackColor,
                          radius: 15,
                          bgColor: selectedIndex == 6
                              ? DataConstants.blueColor
                              : DataConstants.bgGreyColor,
                          borderColor:
                              DataConstants.lightBlackColor.withOpacity(0.1),
                          text: "03:00 PM"),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 7;
                        });
                      },
                      child: CommonContainer(
                          textColor: selectedIndex == 7
                              ? DataConstants.whiteColor
                              : DataConstants.lightBlackColor,
                          radius: 15,
                          bgColor: selectedIndex == 7
                              ? DataConstants.blueColor
                              : DataConstants.bgGreyColor,
                          borderColor:
                              DataConstants.lightBlackColor.withOpacity(0.1),
                          text: "04:00 PM"),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 8;
                        });
                      },
                      child: CommonContainer(
                          textColor: selectedIndex == 8
                              ? DataConstants.whiteColor
                              : DataConstants.lightBlackColor,
                          radius: 15,
                          bgColor: selectedIndex == 8
                              ? DataConstants.blueColor
                              : DataConstants.bgGreyColor,
                          borderColor:
                              DataConstants.lightBlackColor.withOpacity(0.1),
                          text: "05:00 PM"),
                    ),
                  ],
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Get.to(PaymentScreen());
                },
                child: CommonButton(
                  text: "Confirm",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
// Widget _buildEventList() {
//   return Expanded(
//     child: ListView.builder(
//       padding: EdgeInsets.all(0.0),
//       itemBuilder: (BuildContext context, int index) {
//         final CleanCalendarEvent event = _selectedEvents[index];
//         final String start =
//         DateFormat('HH:mm').format(event.startTime).toString();
//         final String end =
//         DateFormat('HH:mm').format(event.endTime).toString();
//         return ListTile(
//           contentPadding:
//           EdgeInsets.only(left: 2.0, right: 8.0, top: 2.0, bottom: 2.0),
//           leading: Container(
//             width: 10.0,
//             color: event.color,
//           ),
//           title: Text(event.summary),
//           subtitle:
//           event.description.isNotEmpty ? Text(event.description) : null,
//           trailing: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [Text(start), Text(end)],
//           ),
//           onTap: () {},
//         );
//       },
//       itemCount: _selectedEvents.length,
//     ),
//   );
// }
}
