class Transaction {
  final String id;
  final DateTime date;
  final String description;
  final int amount;

  Transaction({
    required this.id,
    required this.date,
    required this.description,
    required this.amount,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      id: json['id'] ?? '',
      date: DateTime.parse(json['date']),
      description: json['description'] ?? '',
      amount: json['amount'] ?? 0,
    );
  }
} 