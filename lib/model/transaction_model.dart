class TransactionModel {
  String tId = "";
  String tImage = "";
  String tType = "";
  String tName = "";
  String tAmt = "";
  String tTime = "";
  int tCode = 0;

  TransactionModel(
      {required this.tId,
      required this.tImage,
      required this.tType,
      required this.tName,
      required this.tAmt,
      required this.tTime,
      required this.tCode});
}
