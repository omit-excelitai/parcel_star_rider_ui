class ParcelModel {
  int? serialNo;
  String? invoice;
  String? amount;
  String? type;
  
  ParcelModel({required this.serialNo, required this.invoice, required this.amount, required this.type});
}

List<ParcelModel> parcelList = [
  ParcelModel(serialNo: 1, invoice: '46535', amount: '500', type: 'Express'),
  ParcelModel(serialNo: 2, invoice: '98263', amount: '2000', type: 'Regular'),
  ParcelModel(serialNo: 3, invoice: '89654', amount: '8800', type: 'Express'),
  ParcelModel(serialNo: 4, invoice: '58765', amount: '5000', type: 'Express'),
  ParcelModel(serialNo: 5, invoice: '82520', amount: '400', type: 'Express'),
  ParcelModel(serialNo: 6, invoice: '40045', amount: '1000', type: 'Regular'),
  ParcelModel(serialNo: 7, invoice: '10054', amount: '2510', type: 'Regular'),
  ParcelModel(serialNo: 8, invoice: '75058', amount: '5722', type: 'Express'),
  ParcelModel(serialNo: 9, invoice: '58720', amount: '50', type: 'Express'),
  ParcelModel(serialNo: 10, invoice: '87522', amount: '9000', type: 'Regular'),
];