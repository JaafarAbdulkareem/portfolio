import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_portfolio/core/utils/app_rive.dart';
import 'package:rive/rive.dart';

class CatImage extends StatefulWidget {
  const CatImage({super.key});

  @override
  State<CatImage> createState() => _CatImageState();
}

class _CatImageState extends State<CatImage> {
  StateMachineController? _controller;
  SMIBool? _hoverCat;
  Artboard? _artboard;

  @override
  void initState() {
    super.initState();
    _loadRiveFile();
  }

  Future<void> _loadRiveFile() async {
    final data = await rootBundle.load(AppRive.cat);
    final file = RiveFile.import(data);
    final artboard = file.mainArtboard;
    final controller = StateMachineController.fromArtboard(artboard, "Cat");

    if (controller != null) {
      artboard.addController(controller);
      _hoverCat = controller.findInput<bool>("Hover") as SMIBool?;
    }

    setState(() {
      _controller = controller;
      _artboard = artboard;
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _artboard != null
        ? Rive(artboard: _artboard!)
        : const Center(child: CircularProgressIndicator());
  }
}
