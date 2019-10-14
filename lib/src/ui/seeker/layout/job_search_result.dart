import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';

class JobSearchResult extends StatefulWidget {
  @override
  _JobSearchResultState createState() => _JobSearchResultState();
}

class _JobSearchResultState extends State<JobSearchResult> {
  SlidableController slidableController;
  final List<_HomeItem> items = List.generate(
    21,
    (i) => _HomeItem(
      i,
      _getJobTitle(i),
      _getSubtitle(i),
      _getSalary(i),
      _getProviderName(i),
      '$i',
      _getJobTime(i),
    ),
  );

  TextStyle style = TextStyle(fontFamily: 'VarelaRound', fontSize: 20.0);

  @protected
  void initState() {
    slidableController = SlidableController(
      onSlideAnimationChanged: handleSlideAnimationChanged,
    );
    super.initState();
  }

  void handleSlideAnimationChanged(Animation<double> slideAnimation) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              icon: Icon(FeatherIcons.chevronLeft,
                  color: Color(0xff2c4057), size: 16)),
          elevation: 1,
          backgroundColor: Colors.white,
          title: Text('Job Search',
              style: TextStyle(
                color: Color(0xff2c4057),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ))),
      body: OrientationBuilder(
        builder: (context, orientation) => _buildList(
            context,
            orientation == Orientation.portrait
                ? Axis.vertical
                : Axis.horizontal),
      ),
    );
  }

  Widget _buildList(BuildContext context, Axis direction) {
    return ListView.builder(
      scrollDirection: direction,
      itemBuilder: (context, index) {
        final Axis slidableDirection =
            direction == Axis.horizontal ? Axis.vertical : Axis.horizontal;
        var item = items[index];
        if (item.index < 8) {
          return _getSlidableWithLists(context, index, slidableDirection);
        } else {
          return _getSlidableWithDelegates(context, index, slidableDirection);
        }
      },
      itemCount: items.length,
    );
  }

  Widget _getSlidableWithLists(
      BuildContext context, int index, Axis direction) {
    final _HomeItem item = items[index];
    //final int t = index;
    return Slidable(
      key: Key(item.title),
      controller: slidableController,
      direction: direction,
      dismissal: SlidableDismissal(
        child: SlidableDrawerDismissal(),
        onDismissed: (actionType) {
          _showSnackBar(context,
              actionType == SlideActionType.primary ? 'Saved' : 'Removed');
          setState(() {
            items.removeAt(index);
          });
        },
      ),
      actionPane: _getActionPane(item.index),
      actionExtentRatio: 0.25,
      child: direction == Axis.horizontal
          ? VerticalListItem(items[index])
          : HorizontalListItem(items[index]),
      actions: <Widget>[
        IconSlideAction(
          caption: 'SAVE',
          color: Color(0xffcecccc),
          icon: FeatherIcons.save,
          onTap: () => _showSnackBar(context, 'Archive'),
        ),
      ],
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Remove',
          color: Color(0xffcecccc),
          icon: FeatherIcons.delete,
          onTap: () => _showSnackBar(context, 'Remove'),
        ),
      ],
    );
  }

  Widget _getSlidableWithDelegates(
      BuildContext context, int index, Axis direction) {
    final _HomeItem item = items[index];

    return Slidable.builder(
      key: Key(item.title),
      controller: slidableController,
      direction: direction,
      dismissal: SlidableDismissal(
        child: SlidableDrawerDismissal(),
        closeOnCanceled: true,
        onWillDismiss: (item.index != 10)
            ? null
            : (actionType) {
                return showDialog<bool>(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Remove'),
                      content: Text('Item will be Removed'),
                      actions: <Widget>[
                        FlatButton(
                          child: Text('Cancel'),
                          onPressed: () => Navigator.of(context).pop(false),
                        ),
                        FlatButton(
                          child: Text('Ok'),
                          onPressed: () => Navigator.of(context).pop(true),
                        ),
                      ],
                    );
                  },
                );
              },
        onDismissed: (actionType) {
          _showSnackBar(context,
              actionType == SlideActionType.primary ? 'Saved' : 'Removed');
          setState(() {
            items.removeAt(index);
          });
        },
      ),
      actionPane: _getActionPane(item.index),
      actionExtentRatio: 0.25,
      child: direction == Axis.horizontal
          ? VerticalListItem(items[index])
          : HorizontalListItem(items[index]),
      actionDelegate: SlideActionBuilderDelegate(
          actionCount: 2,
          builder: (context, index, animation, renderingMode) {
            if (index == 0) {
              return IconSlideAction(
                caption: 'Archive',
                color: renderingMode == SlidableRenderingMode.slide
                    ? Colors.blue.withOpacity(animation.value)
                    : (renderingMode == SlidableRenderingMode.dismiss
                        ? Colors.blue
                        : Colors.green),
                icon: Icons.archive,
                onTap: () async {
                  var state = Slidable.of(context);
                  var dismiss = await showDialog<bool>(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Remove'),
                        content: Text('Item will be Removed'),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('Cancel'),
                            onPressed: () => Navigator.of(context).pop(false),
                          ),
                          FlatButton(
                            child: Text('Ok'),
                            onPressed: () => Navigator.of(context).pop(true),
                          ),
                        ],
                      );
                    },
                  );

                  if (dismiss) {
                    state.dismiss();
                  }
                },
              );
            } else {
              return IconSlideAction(
                caption: 'Share',
                color: renderingMode == SlidableRenderingMode.slide
                    ? Colors.indigo.withOpacity(animation.value)
                    : Colors.indigo,
                icon: Icons.share,
                onTap: () => _showSnackBar(context, 'Share'),
              );
            }
          }),
      secondaryActionDelegate: SlideActionBuilderDelegate(
          actionCount: 2,
          builder: (context, index, animation, renderingMode) {
            if (index == 0) {
              return IconSlideAction(
                caption: 'More',
                color: renderingMode == SlidableRenderingMode.slide
                    ? Colors.grey.shade200.withOpacity(animation.value)
                    : Colors.grey.shade200,
                icon: Icons.more_horiz,
                onTap: () => _showSnackBar(context, 'More'),
                closeOnTap: false,
              );
            } else {
              return IconSlideAction(
                caption: 'Remove',
                color: renderingMode == SlidableRenderingMode.slide
                    ? Colors.red.withOpacity(animation.value)
                    : Colors.red,
                icon: FeatherIcons.delete,
                onTap: () => _showSnackBar(context, 'Remove'),
              );
            }
          }),
    );
  }

  static Widget _getActionPane(int index) {
    switch (index % 4) {
      case 0:
        return SlidableBehindActionPane();
      case 1:
        return SlidableStrechActionPane();
      case 2:
        return SlidableScrollActionPane();
      case 3:
        return SlidableDrawerActionPane();
      default:
        return null;
    }
  }

  static String _getJobTitle(int index) {
    switch (index % 8) {
      case 0:
        return 'Store Leader';
      case 1:
        return 'Cook';
      case 2:
        return 'Cleaning Service';
      case 3:
        return 'Coffe Shop';
      case 4:
        return 'CCTV Installer, Helper';
      case 5:
        return 'Job Title';
      case 6:
        return 'Job Title';
      case 7:
        return 'Job Title';
      default:
        return null;
    }
  }

  static String _getJobTime(int index) {
    switch (index % 8) {
      case 0:
        return 'Full Time';
      case 1:
        return 'Part Time';
      case 2:
        return 'Weekend';
      case 3:
        return 'Freelance';
      default:
        return null;
    }
  }

  static String _getProviderName(int index) {
    switch (index % 8) {
      case 0:
        return 'Mekuru Ramen House';
      case 1:
        return 'CV. Borneo Arya Group';
      case 2:
        return 'PT. Maju Terus';
      case 3:
        return 'PT. Mundur Terus';
      case 4:
        return 'PT. Bumi Raya Group';
      case 5:
        return 'PT. Bumi Liputan Jaya';
      case 6:
        return 'PT. Angkasa Pura II';
      case 7:
        return 'Blue Sky Premier Lounge Kota Pontianak';
      default:
        return null;
    }
  }

  static String _getSubtitle(int index) {
    switch (index % 8) {
      case 0:
        return 'Pontianak,  West Borneo';
      case 1:
        return 'Pontianak,  West Borneo';
      case 2:
        return 'Pontianak,  West Borneo';
      case 3:
        return 'Singkawang, West Borneo';
      case 4:
        return 'Pontianak,  West Borneo';
      case 5:
        return 'Pontianak,  West Borneo';
      case 6:
        return 'Pontianak,  West Borneo';
      case 7:
        return 'Singkawang, West Borneo';
      default:
        return null;
    }
  }

  static String _getSalary(int index) {
    switch (index % 8) {
      case 0:
        return 'Rp 4.000.000 / m';
      case 1:
        return 'Rp 2.000.000 / m';
      case 2:
        return 'Rp 40k / h';
      case 3:
        return 'Rp 50k / h';
      case 4:
        return 'Rp 4.000.000 / m';
      case 5:
        return 'Rp 2.000.000 / m';
      case 6:
        return 'Rp 40k / h';
      case 7:
        return 'Rp 50k / h';
      default:
        return null;
    }
  }

  void _showSnackBar(BuildContext context, String text) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(text)));
  }
}

