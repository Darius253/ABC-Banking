class AccountCard {
  late String type;
  late String userId;
  late String cvv;
  late String cardNumber;
  late DateTime expiryDate;
  late String pin;

  AccountCard({
    required this.cardNumber,
    required this.cvv,
    required this.expiryDate,
    required this.type,
    required this.userId,
    required this.pin,
  });
}
