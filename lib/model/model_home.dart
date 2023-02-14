class ModelHome {
  int id;
  String name;
  String phoneNumber;
  String location;
  String picture;
  String createdAt;
  String updatedAt;
  List<Menu> menu;

  ModelHome(
      {this.id,
      this.name,
      this.phoneNumber,
      this.location,
      this.picture,
      this.createdAt,
      this.updatedAt,
      this.menu});

  ModelHome.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phoneNumber = json['phone_number'];
    location = json['location'];
    picture = json['picture'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['menu'] != null) {
      menu = new List<Menu>();
      json['menu'].forEach((v) {
        menu.add(new Menu.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone_number'] = this.phoneNumber;
    data['location'] = this.location;
    data['picture'] = this.picture;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.menu != null) {
      data['menu'] = this.menu.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Menu {
  int id;
  String itemName;
  int restaurantId;
  int price;
  String picture;
  String createdAt;
  String updatedAt;

  Menu(
      {this.id,
      this.itemName,
      this.restaurantId,
      this.price,
      this.picture,
      this.createdAt,
      this.updatedAt});

  Menu.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    itemName = json['item_name'];
    restaurantId = json['restaurant_id'];
    price = json['price'];
    picture = json['picture'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['item_name'] = this.itemName;
    data['restaurant_id'] = this.restaurantId;
    data['price'] = this.price;
    data['picture'] = this.picture;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
