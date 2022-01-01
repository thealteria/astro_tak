class Constants {
  const Constants._();

  static const String BASE_URL = 'https://www.astrotak.com/astroapi/api/';
  static const String ASTROLOGER = 'agent/all';
  static const LOCATION = 'location/place';
  static const PANCHANGE = 'horoscope/daily/panchang';

  static const timeout = Duration(seconds: 5);

  static const String dummyImageUrl =
      'https://i.picsum.photos/id/1084/536/354.jpg'
      '?grayscale&hmac=Ux7nzg19e1q35mlUV  ZjhCLxqkR30cC-CarVg-nlIf60';
  static const String placeHolderBlurHash = 'LEHV6nWB2yk8pyo0adR*.7kCMdnj';
}
