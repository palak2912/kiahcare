import 'package:flutter/material.dart';


class ExpandedCards extends StatefulWidget {
  final bool isExpanded;
  final int selectedCard;
  final int index;
  final String title;
  final Widget child;
  final Widget herochild;
  final bool heroWidget;
  final Color titlecolor;

  const ExpandedCards({Key? key, required this.isExpanded, required this.selectedCard,required this.index,
    required this.title, required this.child, required this.heroWidget, required this.herochild, required this.titlecolor}) : super(key: key);
  @override
  State<ExpandedCards> createState() => _ExpandedCardsState();
}

class _ExpandedCardsState extends State<ExpandedCards> {
  late _GradientPainter _painter;

  @override
  void initState() {
    this._painter = _GradientPainter(strokeWidth: 2, radius: 25, gradient: LinearGradient(
      colors: [Colors.pink, Colors.blue],
      begin: FractionalOffset.topCenter,
      end: FractionalOffset.bottomCenter,
    ),);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.isExpanded && widget.selectedCard == widget.index ? 250 : 80,
      width: MediaQuery.of(context).size.width/1.2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
            Radius.circular(30) //                 <--- border radius here
        ),
        gradient: LinearGradient(
          colors: widget.isExpanded && widget.selectedCard == widget.index ?
          [Colors.pinkAccent, Colors.blueAccent] :
          [Colors.transparent, Colors.transparent],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.shade400,
        //     blurRadius: 7,
        //     offset: Offset(0,-2),
        //   )
        // ],
      ),
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.all(6),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child:
          widget.isExpanded == false && widget.selectedCard != widget.index?
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                  Radius.circular(20) //                 <--- border radius here
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 7,
                  offset: Offset(0,-2),
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  widget.heroWidget ? widget.herochild : Container(),
                  SizedBox(width: widget.heroWidget ? 5 : 0,),
                  Text('${widget.title}',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      color: widget.titlecolor,
                    ),),
                ],
              ),
            ),
          ) :
          CustomPaint(
            painter: _painter,
            child: ExpandedSection(
              expand: widget.isExpanded,
              child: Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(25) //                 <--- border radius here
                  ),
                ),
                child: widget.child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}


class ExpandedSection extends StatefulWidget {

  final Widget child;
  final bool expand;
  ExpandedSection({this.expand = false, required this.child});

  @override
  _ExpandedSectionState createState() => _ExpandedSectionState();
}

class _ExpandedSectionState extends State<ExpandedSection> with SingleTickerProviderStateMixin {
  late AnimationController expandController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    _runExpandCheck();
  }

  ///Setting up the animation
  void prepareAnimations() {
    expandController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 500)
    );
    animation = CurvedAnimation(
      parent: expandController,
      curve: Curves.fastOutSlowIn,
    );
  }

  void _runExpandCheck() {
    if(widget.expand) {
      expandController.forward();
    }
    else {
      expandController.reverse();
    }
  }

  @override
  void didUpdateWidget(ExpandedSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    _runExpandCheck();
  }

  @override
  void dispose() {
    expandController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
        axisAlignment: 1.0,
        sizeFactor: animation,
        child: widget.child
    );
  }
}

class _GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  _GradientPainter({required double strokeWidth, required double radius, required Gradient gradient})
      : this.strokeWidth = strokeWidth,
        this.radius = radius,
        this.gradient = gradient;

  @override
  void paint(Canvas canvas, Size size) {
    // create outer rectangle equals size
    Rect outerRect = Offset.zero & size;
    var outerRRect = RRect.fromRectAndRadius(outerRect, Radius.circular(radius));

    // create inner rectangle smaller by strokeWidth
    Rect innerRect = Rect.fromLTWH(strokeWidth, strokeWidth, size.width - strokeWidth * 2, size.height - strokeWidth * 2);
    var innerRRect = RRect.fromRectAndRadius(innerRect, Radius.circular(radius - strokeWidth));

    // apply gradient shader
    _paint.shader = gradient.createShader(outerRect);

    // create difference between outer and inner paths and draw it
    Path path1 = Path()..addRRect(outerRRect);
    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}



