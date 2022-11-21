
// To parse this JSON data, do
//
//     final getOrder = getOrderFromMap(jsonString);

import 'dart:convert';

class GetOrder {
  GetOrder({
    this.status,
    this.message,
    this.data,
  });

  int? status;
  String? message;
  Data? data;

  factory GetOrder.fromJson(String str) => GetOrder.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GetOrder.fromMap(Map<String, dynamic> json) => GetOrder(
    status: json["status"] == null ? null : json["status"],
    message: json["message"] == null ? null : json["message"],
    data: json["data"] == null ? null : Data.fromMap(json["data"]),
  );

  Map<String, dynamic> toMap() => {
    "status": status == null ? null : status,
    "message": message == null ? null : message,
    "data": data == null ? null : data!.toMap(),
  };
}

class Data {
  Data({
    this.orderInfo,
    this.totalRecord,
  });

  OrderInfo? orderInfo;
  int? totalRecord;

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    orderInfo: json["orderInfo"] == null ? null : OrderInfo.fromMap(json["orderInfo"]),
    totalRecord: json["total_record"] == null ? null : json["total_record"],
  );

  Map<String, dynamic> toMap() => {
    "orderInfo": orderInfo == null ? null : orderInfo!.toMap(),
    "total_record": totalRecord == null ? null : totalRecord,
  };
}

class OrderInfo {
  OrderInfo({
    this.orders,
  });

  List<Order>? orders;

