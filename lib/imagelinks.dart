enum ImageLinks { bisquedoll }

extension ImageLinksExtension on ImageLinks {
  String get path {
    switch (this) {
      case ImageLinks.bisquedoll:
        return "https://storage.mantan-web.jp/images/2022/09/16/20220916dog00m200092000c/001_size10.jpg";
    }
  }
}
