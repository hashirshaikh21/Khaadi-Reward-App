// import 'package:http/http.dart' as http;
import '../models/user.dart';
import '../models/transaction.dart';

class ApiService {
  // static const String baseUrl = 'http://localhost:5085/api/Customer';

  // Mock data for UI/UX development
  static final User _mockUser = User(
    id: 'mock-user-123',
    name: 'John Doe',
    phone: '+1234567890',
    points: 1250,
  );

  static final List<Transaction> _mockTransactions = [
    Transaction(
      id: '1',
      amount: 50,
      description: 'Performance bonus - Q4 2024',
      date: DateTime.now().subtract(Duration(days: 1)),
    ),
    Transaction(
      id: '2',
      amount: -25,
      description: 'Points redeemed at store',
      date: DateTime.now().subtract(Duration(days: 3)),
    ),
    Transaction(
      id: '3',
      amount: 75,
      description: 'Excellence award - Customer service',
      date: DateTime.now().subtract(Duration(days: 7)),
    ),
    Transaction(
      id: '4',
      amount: 30,
      description: 'Employee recognition - Team player',
      date: DateTime.now().subtract(Duration(days: 14)),
    ),
  ];

  static Future<String?> login(String phone) async {
    // Mock login - always succeeds for UI development
    await Future.delayed(Duration(seconds: 1)); // Simulate network delay
    return 'mock-token-123';
    
    // Original backend code commented out:
    // final response = await http.post(
    //   Uri.parse('$baseUrl/login'),
    //   headers: {'Content-Type': 'application/json'},
    //   body: jsonEncode({'phoneNumber': phone}),
    // );
    // if (response.statusCode == 200) {
    //   final data = jsonDecode(response.body);
    //   return data['token'] ?? data['userId'];
    // }
    // return null;
  }

  static Future<User?> getProfile() async {
    // Mock profile data for UI development
    await Future.delayed(Duration(milliseconds: 500)); // Simulate network delay
    return _mockUser;
    
    // Original backend code commented out:
    // final response = await http.get(
    //   Uri.parse('$baseUrl/customer/profile'),
    //   headers: {'Content-Type': 'application/json'},
    // );
    // if (response.statusCode == 200) {
    //   final data = jsonDecode(response.body);
    //   return User.fromJson(data);
    // }
    // return null;
  }

  static Future<List<Transaction>> getTransactions() async {
    // Mock transaction data for UI development
    await Future.delayed(Duration(milliseconds: 800)); // Simulate network delay
    return _mockTransactions;
    
    // Original backend code commented out:
    // final response = await http.get(
    //   Uri.parse('$baseUrl/customer/transactions'),
    //   headers: {'Content-Type': 'application/json'},
    // );
    // if (response.statusCode == 200) {
    //   final List<dynamic> data = jsonDecode(response.body);
    //   return data.map((json) => Transaction.fromJson(json)).toList();
    // }
    // return [];
  }
} 