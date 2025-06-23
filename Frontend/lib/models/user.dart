class User {
  final String id;
  final String name;
  final String phone;
  final int points;

  User({
    required this.id,
    required this.name,
    required this.phone,
    required this.points,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      phone: json['phone'] ?? '',
      points: json['points'] ?? 0,
    );
  }
} 