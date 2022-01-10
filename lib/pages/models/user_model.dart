class UserModel {
  int? id;
  String? fullname;
  String? email;
  String? picture;
  String? status;
  String? phone;
  String? address;
  String? token;

  UserModel(
      {this.id,
      this.fullname,
      this.email,
      this.token,
      this.picture,
      this.status,
      this.phone,
      this.address});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullname = json['fullname'];
    email = json['email'];
    picture = json['picture'];
    status = json['status'];
    phone = json['phone'];
    address = json['address'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fullname': fullname,
      'email': email,
      'picture': picture,
      'status': status,
      'phone': phone,
      'address': address,
      'token': token,
    };
  }
}
