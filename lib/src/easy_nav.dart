import 'package:easy_bottom_navigation_bar/src/EasyNavigationBarItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EasyBottomNavigationBar extends StatefulWidget {
  EasyBottomNavigationBar(
      {@required this.items,
      this.backbgroundColor,
      @required this.activeIconColor,
      @required this.iconColor,
      this.titleStyle,
      this.shadowColor,
      @required this.onTap,
      this.activeTitleColor,
      this.titleColor,
      this.indicatorColor,
      this.inactiveIndicatorColor,
      this.selectedIndex = 0});

  final activeIconColor;
  final iconColor;
  final titleStyle;
  final shadowColor;
  int selectedIndex;
  final backbgroundColor;
  final activeTitleColor;
  final titleColor;
  final indicatorColor;
  final inactiveIndicatorColor;
  ValueChanged<int> onTap;
  final List<EasyNavigationBarItem> items;

  @override
  _EasyBottomNavigationBar createState() => _EasyBottomNavigationBar();
}

class _EasyBottomNavigationBar extends State<EasyBottomNavigationBar>
    with TickerProviderStateMixin<EasyBottomNavigationBar> {
  double width = 0;
  double NAV_HEIGHT = 60;
  double INDICATOR_HEIGHT = 2;
  Duration duration = Duration(milliseconds: 300);

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: widget.inactiveIndicatorColor ??
            widget.backbgroundColor ??
            Colors.blueAccent,
        boxShadow: [
          BoxShadow(
              color: widget.backbgroundColor ?? Colors.blueAccent,
              blurRadius: 10),
        ],
      ),
      child: SafeArea(
        bottom: true,
        child: Container(
          height: NAV_HEIGHT,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: INDICATOR_HEIGHT,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: widget.items.map((EasyNavigationBarItem item) {
                    var index = widget.items.indexOf(item);
                    return GestureDetector(
                      onTap: () {
                        _selectTab(index);
                      },
                      child: _buildBottomBarWidget(
                          item, index == widget.selectedIndex),
                    );
                  }).toList(),
                ),
              ),
              Positioned(
                top: 0,
                width: width,
                child: AnimatedAlign(
                  alignment: Alignment(_indicatorAxis(widget.selectedIndex), 0),
                  duration: duration,
                  child: Container(
                    color: widget.indicatorColor ??
                        widget.activeIconColor ??
                        Colors.blueAccent,
                    width: width / widget.items.length,
                    height: INDICATOR_HEIGHT,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _selectTab(int index) {
    setState(() {
      widget.selectedIndex = index;
      widget.onTap(index);
    });
  }

  double _indicatorAxis(int index) {
    return (-1 + (2 / (widget.items.length - 1) * index));
  }

  Widget _buildBottomBarWidget(EasyNavigationBarItem item, bool isSelected) {
    return Container(
      width: width / widget.items.length,
      padding: EdgeInsets.all(10),
      color: item.color ?? Colors.blueAccent,
      child: Column(
        children: <Widget>[
          Container(
            child: Icon(isSelected ? item.iconActive ?? item.icon : item.icon,
                color: isSelected
                    ? widget.activeIconColor ?? Colors.white
                    : widget.iconColor ?? Colors.white54),
          ),
          Container(
            child: Text(
              item.title,
              style: widget.titleStyle ??
                  TextStyle(
                      color: isSelected
                          ? widget.activeTitleColor ??
                              widget.activeIconColor ??
                              Colors.white
                          : widget.titleColor ??
                              widget.iconColor ??
                              Colors.white54),
            ),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
