import 'package:flutter/material.dart';
import 'model/product.dart';

//TODO add velocity
class Backdrop extends StatefulWidget {
  final Category currentCategory;
  final Widget frontLayer;
  final Widget backLayer;
  final Widget frontTitle;
  final Widget backTitle;
  const Backdrop({
    required this.currentCategory,
    required this.frontLayer,
    required this.backLayer,
    required this.frontTitle,
    required this.backTitle,
    Key? key,
  }) : super(key: key);

  @override
  State<Backdrop> createState() => _BackdropState();
}

//TODO ADD _frontLayer Class;

class _FrontLayer extends StatelessWidget {
  const _FrontLayer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 16.0,
      shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(46.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Expanded(child: child)],
      ),
    );
  }
}

//TODO add backdroptitle class;

class _BackdropState extends State<Backdrop>
    with SingleTickerProviderStateMixin {
  final GlobalKey _backdropKey = GlobalKey(debugLabel: 'Backdrop');

  Widget _buildStack() {
    return Stack(
      key: _backdropKey,
      children: [
        //TODO wrap element in ExcludeSemanits
        widget.backLayer,
        _FrontLayer(child: widget.frontLayer)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      elevation: 0.0,
      titleSpacing: 0.0,
      leading: Icon(Icons.menu),
      title: Text("Kipbz Collections"),
      actions: [
        //add shortcut to login screen
        IconButton(
            onPressed: () {
              // add point to login
            },
            icon: const Icon(
              Icons.search,
              semanticLabel: 'search',
            )),
        IconButton(
            onPressed: () {
              // Open Loign
            },
            icon: const Icon(
              Icons.tune,
              semanticLabel: "filter",
            ))
      ],
    );
    return Scaffold(
      appBar: appBar,
      body: _buildStack(),
      drawer: Drawer(
        child: ListView(
          children: const [
            ListTile(
              title: Text("Orders"),
            ),
            ListTile(
              title: Text('Account'),
            )
          ],
        ),
      ),
    );
  }
}
