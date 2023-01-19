class DropdownMaster {
  List<Country>? country;
  List<States>? state;
  List<Genders>? genders;
  int? status;
  String? message;

  DropdownMaster({this.country, this.state, this.genders, this.message, this.status});

  DropdownMaster.defaultValue() {
    country = [];
    state = [];
    genders = [];
  }
}

class Genders {
  int? id, status;
  String? name;

  Genders({required this.id, required this.status, required this.name});
}

class Country {
  int? id;
  String? name;
  int? status;
  String? createdAt;
  String? updatedAt;

  Country({required this.id, required this.name, this.status, this.createdAt, this.updatedAt});
}

class States {
  int? id;
  int? countryId;
  String? name;
  int? status;
  String? createdAt;
  String? updatedAt;

  States({required this.id, required this.countryId, required this.name, this.status, this.createdAt, this.updatedAt});
}