class HorizontalListItem extends StatelessWidget {
  HorizontalListItem(this.item);
  final _HomeItem item;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 160.0,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                item.subtitle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VerticalListItem extends StatelessWidget {
  VerticalListItem(this.item);
  final _HomeItem item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Slidable.of(context)?.renderingMode == SlidableRenderingMode.none
              ? Slidable.of(context)?.open()
              : Slidable.of(context)?.close(),
      child: Container(
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(0),
          color: Colors.white,
          boxShadow: [
            new BoxShadow(
                color: Color(0xff0c0c0c0),
                blurRadius: 1.5,
                offset: new Offset(1.0, 1.0))
          ],
        ),
        child: Stack(
          alignment: Alignment(1.06, -2),
          children: <Widget>[
            ListTile(
              leading: Column(
                children: <Widget>[
                  Stack(
                    alignment: Alignment(1, -1),
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20.0,
                          child: Image.asset('assets/mekuru.png', height: 40)),
                      Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff22c0e8),
                        child: Icon(FeatherIcons.plus,
                            color: Colors.white, size: 14),
                      ),
                    ],
                  ),
                ],
              ),
              title: Container(
                height: 50,
                padding: (EdgeInsets.only(top: 5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('${item.getProviderName}',
                        style: TextStyle(fontSize: 14)),
                    Row(
                      children: <Widget>[
                        Text('${item.getJobTitle}',
                            style: TextStyle(
                                fontFamily: 'VarelaRound', fontSize: 12)),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Material(
                            elevation: 1.0,
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xff65be3e),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              child: Text('${item.getJobTime}',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              subtitle: Container(
                height: 30,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(FeatherIcons.mapPin,
                            size: 10, color: Color(0xff8997a7)),
                        Text('${item.subtitle}',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff8997a7)))
                      ],
                    ),
                    RichText(
                        text: new TextSpan(children: [
                      new TextSpan(
                          text: "Salary: ",
                          style: TextStyle(
                            fontFamily: 'VarelaRound',
                            color: Color(0xff8997a7),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          )),
                      new TextSpan(
                          text: '${item.getSalary}',
                          style: TextStyle(
                            fontFamily: 'VarelaRound',
                            color: Color(0xff3b3b3b),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          )),
                    ])),
                  ],
                ),
              ),
              trailing: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  color: Color(0xff22c0e8),
                  child: Text('Apply',
                      style: TextStyle(color: Colors.white, fontSize: 14)),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeItem {
  const _HomeItem(
    this.index,
    this.title,
    this.subtitle,
    this.getSalary,
    this.getProviderName,
    this.getJobTitle,
    this.getJobTime,
  );

  final int index;
  final String title;
  final String subtitle;
  final String getSalary;
  final String getProviderName;
  final String getJobTitle;
  final String getJobTime;
}
