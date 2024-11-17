class User {
  const User({
    required this.id,
    required this.name,
    required this.balance,
  });

  final int id;
  final String name;
  final String balance;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      balance: json['balance'],
    );
  }
}
