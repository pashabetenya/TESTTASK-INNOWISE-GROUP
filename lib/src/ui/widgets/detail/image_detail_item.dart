import 'package:application/src/ui/widgets/detail/index.dart';

class ImageDetailItem extends StatelessWidget {
  final String link;

  const ImageDetailItem({
    Key? key,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.0,
      child: CachedNetworkImage(
        imageUrl: link,
        progressIndicatorBuilder: (context, url, downloadProgress) => Center(
          child: CircularProgressIndicator(value: downloadProgress.progress),
        ),
        errorWidget: (context, url, error) =>
            const Icon(Icons.image_search, size: 45.0),
      ),
    );
  }
}
