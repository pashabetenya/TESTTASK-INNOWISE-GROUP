import 'package:application/past changes/src/ui/widgets/home/index.dart';

class ImageItem extends StatelessWidget {
  final String link;

  const ImageItem({
    Key? key,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: link,
      progressIndicatorBuilder: (context, url, downloadProgress) => Center(
        child: CircularProgressIndicator(value: downloadProgress.progress),
      ),
      errorWidget: (context, url, error) =>
          const Icon(Icons.image_search, size: 45.0),
    );
  }
}
