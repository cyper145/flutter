import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prueba/helper/responsive.dart';

class CardProduct extends StatefulWidget {
  final String path;
  final String title;
  final double score;
  final double price;
  final double priceOld;
  final double distance;
  // ignore: avoid_types_as_parameter_names
  const CardProduct(
      {Key? key,
      required this.path,
      required this.title,
      required this.score,
      required this.price,
      required this.priceOld,
      required this.distance})
      : super(key: key);

  @override
  _CardProductState createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of(context);

    return Container(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
            margin: const EdgeInsets.all(0),
            color: Colors.grey[100],
            width: responsive.wp(45),
            height: responsive.wp(45),
            child: Image.asset(
              widget.path,
              alignment: Alignment.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            color: Colors.white10,
            width: responsive.wp(24),
            child: Column(
              children: [
                Text(
                  widget.title,
                  softWrap: true,
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  style: const TextStyle(
                      fontSize: 14.0,
                      fontFamily: "sfpro",
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color.fromRGBO(255, 187, 11, 1),
                      size: 14,
                    ),
                    const Icon(
                      Icons.star,
                      color: Color.fromRGBO(255, 187, 11, 1),
                      size: 14,
                    ),
                    const Icon(
                      Icons.star,
                      color: Color.fromRGBO(255, 187, 11, 1),
                      size: 14,
                    ),
                    const Icon(
                      Icons.star,
                      color: Color.fromRGBO(255, 187, 11, 1),
                      size: 14,
                    ),
                    const Icon(
                      Icons.star,
                      color: Color.fromRGBO(255, 187, 11, 1),
                      size: 14,
                    ),
                    Text(
                      "(${widget.score.toInt()})",
                      style: const TextStyle(
                          fontSize: 14.0,
                          color: Color.fromRGBO(114, 114, 114, 1)),
                    )
                  ],
                ),
                const SizedBox(height: 6),
                Row(children: [
                  Text(
                    "\$${widget.price}",
                    style: const TextStyle(
                        fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 3),
                  Text("\$${widget.priceOld}",
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      )),
                ]),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 14, color: Colors.grey),
                    Text("${widget.priceOld}km",
                        style: const TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.grey,
                        ))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
