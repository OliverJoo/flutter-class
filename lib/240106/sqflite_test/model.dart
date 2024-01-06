class User {
  int? id;
  String? name;
  String? address;

  Map<String, dynamic> toMap() {
    var map = <String, Object?>{'name': name, 'address': address};
    if (id != null) {
      map['id'] = id;
    }
    return map;
  }

  User.fromData(name, address);

  User.fromMap(Map<String, Object?> map) {
    id = map['id'] as int;
    name = (map['name'] ?? '아무개') as String?;
    address = (map['address'] ?? 'Seoul 어딘가') as String?;
  }
}
