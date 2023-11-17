import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_samples/pages/freeman_chain/mask_painter.dart';
import 'package:http/http.dart' as http;
import 'package:image/image.dart' as img;

class FreemanChainPage extends StatefulWidget {
  const FreemanChainPage({super.key});

  @override
  State<FreemanChainPage> createState() => _FreemanChainPageState();
}

class _FreemanChainPageState extends State<FreemanChainPage> {
  img.Image? _image;
  Uint8List? _bytes;
  List<Offset>? _points;
  final urlString =
      'https://1.bp.blogspot.com/-AFpbLLCoBoc/XobS9EbbkLI/AAAAAAABYC8/UesdeSOaj987WQhzpLbd8Z0xvPGeLrlDACNcBGAsYHQ/s1600/animal_chara_lion_king.png';

  @override
  void initState() {
    super.initState();
    setData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Freeman Chain'),
        shadowColor: Colors.transparent,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      child: _bytes != null
          ? CustomPaint(
              painter: MaskPainter(_points!, _image!), child: Container())
          : const Center(child: CircularProgressIndicator()),
    );
  }

  Future<void> setData() async {
    final response = await http.get(Uri.parse(urlString));
    _bytes = response.bodyBytes;
    _image = img.decodeImage(_bytes!)!;
    _points = extractBoundaryPointsInImage(_image!);
    setState(() {});
  }

  bool isBlackAt(int x, int y, img.Image image) {
    final img.Pixel pixel = image.getPixel(x, y);
    final r = pixel.r.toInt();
    final g = pixel.g.toInt();
    final b = pixel.b.toInt();
    return r == 0 && g == 0 && b == 0;
  }

  List<Offset> extractBoundaryPointsInImage(img.Image image) {
    final List<Offset> points = [];
    int xstart = -1;
    int ystart = -1;

    for (int y = image.height - 1; y >= 0; --y) {
      for (int x = image.width - 1; x >= 0; --x) {
        if (!isBlackAt(x, y, image)) {
          xstart = x;
          ystart = y;
          points.add(Offset(x.toDouble(), y.toDouble()));
          break;
        }
      }
      if (xstart != -1 || ystart != -1) {
        break;
      }
    }

    // Freeman chain code
    const cCode = [
      [1, 0],
      [1, -1],
      [0, -1],
      [-1, -1],
      [-1, 0],
      [-1, 1],
      [0, 1],
      [1, 1]
    ];
    const nextCode = [7, 7, 1, 1, 3, 3, 5, 5];
    int cs;
    int found = 0;
    int c = 1;
    int xp = 0;
    int yp = 0;
    int xs = xstart;
    int ys = ystart;
    do {
      found = 0;
      cs = c;
      do {
        xp = xs + cCode[c][0];
        yp = ys + cCode[c][1];
        if (xp >= 0 && image.width > xp && yp >= 0 && image.height > yp) {
          if (!isBlackAt(xp, yp, image)) {
            found = 1;
            if (xp != xstart || yp != ystart) {
              points.add(Offset(xp.toDouble(), yp.toDouble()));
            }
          }
        }
        if (found == 0) {
          c++;
          if (c > 7) {
            c = 0;
          }
        }
      } while (found == 0 && c != cs);
      xs = xp;
      ys = yp;
      c = nextCode[c];
    } while ((xp != xstart || yp != ystart) && found == 1);
    return points;
  }
}
