import 'dart:math';

class LocalOrder {
  int id = Random().nextInt(10);
  int? order_id;
  int? seq_no;
  String? order_type;
  String? expected_date;

  LocalOrder(this.id , this.order_id, this.seq_no, this.order_type, this.expected_date);

  LocalOrder.fromJson(Map<String, dynamic> json) {
    order_id = json['order_id'];
    seq_no = json['seq_no'];
    order_type = json['order_type'];
    expected_date = json['expected_date'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'order_id': order_id,
      'seq_no': seq_no,
      'order_type': order_type,
      'expected_date': expected_date,
    };
  }
}
