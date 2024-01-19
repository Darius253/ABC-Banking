class Transactions {
  late String transactionType;
  late DateTime transactionTime;
  late String transactionAmount;
  late String balance;

  Transactions({
    required this.transactionAmount,
    required this.transactionTime,
    required this.transactionType,
    required this.balance,
  });
}
