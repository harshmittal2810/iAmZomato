class Restaurant {
  String name;
  String cuisines;
  String thumb;
  bool isLiked;
  int priceRange;
  String id;

  Restaurant(
      {this.name,
      this.cuisines,
      this.thumb,
      this.isLiked,
      this.priceRange,
      this.id});

  Restaurant.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    cuisines = json['cuisines'];
    isLiked = json['include_bogo_offers'];
    priceRange = json['price_range'];
    thumb = json['thumb'];
    id = json['id'];
  }
}
