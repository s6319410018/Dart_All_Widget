import 'package:flutter/material.dart';

class DataColumnWidget extends StatelessWidget {
  DataColumnWidget({Key? key});

  TextStyle title =
      const TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DataTable(
          columns: <DataColumn>[
            DataColumn(
              label: Text(
                'Name',
                style: title,
              ),
            ),
            DataColumn(
              label: Text(
                'Age',
                style: title,
              ),
            ),
            DataColumn(
              label: Text(
                'Colors',
                style: title,
              ),
            ),
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(
                  Text("Max"),
                ),
                DataCell(
                  Text("21"),
                ),
                DataCell(
                  Text("Red"),
                ),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(
                  Text("Jone"),
                ),
                DataCell(
                  Text("25"),
                ),
                DataCell(
                  Text("Blue"),
                ),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(
                  Text("Willium"),
                ),
                DataCell(
                  Text("25"),
                ),
                DataCell(
                  Text("Yellow"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}