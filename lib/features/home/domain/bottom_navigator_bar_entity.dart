import 'package:fruit_ecommerce_app/core/utils/app_images.dart';

class BottomNavigatorBarEntity {
  final String activeImage, inActiveImage;
  final String title;

  BottomNavigatorBarEntity(
      {required this.activeImage,
      required this.inActiveImage,
      required this.title});
}

List<BottomNavigatorBarEntity> bottomNavigatorBarItems = [
  BottomNavigatorBarEntity(
      inActiveImage: Assets.imagesOutlineIconsHome,
      activeImage: Assets.imagesBoldIconsHome,
      title: "الرئيسية"),
  BottomNavigatorBarEntity(
      inActiveImage: Assets.imagesOutlineIconsProduct,
      activeImage: Assets.imagesBoldIconsProduct,
      title: "المنتجات"),
  BottomNavigatorBarEntity(
      activeImage: Assets.imagesBoldIconsShoppingCart,
      inActiveImage: Assets.imagesOutlineIconsShoppingCart,
      title: "سلة التسوق"),
  BottomNavigatorBarEntity(
      activeImage: Assets.imagesBoldIconsUser,
      inActiveImage: Assets.imagesOutlineIconsUser,
      title: "حسابي")
];
