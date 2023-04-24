class Event {
  final DateTime date;
  final String title;
  final String description;
  final String month;
  Event({
    required this.date,
    required this.title,
    required this.description,
    required this.month,
  });
}

List<Event> getEvents() {
  return [
    Event(
      date: DateTime(2023, 4, 15),
      title: 'Family Gathering',
      description: '10:00 AM - 3:00 PM',
      month: 'May',
    ),
    Event(
      date: DateTime(2023, 4, 18),
      title: 'Work Meeting',
      description: '2:00 PM - 4:00 PM',
      month: 'Jun',
    ),
    Event(
      date: DateTime(2023, 4, 22),
      title: 'Friend\'s Birthday',
      description: '7:00 PM - 10:00 PM',
      month: 'Feb',
    ),
    Event(
      date: DateTime(2023, 5, 1),
      title: 'Team Lunch',
      description: '12:00 PM - 1:00 PM',
      month: 'May',
    ),
    Event(
      date: DateTime(2023, 4, 15),
      title: 'Family Gathering',
      description: '10:00 AM - 3:00 PM',
      month: 'Feb',
    ),
    Event(
      date: DateTime(2023, 4, 18),
      title: 'Work Meeting',
      description: '2:00 PM - 4:00 PM',
      month: 'Feb',
    ),
    Event(
      date: DateTime(2023, 4, 22),
      title: 'Friend\'s Birthday',
      description: '7:00 PM - 10:00 PM',
      month: 'May',
    ),
    Event(
      date: DateTime(2023, 5, 1),
      title: 'Team Lunch',
      description: '12:00 PM - 1:00 PM',
      month: 'Jun',
    ),
    Event(
      date: DateTime(2023, 4, 15),
      title: 'Family Gathering',
      description: '10:00 AM - 3:00 PM',
      month: 'Jun',
    ),
    Event(
      date: DateTime(2023, 4, 18),
      title: 'Work Meeting',
      description: '2:00 PM - 4:00 PM',
      month: 'May',
    ),
    Event(
      date: DateTime(2023, 4, 22),
      title: 'Friend\'s Birthday',
      description: '7:00 PM - 10:00 PM',
      month: 'Jun',
    ),
    Event(
      date: DateTime(2023, 5, 1),
      title: 'Team Lunch',
      description: '12:00 PM - 1:00 PM',
      month: 'Jun',
    ),
  ];
}
