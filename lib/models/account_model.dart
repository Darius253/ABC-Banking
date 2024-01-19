class Account {
  late String type;
  late String userId;
  late String balance;
  late String accountNumber;
  late DateTime registeredDate;

  Account({
    required this.accountNumber,
    required this.balance,
    required this.registeredDate,
    required this.type,
    required this.userId,
  });
}
