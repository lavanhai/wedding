import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  CalendarState createState() => CalendarState();
}

class CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [Text('3'), const SizedBox(width: 10), Text('March')],
              ),
              Text('2024'),
            ],
          ),
          CalendarView()
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceAround,
          //   children: [
          //     Column(children: [Text('Mon')]),
          //     Column(children: [Text('Tue')]),
          //     Column(children: [Text('Wed')]),
          //     Column(children: [Text('Thu')]),
          //     Column(children: [Text('Fri')]),
          //     Column(children: [Text('Sat')]),
          //     Column(children: [Text('Sun')]),
          //   ],
          // ),
        ],
      ),
    );
  }
}

class CalendarView extends StatelessWidget {
  final int year = 2025;
  final int month = 4;

  const CalendarView({super.key});

  List<DateTime> getMonthDays(int year, int month) {
    List<DateTime> days = [];
    DateTime firstDay = DateTime(year, month, 1);
    DateTime lastDay = DateTime(year, month + 1, 0);

    int prevMonthDays = firstDay.weekday % 7;
    for (int i = prevMonthDays; i > 0; i--) {
      days.add(firstDay.subtract(Duration(days: i)));
    }

    for (int i = 0; i < lastDay.day; i++) {
      days.add(DateTime(year, month, i + 1));
    }

    int nextMonthDays = 7 - (days.length % 7);
    if (nextMonthDays < 7) {
      for (int i = 1; i <= nextMonthDays; i++) {
        days.add(lastDay.add(Duration(days: i)));
      }
    }

    return days;
  }

  @override
  Widget build(BuildContext context) {
    List<DateTime> days = getMonthDays(year, month);

    return Scaffold(
      appBar: AppBar(title: Text("April 2025")),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"].map((day) => Text(day, style: TextStyle(fontWeight: FontWeight.bold))).toList(),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 7),
              itemCount: days.length,
              itemBuilder: (context, index) {
                bool isCurrentMonth = days[index].month == month;
                return Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: isCurrentMonth ? Colors.blue[100] : Colors.grey[300],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    DateFormat('d').format(days[index]),
                    style: TextStyle(
                      color: isCurrentMonth ? Colors.black : Colors.grey,
                      fontWeight: isCurrentMonth ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
