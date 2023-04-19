import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         
        child: Container(
          height: 250,
          width: 300,
          child: CachedNetworkImage(imageUrl: 'https://www.bing.com/ck/a?!&&p=d4a6d6da057270ffJmltdHM9MTY4MDQ4MDAwMCZpZ3VpZD0xMmI0NDQ4YS03MDMyLTY2N2ItMWJjYi01NjRhNzFjMDY3MWUmaW5zaWQ9NTU0OQ&ptn=3&hsh=3&fclid=12b4448a-7032-667b-1bcb-564a71c0671e&u=a1L2ltYWdlcy9zZWFyY2g_cT1JbWFnZXMmRk9STT1JUUZSQkEmaWQ9RDJBNEQyOUQwQUQ1MUQ0RTJBRkY2Q0JFQ0I2NDI3Q0RFNDE4OTM0QQ&ntb=1',
          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error_outline),
          ),
          ),
        )
      );
  }
}