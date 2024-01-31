extension DoodleDashEx on String {
  String removeFirstAssetsImage() {
    return replaceFirst('assets/images/', '');
  }
}