  factory OrderInfo.fromJson(String str) => OrderInfo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderInfo.fromMap(Map<String, dynamic> json) => OrderInfo(
    orders: json["orders"] == null ? null : List<Order>.from(json["orders"].map((x) => Order.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "orders": orders == null ? null : List<dynamic>.from(orders!.map((x) => x.toMap())),
  };
}

class Order {
  Order({
    this.orderId,
    this.phone,
    this.phonePinCode,
    this.address,
    this.restaurantBrandId,
    this.latitude,
    this.longitude,
    this.sequenceNo,
    this.type,
    this.companySupportNo,
    this.orderTypeId,
    this.amount,
    this.subTotal,
    this.total,
    this.tip,
    this.tax,
    this.deliveryFee,
    this.serviceFee,
    this.discount,
    this.bagFee,
    this.deliveryDate,
    this.submitedDate,
    this.expectedDate,
    this.deliveryType,
    this.isPickup,
    this.orderStatus,
    this.orderNotes,
    this.referenceNo,
    this.ordersItems,
    this.sortDate,
    this.isFuture,
    this.driverImage,
    this.driverThumbImage,
    this.driverId,
    this.companyDriver,
    this.isOnlyReceipt,
    this.isFoodreadyorderNew,
    this.isCancelorderNew,
    this.isRefundorderNew,
    this.isDelayorderNew,
    this.isAdjustorderpriceNew,
    this.isOutfordeliveryNew,
    this.isFoodreadyorder,
    this.isCancelorder,
    this.isRefundorder,
    this.isDelayorder,
    this.isAdjustorderprice,
    this.isOutfordelivery,
    this.printCount,
    this.adjustedCount,
    this.canceledCount,
    this.modifiedCount,
  });

  int? orderId;
  String? phone;
  String? phonePinCode;
  String? address;
  dynamic? restaurantBrandId;
  String? latitude;
  String? longitude;
  int? sequenceNo;
  int? type;
  String? companySupportNo;
  int? orderTypeId;
  double? amount;
  double? subTotal;
  double? total;
  double? tip;
  int? tax;
  int? deliveryFee;
  int? serviceFee;
  double? discount;
  int? bagFee;
  DateTime? deliveryDate;
  DateTime? submitedDate;
  DateTime? expectedDate;
  int? deliveryType;
  int? isPickup;
  int? orderStatus;
  String? orderNotes;
  String? referenceNo;
  List<OrdersItem>? ordersItems;
  DateTime? sortDate;
  int? isFuture;
  String? driverImage;
  String? driverThumbImage;
  String? driverId;
  CompanyDriver? companyDriver;
  int? isOnlyReceipt;
  int? isFoodreadyorderNew;
  int? isCancelorderNew;
  int? isRefundorderNew;
  int? isDelayorderNew;
  int? isAdjustorderpriceNew;
  int? isOutfordeliveryNew;
  bool? isFoodreadyorder;
  bool? isCancelorder;
  bool? isRefundorder;
  bool? isDelayorder;
  bool? isAdjustorderprice;
  bool? isOutfordelivery;
  int? printCount;
  int? adjustedCount;
  int? canceledCount;
  int? modifiedCount;

  factory Order.fromJson(String str) => Order.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Order.fromMap(Map<String, dynamic> json) => Order(
    orderId: json["order_id"] == null ? null : json["order_id"],
    phone: json["phone"] == null ? null : json["phone"],
    phonePinCode: json["phone_pin_code"] == null ? null : json["phone_pin_code"],
    address: json["address"] == null ? null : json["address"],
    restaurantBrandId: json["restaurant_brand_id"],
    latitude: json["latitude"] == null ? null : json["latitude"],
    longitude: json["longitude"] == null ? null : json["longitude"],
    sequenceNo: json["sequence_no"] == null ? null : json["sequence_no"],
    type: json["type"] == null ? null : json["type"],
  //  orderType: json["order_type"] == null ? null : json["order_type"],
    companySupportNo: json["company_support_no"] == null ? null : json["company_support_no"],
    orderTypeId: json["order_type_id"] == null ? null : json["order_type_id"],
    amount: json["amount"] == null ? null : json["amount"].toDouble(),
    subTotal: json["sub_total"] == null ? null : json["sub_total"].toDouble(),
    total: json["total"] == null ? null : json["total"].toDouble(),
    tip: json["tip"] == null ? null : json["tip"].toDouble(),
    tax: json["tax"] == null ? null : json["tax"],
    deliveryFee: json["delivery_fee"] == null ? null : json["delivery_fee"],
    serviceFee: json["service_fee"] == null ? null : json["service_fee"],
    discount: json["discount"] == null ? null : json["discount"].toDouble(),
    bagFee: json["bag_fee"] == null ? null : json["bag_fee"],
    deliveryDate: json["delivery_date"] == null ? null : DateTime.parse(json["delivery_date"]),
    submitedDate: json["submited_date"] == null ? null : DateTime.parse(json["submited_date"]),
    expectedDate: json["expected_date"] == null ? null : DateTime.parse(json["expected_date"]),
    deliveryType: json["delivery_type"] == null ? null : json["delivery_type"],
    isPickup: json["is_pickup"] == null ? null : json["is_pickup"],
    orderStatus: json["order_status"] == null ? null : json["order_status"],
    orderNotes: json["order_notes"] == null ? null : json["order_notes"],
    referenceNo: json["reference_no"] == null ? null : json["reference_no"],
    ordersItems: json["ordersItems"] == null ? null : List<OrdersItem>.from(json["ordersItems"].map((x) => OrdersItem.fromMap(x))),
    sortDate: json["sort_date"] == null ? null : DateTime.parse(json["sort_date"]),
    isFuture: json["is_future"] == null ? null : json["is_future"],
    driverImage: json["driver_image"] == null ? null : json["driver_image"],
    driverThumbImage: json["driver_thumb_image"] == null ? null : json["driver_thumb_image"],
    driverId: json["driver_id"] == null ? null : json["driver_id"],
    companyDriver: json["company_driver"] == null ? null : CompanyDriver.fromMap(json["company_driver"]),
    isOnlyReceipt: json["is_only_receipt"] == null ? null : json["is_only_receipt"],
    isFoodreadyorderNew: json["is_foodreadyorder_new"] == null ? null : json["is_foodreadyorder_new"],
    isCancelorderNew: json["is_cancelorder_new"] == null ? null : json["is_cancelorder_new"],
    isRefundorderNew: json["is_refundorder_new"] == null ? null : json["is_refundorder_new"],
    isDelayorderNew: json["is_delayorder_new"] == null ? null : json["is_delayorder_new"],
    isAdjustorderpriceNew: json["is_adjustorderprice_new"] == null ? null : json["is_adjustorderprice_new"],
    isOutfordeliveryNew: json["is_outfordelivery_new"] == null ? null : json["is_outfordelivery_new"],
    isFoodreadyorder: json["is_foodreadyorder"] == null ? null : json["is_foodreadyorder"],
    isCancelorder: json["is_cancelorder"] == null ? null : json["is_cancelorder"],
    isRefundorder: json["is_refundorder"] == null ? null : json["is_refundorder"],
    isDelayorder: json["is_delayorder"] == null ? null : json["is_delayorder"],
    isAdjustorderprice: json["is_adjustorderprice"] == null ? null : json["is_adjustorderprice"],
    isOutfordelivery: json["is_outfordelivery"] == null ? null : json["is_outfordelivery"],
    printCount: json["print_count"] == null ? null : json["print_count"],
    adjustedCount: json["adjusted_count"] == null ? null : json["adjusted_count"],
    canceledCount: json["canceled_count"] == null ? null : json["canceled_count"],
    modifiedCount: json["modified_count"] == null ? null : json["modified_count"],
  );

  Map<String, dynamic> toMap() => {
    "order_id": orderId == null ? null : orderId,
    "phone": phone == null ? null : phone,
    "phone_pin_code": phonePinCode == null ? null : phonePinCode,
    "address": address == null ? null : address,
    "restaurant_brand_id": restaurantBrandId,
    "latitude": latitude == null ? null : latitude,
    "longitude": longitude == null ? null : longitude,
    "sequence_no": sequenceNo == null ? null : sequenceNo,
    "type": type == null ? null : type,
   // "order_type": orderType == null ? null : orderTypeValues.reverse[orderType],
    "company_support_no": companySupportNo == null ? null : companySupportNo,
    "order_type_id": orderTypeId == null ? null : orderTypeId,
    "amount": amount == null ? null : amount,
    "sub_total": subTotal == null ? null : subTotal,
    "total": total == null ? null : total,
    "tip": tip == null ? null : tip,
    "tax": tax == null ? null : tax,
    "delivery_fee": deliveryFee == null ? null : deliveryFee,
    "service_fee": serviceFee == null ? null : serviceFee,
    "discount": discount == null ? null : discount,
    "bag_fee": bagFee == null ? null : bagFee,
    "delivery_date": deliveryDate == null ? null : deliveryDate!.toIso8601String(),
    "submited_date": submitedDate == null ? null : submitedDate!.toIso8601String(),
    "expected_date": expectedDate == null ? null : expectedDate!.toIso8601String(),
    "delivery_type": deliveryType == null ? null : deliveryType,
    "is_pickup": isPickup == null ? null : isPickup,
    "order_status": orderStatus == null ? null : orderStatus,
    "order_notes": orderNotes == null ? null : orderNotes,
    "reference_no": referenceNo == null ? null : referenceNo,
    "ordersItems": ordersItems == null ? null : List<dynamic>.from(ordersItems!.map((x) => x.toMap())),
    "sort_date": sortDate == null ? null : sortDate!.toIso8601String(),
    "is_future": isFuture == null ? null : isFuture,
    "driver_image": driverImage == null ? null : driverImage,
    "driver_thumb_image": driverThumbImage == null ? null : driverThumbImage,
    "driver_id": driverId == null ? null : driverId,
    "company_driver": companyDriver == null ? null : companyDriver!.toMap(),
    "is_only_receipt": isOnlyReceipt == null ? null : isOnlyReceipt,
    "is_foodreadyorder_new": isFoodreadyorderNew == null ? null : isFoodreadyorderNew,
    "is_cancelorder_new": isCancelorderNew == null ? null : isCancelorderNew,
    "is_refundorder_new": isRefundorderNew == null ? null : isRefundorderNew,
    "is_delayorder_new": isDelayorderNew == null ? null : isDelayorderNew,
    "is_adjustorderprice_new": isAdjustorderpriceNew == null ? null : isAdjustorderpriceNew,
    "is_outfordelivery_new": isOutfordeliveryNew == null ? null : isOutfordeliveryNew,
    "is_foodreadyorder": isFoodreadyorder == null ? null : isFoodreadyorder,
    "is_cancelorder": isCancelorder == null ? null : isCancelorder,
    "is_refundorder": isRefundorder == null ? null : isRefundorder,
    "is_delayorder": isDelayorder == null ? null : isDelayorder,
    "is_adjustorderprice": isAdjustorderprice == null ? null : isAdjustorderprice,
    "is_outfordelivery": isOutfordelivery == null ? null : isOutfordelivery,
    "print_count": printCount == null ? null : printCount,
    "adjusted_count": adjustedCount == null ? null : adjustedCount,
    "canceled_count": canceledCount == null ? null : canceledCount,
    "modified_count": modifiedCount == null ? null : modifiedCount,
  };
}

class CompanyDriver {
  CompanyDriver({
    this.driverImage,
    this.driverThumbImage,
    this.driverId,
    this.driverName,
    this.driverNumber,
    this.driverEta,
    this.driverStatus,
  });

  String? driverImage;
  String? driverThumbImage;
  String? driverId;
  String? driverName;
  String? driverNumber;
  String? driverEta;
  int? driverStatus;

  factory CompanyDriver.fromJson(String str) => CompanyDriver.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompanyDriver.fromMap(Map<String, dynamic> json) => CompanyDriver(
    driverImage: json["driver_image"] == null ? null : json["driver_image"],
    driverThumbImage: json["driver_thumb_image"] == null ? null : json["driver_thumb_image"],
    driverId: json["driver_id"] == null ? null : json["driver_id"],
    driverName: json["driver_name"] == null ? null : json["driver_name"],
    driverNumber: json["driver_number"] == null ? null : json["driver_number"],
    driverEta: json["driver_eta"] == null ? null : json["driver_eta"],
    driverStatus: json["driver_status"] == null ? null : json["driver_status"],
  );

  Map<String, dynamic> toMap() => {
    "driver_image": driverImage == null ? null : driverImage,
    "driver_thumb_image": driverThumbImage == null ? null : driverThumbImage,
    "driver_id": driverId == null ? null : driverId,
    "driver_name": driverName == null ? null : driverName,
    "driver_number": driverNumber == null ? null : driverNumber,
    "driver_eta": driverEta == null ? null : driverEta,
    "driver_status": driverStatus == null ? null : driverStatus,
  };
}


class OrdersItem {
  OrdersItem({
    this.description,
    this.printers,
    this.defaultPrinters,
    this.sortNo,
    this.catSortNo,
    this.finalSortNo,
    this.quantity,
    this.price,
    this.modifiers,
    this.printItemName,
    this.printModifiers,
  });

  Description? description;
  List<String>? printers;
  List<String>? defaultPrinters;
  int? sortNo;
  int? catSortNo;
  int? finalSortNo;
  int? quantity;
  double? price;
  List<OrdersItemModifier>?modifiers;
  List<PrintItemName>? printItemName;
  List<PrintModifier>? printModifiers;

  factory OrdersItem.fromJson(String str) => OrdersItem.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrdersItem.fromMap(Map<String, dynamic> json) => OrdersItem(
  //  description: json["description"] == null ? null : json["description"],
    printers: json["printers"] == null ? null : List<String>.from(json["printers"].map((x) => x)),
    defaultPrinters: json["default_printers"] == null ? null : List<String>.from(json["default_printers"].map((x) => x)),
    sortNo: json["sort_no"] == null ? null : json["sort_no"],
    catSortNo: json["cat_sort_no"] == null ? null : json["cat_sort_no"],
    finalSortNo: json["final_sort_no"] == null ? null : json["final_sort_no"],
    quantity: json["quantity"] == null ? null : json["quantity"],
    price: json["price"] == null ? null : json["price"].toDouble(),
    modifiers: json["modifiers"] == null ? null : List<OrdersItemModifier>.from(json["modifiers"].map((x) => OrdersItemModifier.fromMap(x))),
    printItemName: json["print_item_name"] == null ? null : List<PrintItemName>.from(json["print_item_name"].map((x) => PrintItemName.fromMap(x))),
    printModifiers: json["print_modifiers"] == null ? null : List<PrintModifier>.from(json["print_modifiers"].map((x) => PrintModifier.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
  //  "description": description == null ? null : descriptionValues.reverse[description],
    "printers": printers == null ? null : List<dynamic>.from(printers!.map((x) => x)),
    "default_printers": defaultPrinters == null ? null : List<dynamic>.from(defaultPrinters!.map((x) => x)),
    "sort_no": sortNo == null ? null : sortNo,
    "cat_sort_no": catSortNo == null ? null : catSortNo,
    "final_sort_no": finalSortNo == null ? null : finalSortNo,
    "quantity": quantity == null ? null : quantity,
    "price": price == null ? null : price,
    "modifiers": modifiers == null ? null : List<dynamic>.from(modifiers!.map((x) => x.toMap())),
    "print_item_name": printItemName == null ? null : List<dynamic>.from(printItemName!.map((x) => x.toMap())),
    "print_modifiers": printModifiers == null ? null : List<dynamic>.from(printModifiers!.map((x) => x.toMap())),
  };
}

enum Description { HOMEI_BOWL, FALAFEL_TELLER, GYOZA_SNACK_6_ER, SALAT_MIT_EDAMAME_BOHNEN_UND_EINE_SAUCHE_NACH_GESCHMACK }

class OrdersItemModifier {
  OrdersItemModifier({
    this.category,
    this.modifiers,
  });

  String? category;
  List<ModifierModifier>? modifiers;

  factory OrdersItemModifier.fromJson(String str) => OrdersItemModifier.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrdersItemModifier.fromMap(Map<String, dynamic> json) => OrdersItemModifier(
    category: json["category"] == null ? null : json["category"],
    modifiers: json["modifiers"] == null ? null : List<ModifierModifier>.from(json["modifiers"].map((x) => ModifierModifier.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "category": category == null ? null : category,
    "modifiers": modifiers == null ? null : List<dynamic>.from(modifiers!.map((x) => x.toMap())),
  };
}

class ModifierModifier {
  ModifierModifier({
  //  this.name,
    this.price,
    this.providerModiid,
  });

 // Name name;
  String? price;
  String? providerModiid;

  factory ModifierModifier.fromJson(String str) => ModifierModifier.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ModifierModifier.fromMap(Map<String, dynamic> json) => ModifierModifier(
   // name: json["name"] == null ? null : nameValues.map[json["name"]],
    price: json["price"] == null ? null : json["price"],
    providerModiid: json["provider_modiid"] == null ? null : json["provider_modiid"],
  );

  Map<String, dynamic> toMap() => {
  //  "name": name == null ? null : nameValues.reverse[name],
    "price": price == null ? null : price,
    "provider_modiid": providerModiid == null ? null : providerModiid,
  };
}


class PrintItemName {
  PrintItemName({
    this.printer,
    this.itemName,
  });

  String? printer;
  Description? itemName;

  factory PrintItemName.fromJson(String str) => PrintItemName.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PrintItemName.fromMap(Map<String, dynamic> json) => PrintItemName(
    printer: json["printer"] == null ? null : json["printer"],
  //  itemName: json["item_name"] == null ? null : descriptionValues.map[json["item_name"]],
  );

  Map<String, dynamic> toMap() => {
    "printer": printer == null ? null : printer,
    //"item_name": itemName == null ? null : descriptionValues.reverse[itemName],
  };
}

class PrintModifier {
  PrintModifier({
    this.printer,
    this.modifiers,
  });

  String? printer;
  List<PrintModifierModifier>? modifiers;

  factory PrintModifier.fromJson(String str) => PrintModifier.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PrintModifier.fromMap(Map<String, dynamic> json) => PrintModifier(
    printer: json["printer"] == null ? null : json["printer"],
    modifiers: json["modifiers"] == null ? null : List<PrintModifierModifier>.from(json["modifiers"].map((x) => PrintModifierModifier.fromMap(x))),
  );

  Map<String, dynamic> toMap() => {
    "printer": printer == null ? null : printer,
    "modifiers": modifiers == null ? null : List<dynamic>.from(modifiers!.map((x) => x.toMap())),
  };
}

class PrintModifierModifier {
  PrintModifierModifier({
    this.category,
    //this.name,
    this.sortNo,
    this.price,
    this.quantity,
  });

  String?category;
  //Name ?name;
  int? sortNo;
  String? price;
  int? quantity;

  factory PrintModifierModifier.fromJson(String str) => PrintModifierModifier.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PrintModifierModifier.fromMap(Map<String, dynamic> json) => PrintModifierModifier(
    category: json["category"] == null ? null : json["category"],
   // name: json["name"] == null ? null : nameValues.map[json["name"]],
    sortNo: json["sort_no"] == null ? null : json["sort_no"],
    price: json["price"] == null ? null : json["price"],
    quantity: json["quantity"] == null ? null : json["quantity"],
  );

  Map<String, dynamic> toMap() => {
    "category": category == null ? null : category,
  //  "name": name == null ? null : nameValues.reverse[name],
    "sort_no": sortNo == null ? null : sortNo,
    "price": price == null ? null : price,
    "quantity": quantity == null ? null : quantity,
  };
}


