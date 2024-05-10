import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  final db = FirebaseFirestore.instance;

  late List<Meeting> meetings = [];

  Future<void> _cargarDatos() async {
    await db.collection('calendario').get().then((documentos) {
      List<Meeting> m = [];
      for (var doc in documentos.docs) {
        final datos = doc.data();
        final nombre = datos['Nombre'];
        final inicio = (datos['Inicio'] as Timestamp).toDate();
        final fin = (datos['Fin'] as Timestamp).toDate();
        final color = Color(datos['Color']);
        m.add(Meeting(nombre, inicio, fin, color, false));
      }
      if (!mounted) return;
      setState(() {
        meetings = m;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _cargarDatos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calendario',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: SfCalendar(
          view: CalendarView.month,
          firstDayOfWeek: 1,
          monthViewSettings: const MonthViewSettings(showAgenda: true),
          dataSource: MeetingDataSource(meetings),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/Agregar evento');
        },
        heroTag: 'Agregar',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
