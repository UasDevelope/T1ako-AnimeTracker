import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  _RatingState createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  late final _ratingController;
   double ?_rating;
  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  IconData? _selectedIcon;
@override
  void initState() {
      _rating = _initialRating;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () {
          Dialgue();
        },
        child: Text('Show Dialogue Box'),
      ),
    );
  }

   Dialgue() {
    return  showDialog(
      context: context,
      builder: (BuildContext context) {
        return  AlertDialog(
          backgroundColor: Colors.white,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Text('Rating Bar'),
              _ratingBar(_ratingBarMode),
              SizedBox(height: 20.0),
              Text(
                'Rating: $_rating',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      },
    );


  }

  Widget _ratingBar(int mode) {
    switch (mode) {
      case 1:
        return RatingBar.builder(
          initialRating: _initialRating,
          minRating: 1,
          allowHalfRating: true,
          unratedColor: Colors.amber.withAlpha(50),
          itemCount: 5,
          itemSize: 50.0,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            _selectedIcon ?? Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            setState(() {
              _rating = rating;
            });
          },
          updateOnDrag: true,
        );
      default:
        return Container();
    }
  }
}

// class MyApp12 extends StatefulWidget {
//   @override
//   _MyApp12State createState() => _MyApp12State();
// }
//
// class _MyApp12State extends State<MyApp12> {
//
//
//
//   @override
//   void initState() {
//     super.initState();
//     _ratingController = TextEditingController(text: '3.0');
//     _rating = _initialRating;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Builder(
//         builder: (context) => Scaffold(
//           appBar: AppBar(
//             title: Text('Flutter Rating Bar'),
//           ),
//           body:
//           ),
//         ),
//
//     );
//   }
//
//
//
//
//
//
// }
//
