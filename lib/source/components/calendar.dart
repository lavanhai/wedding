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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '3',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'April',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  '2025',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          CalendarView(),
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

    int prevMonthDays = firstDay.weekday - 1;

    for (int i = prevMonthDays; i > 0; i--) {
      days.add(firstDay.subtract(Duration(days: i)));
    }

    for (int i = 0; i < lastDay.day; i++) {
      days.add(DateTime(year, month, i + 1));
    }

    int nextMonthDays = (7 - (days.length % 7)) % 7;
    for (int i = 1; i <= nextMonthDays; i++) {
      days.add(lastDay.add(Duration(days: i)));
    }

    return days;
  }

  @override
  Widget build(BuildContext context) {
    List<DateTime> days = getMonthDays(year, month);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:
              ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
                  .map(
                    (day) => Text(
                      day,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                  .toList(),
        ),
        const Divider(thickness: 1),
        const SizedBox(height: 10),
        SizedBox(
          height: 300,
          width: double.infinity,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
            ),
            itemCount: days.length,
            itemBuilder: (context, index) {
              bool isCurrentMonth = days[index].month == month;
              bool isSpecialDay =
                  isCurrentMonth &&
                  (days[index].day == 5 || days[index].day == 6);

              return Container(
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: isCurrentMonth ? Colors.blue[100] : Colors.grey[300],
                  borderRadius: BorderRadius.circular(5),
                ),
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Text(
                      DateFormat('d').format(days[index]),
                      style: TextStyle(
                        color: isCurrentMonth ? Colors.black : Colors.grey,
                        fontWeight:
                            isCurrentMonth
                                ? FontWeight.bold
                                : FontWeight.normal,
                      ),
                    ),
                    if (isSpecialDay)
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: SizedBox(
                            child: Image.asset(
                              "assets/heart.png",
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
