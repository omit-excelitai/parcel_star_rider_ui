class WithdrawHistoryModel{
  String? dateTime;
  String? paymentInvoice;
  String? amount;
  String? status;
  int? id;
  
  WithdrawHistoryModel({this.id, required this.dateTime, required this.paymentInvoice, required this.amount, required this.status});
}


List<WithdrawHistoryModel> withdrawHistoryList = [
  WithdrawHistoryModel(id: 1, dateTime: '05/11/22 10:33:05', paymentInvoice: '10215', amount: '500', status: 'Pending'),
  WithdrawHistoryModel(id: 2, dateTime: '05/11/22 10:33:05', paymentInvoice: '52114', amount: '865', status: 'Pending'),
  WithdrawHistoryModel(id: 3, dateTime: '05/11/22 10:33:05', paymentInvoice: '75487', amount: '200', status: 'Paid'),
  WithdrawHistoryModel(id: 4, dateTime: '05/11/22 10:33:05', paymentInvoice: '57863', amount: '52', status: 'Paid'),
  WithdrawHistoryModel(id: 5, dateTime: '05/11/22 10:33:05', paymentInvoice: '86835', amount: '1000', status: 'paid'),
  WithdrawHistoryModel(id: 6, dateTime: '05/11/22 10:33:05', paymentInvoice: '45352', amount: '6200', status: 'Pending'),
  WithdrawHistoryModel(id: 7, dateTime: '05/11/22 10:33:05', paymentInvoice: '85245', amount: '85', status: 'Pending'),
  WithdrawHistoryModel(id: 8, dateTime: '05/11/22 10:33:05', paymentInvoice: '75282', amount: '30', status: 'Paid'),
  WithdrawHistoryModel(id: 9, dateTime: '05/11/22 10:33:05', paymentInvoice: '95725', amount: '58', status: 'Paid'),
  WithdrawHistoryModel(id: 10, dateTime: '05/11/22 10:33:05', paymentInvoice: '38574', amount: '400', status: 'Pending'),
];

