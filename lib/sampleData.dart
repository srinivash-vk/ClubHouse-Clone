class User {
  final String firstName;
  final String lastName;
  final String imageUrl;

  const User({
    required this.firstName,
    required this.lastName,
    required this.imageUrl,
  });
}

const User currentUser = User(
  firstName: 'Tony',
  lastName: 'jarvis',
  imageUrl:
      'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
);

const List<User> _allUsers = [
  User(
    firstName: 'Tony',
    lastName: 'Jarvis',
    imageUrl:
        'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
  ),
  User(
    firstName: 'David',
    lastName: 'Walls',
    imageUrl:
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    firstName: 'Under',
    lastName: 'Taker',
    imageUrl:
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    firstName: 'Matthew',
    lastName: 'Stone',
    imageUrl:
        'https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80',
  ),
  User(
    firstName: 'Will',
    lastName: 'Smith',
    imageUrl:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80',
  ),
  User(
    firstName: 'Edith',
    lastName: 'Spidy',
    imageUrl:
        'https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80',
  ),
  User(
    firstName: 'Emma',
    lastName: 'Stone',
    imageUrl:
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
  User(
    firstName: 'Paul',
    lastName: 'Walker',
    imageUrl:
        'https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  ),
  User(
      firstName: 'Jhonny',
      lastName: 'Depp',
      imageUrl:
          'https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80'),
  User(
    firstName: 'James',
    lastName: 'Bond 007',
    imageUrl:
        'https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80',
  ),
  User(
    firstName: 'Jessie',
    lastName: 'Karthick',
    imageUrl:
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
  ),
];

class Room {
  final String club;
  final String name;
  final String time;
  final List<User> speakers;
  final List<User> followedBySpeakers;
  final List<User> others;

  const Room({
    required this.club,
    required this.name,
    this.time = '',
    this.speakers = const [],
    this.followedBySpeakers = const [],
    this.others = const [],
  });
}

const List<Room> upcomingRoomsList = [
  Room(
    club: 'Flutter',
    name: 'Flutter Engage Recap 🔴',
    time: '3:00 PM',
  ),
  Room(
    club: 'New User Welcoming',
    name: 'Welcome to Clubhouse 👋',
    time: '7:00 PM',
  ),
  Room(
    club: '',
    name: 'Clubhouse Turns 1',
    time: '9:00 PM',
  ),
  Room(
    club: '',
    name: 'Tesla Fraud',
    time: '12:50 AM',
  ),
];

final List<Room> roomsList = [
  Room(
    club: 'Social Media',
    name: 'Welcome to Clubhouse 🎉 ',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    club: 'Good Time',
    name: '⏰ A Very Important Person on Good Time',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    club: '₿ CryptoCurrency',
    name: 'love and bitcoin edition 💰',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    club: 'Tesla Worst',
    name: '🚘 Buying Tesla Nor Worth',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
];
