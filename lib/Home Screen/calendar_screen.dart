import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  bool _startDateSet = false;
  bool _endDateSet = false;

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      if (!_startDateSet) {
        _rangeStart = selectedDay;
        _startDateSet = true;
        _endDateSet = false;
      } else if (!_endDateSet) {
        if (_rangeStart != null && selectedDay.isAfter(_rangeStart!)) {
          _rangeEnd = selectedDay;
          _endDateSet = true;
        } else {
          _rangeStart = selectedDay;
          _rangeEnd = null;
          _endDateSet = false;
        }
      } else {
        _rangeStart = selectedDay;
        _rangeEnd = null;
        _startDateSet = true;
        _endDateSet = false;
      }

      _selectedDay = selectedDay;
      _focusedDay = focusedDay;
    });
  }

  void _onSetStartDate() {
    if (_selectedDay != null) {
      setState(() {
        _rangeStart = _selectedDay;
        _startDateSet = true;
        // Reset end date if it's set
        _rangeEnd = null;
        _endDateSet = false;
      });
    }
  }

  void _onSetEndDate() {
    if (_selectedDay != null &&
        _rangeStart != null &&
        _selectedDay!.isAfter(_rangeStart!)) {
      setState(() {
        _rangeEnd = _selectedDay;
        _endDateSet = true;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Please select a valid end date that is after the start date.',
          ),
        ),
      );
    }
  }

  void _onOkButtonPressed() {
    if (_rangeStart != null && _rangeEnd != null) {
      Navigator.pushNamed(
        context,
        '/entry-list',
        arguments: {'start': _rangeStart, 'end': _rangeEnd},
      );
    } else if (_rangeStart != null) {
      Navigator.pushNamed(
        context,
        '/entry-list',
        arguments: {'start': _rangeStart},
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Please select a date or range of dates.',
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calendar View',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: _onDaySelected,
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              calendarStyle: CalendarStyle(
                todayDecoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
                rangeStartDecoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.5),
                  shape: BoxShape.rectangle,
                ),
                rangeEndDecoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.5),
                  shape: BoxShape.rectangle,
                ),
                rangeHighlightColor: Colors.blue.withOpacity(0.2),
              ),
              rangeSelectionMode: RangeSelectionMode.enforced,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: _onSetStartDate,
                style: ElevatedButton.styleFrom(
                  backgroundColor: _startDateSet ? Colors.blue : Colors.grey,
                ),
                child: const Text(
                  'Set Start Date',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _onSetEndDate,
                style: ElevatedButton.styleFrom(
                  backgroundColor: (_endDateSet ||
                          (_startDateSet &&
                              _selectedDay != null &&
                              _rangeStart != null &&
                              _selectedDay!.isAfter(_rangeStart!)))
                      ? Colors.blue
                      : Colors.grey,
                ),
                child: const Text(
                  'Set End Date',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: _onOkButtonPressed,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue, // Text color
            ),
            child: const Text(
              'OK',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
