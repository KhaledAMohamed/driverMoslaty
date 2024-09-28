class AboutData {
  String? imageLink;
  String? data;

  AboutData({this.imageLink, this.data});

  AboutData.fromJson(Map<String, dynamic> json) {
    imageLink = json['image_link'];
    data = json['data'];
  }

}
// AboutData? aboutModel ;
//  void getAbouitData() {
//     DioHelper.getData(
//       urlEndPoint: HOME,
//     ).then((value) {
//       aboutModel = AboutData.fromJson(value.data);
//       });
//       emit(ShopAppSuccessHomeState());
//     }).catchError((error) {
//       emit(ShopAppErrorHomeState());
//     });
//   }