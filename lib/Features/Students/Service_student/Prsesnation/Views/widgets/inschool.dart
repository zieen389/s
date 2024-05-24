import 'package:flutter/material.dart';
import 'package:myshop/constant.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
class Inschool extends StatefulWidget {
  const Inschool({super.key});

  @override
  State<Inschool> createState() => _InschoolState();
}

class _InschoolState extends State<Inschool> {
  get date => null;

  @override
  void initState() {
    super.initState();
    // Initialize attendance status with some sample data (replace with actual data source)
   _attendanceStatus[DateTime.now()] = AttendanceStatus.present; // Set some initial data
_attendanceStatus[DateTime.now().add(Duration(days: 1))] = AttendanceStatus.absent;
_attendanceStatus[DateTime.now().add(Duration(days: 2))] = AttendanceStatus.late;}
  Map<DateTime, AttendanceStatus> _attendanceStatus = {};
  
 bool _isWeekend(DateTime date) {
  return date.weekday == DateTime.saturday && date.weekday == DateTime.friday;
}
 
  DateTime _selectedDate = DateTime.now();
  DateTime _currentlySelectedDate = DateTime.now();
  Map<DateTime, Color> _pressedButtons = {};


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KPrimeryColor2,
       appBar: AppBar(
        backgroundColor: KPrimeryColor1,
      title: Text(" حضور الطالب"),
    ),
    body: Center(
      child: CalendarCarousel(
        headerTextStyle: TextStyle(color: KPrimeryColor1, fontSize: 20),
         firstDayOfWeek: 0,
         todayButtonColor: KPrimeryColor1,
         showOnlyCurrentMonthDate: true,
       iconColor: KPrimeryColor1,
       dayButtonColor: _attendanceStatus.containsKey(date)
    ? getAttendanceStatusColor(_attendanceStatus[date]!)
    : Colors.white,  // Use default color for dates without status
     onDayPressed: (date, events) {
    setState(() {
    AttendanceStatus newStatus;
    switch (_pressedButtons[date]) {
      case Colors.green:
        newStatus = AttendanceStatus.absent; // Change from present to absent
        break;
      case Colors.red:
        newStatus = AttendanceStatus.late; // Change from absent to late
        break;
      case Colors.yellow:
        newStatus = AttendanceStatus.present; // Change from late to present
        break;
      default:
        newStatus = AttendanceStatus.present; // Default to present for new buttons
        break;
    }
    
    _attendanceStatus[date] = newStatus; // Update attendance status
    _pressedButtons[date] = getAttendanceStatusColor(newStatus); // Update button color
    _selectedDate = date;
    });
    },
     
    ),
    
      ));
   
  }
}
Color getAttendanceStatusColor(AttendanceStatus status) {
  switch (status) {
    case AttendanceStatus.present:
      return Colors.green;
    case AttendanceStatus.absent:
      return Colors.red;
    case AttendanceStatus.late:
      return Colors.yellow;
    default:
      return KPrimeryColor2; // Default color if status is unknown
  }
}

enum AttendanceStatus {
  present,
  absent,
  late,
}