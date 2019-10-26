
import 'package:som_reak/model/svay-model.dart';
import 'package:flutter/material.dart';
import 'package:som_reak/services/app-theme.dart';

class ListSvayWidget extends StatefulWidget {

  final SvayModel svayModel;

  ListSvayWidget({Key key, this.svayModel}) : super(key: key);

  @override
  _ListViewState createState() => _ListViewState();
}

class _ListViewState extends State<ListSvayWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: Hero(
                      child: Image.network(widget.svayModel.image,fit: BoxFit.cover, width: 100, height: 100,), tag: widget.svayModel.id,
                    )),
              SizedBox(
                width: 10,
              ),
              Text(widget.svayModel.name, style: AppTheme.title())
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(widget.svayModel.price.toString() + "៛", style: AppTheme.title()),
            ],
          )
        ],
      ),
    );
  }
}