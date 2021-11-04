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
      padding: const EdgeInsets.all(10),
      width: responsive.wp(49),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(0),
            color: Colors.grey[100],
            child: Image.asset(
              widget.path,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            color: Colors.white10,
            width: responsive.wp(30),
            child: Column(
              children: [
                Text(
                  widget.title,
                  softWrap: true,
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  style: const TextStyle(
                      fontSize: 16.0, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 14,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 14,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 14,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 14,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 14,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 14,
                    ),
                    Text(
                      "(${widget.score})",
                      style:
                          const TextStyle(fontSize: 14.0, color: Colors.grey),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Row(children: [
                  Text(
                    "\$${widget.price}",
                    style: const TextStyle(
                        fontSize: 14.0, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(width: 10),
                  Text("\$${widget.priceOld}",
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w800,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      )),
                ]),
                const SizedBox(height: 5),
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
