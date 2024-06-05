import 'package:flutter/material.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({super.key});

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Y-M-D = ${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day} '),
            ElevatedButton(
              onPressed: () async {
                final DateTime? datetime = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2000),
                  lastDate: DateTime(3000),
                );
                if (datetime != null) {
                  setState(() {
                    selectedDate = datetime;
                  });
                }
              },
              child: Text('Chose Time'),
            ),
          ],
        ),
      ),
    );
  }
}
