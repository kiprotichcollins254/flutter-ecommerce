import 'package:flutter/material.dart';
import 'package:shrine/theme/colors.dart';

class Item extends StatefulWidget {
  // const Item({super.key});
  const Item({Key? key}) : super(key: key);
  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  final int _itemPieces = 1;

  void _addCart() {
    setState(() {
      _itemPieces + 1;
    });
  }

  void _lessFromCart() {
    if (_itemPieces > 1){
      setState(() {
        _itemPieces - 1;
      });
    }
   
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: kKipbzCollectionsBackgroundWhite,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
          child: Column(
            children: [
              AnimatedContainer(
                  // height: MediaQuery.of(context).size.height / 2,
                  height: 300,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeIn,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/diamond.png"),
                        fit: BoxFit.cover),
                  ),
                  child: AppBar(
                    // title: const Text("Product Name"),
                    // backgroundColor: Colors.transparent,
                    // centerTitle: true,
                    actions: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            semanticLabel: "Add To Favorite",
                          ))
                    ],
                  )),
              const SizedBox(
                height: 4,
              ),
              Expanded(
                  child: Container(
                      transform: Matrix4.translationValues(0.0, -30.0, 0.0),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Details",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                        decoration: TextDecoration.none),
                                  ),
                                  Text(
                                    "KES 120.00",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black,
                                        decoration: TextDecoration.none),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                children: const [
                                  Expanded(
                                      child: Text(
                                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. ",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w100,
                                        decoration: TextDecoration.none),
                                  ))
                                ],
                              ),
                              // // similar
                              const SizedBox(height: 5.0),
                              Row(
                                children: const [
                                  Text(
                                    "Similar Items",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        decoration: TextDecoration.none),
                                  )
                                ],
                              ),
                              const SizedBox(height: 5.0),
                              Expanded(
                                  child: SizedBox(
                                height: 100,
                                // child:Expanded(
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  children: [
                                    Container(
                                      width: 140,
                                      margin:
                                          const EdgeInsets.only(right: 10.0),
                                      decoration:  const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                          color: kKipbzCollectionsPink50),
                                    ),
                                    Container(
                                      width: 140,
                                      margin:
                                          const EdgeInsets.only(right: 10.0),
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                          color: kKipbzCollectionsPink50),
                                    ),
                                    Container(
                                      width: 140,
                                      margin:
                                          const EdgeInsets.only(right: 10.0),
                                      decoration:  const BoxDecoration(
                                          borderRadius:BorderRadius.all(
                                              Radius.circular(20.0)),
                                          color: kKipbzCollectionsPink50),
                                    ),
                                    Container(
                                      width: 140,
                                      margin:
                                          const EdgeInsets.only(right: 10.0),
                                      decoration:  const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                          color: kKipbzCollectionsPink50),
                                    ),
                                    Container(
                                      width: 140,
                                      margin:
                                          const EdgeInsets.only(right: 10.0),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        color: kKipbzCollectionsPink50,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                              Expanded(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    
                                    children: [
                                      IconButton(
                                          onPressed: () => {
                                            _lessFromCart()
                                          },
                                          // color: Colors.white,
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateColor.resolveWith((states) => Colors.pink.shade100),
                                            padding: MaterialStateProperty.resolveWith((states) => const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)),
                                           
                                            ),
                                          icon: const Icon(
                                            Icons.remove,
                                            semanticLabel: 'Less',
                                          ),
                                        ),
                                      Text('$_itemPieces',
                                      
                                      style: const TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w400,
                                        
                                      ),),
                                      IconButton(
                                          onPressed: () => {
                                            _addCart()
                                          },
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateColor.resolveWith((states) => Colors.pink.shade100),
                                            padding: MaterialStateProperty.resolveWith((states) => const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)),
                                            
                                            ),
                                          icon: const Icon(
                                            Icons.add,
                                            semanticLabel: 'Add',
                                          ))
                                    ],
                                  ),
                                  ElevatedButton(
                                      onPressed: () => {},
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateColor.resolveWith(
                                                  (states) =>
                                                      Colors.pink.shade100),
                                          padding:
                                              MaterialStateProperty.resolveWith(
                                                  (states) =>
                                                      const EdgeInsets.fromLTRB(
                                                          35,
                                                          15.0,
                                                          35.0,
                                                          15.0))),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: const [
                                          Text(
                                            "Add Cart",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15),
                                          ),
                                          Icon(
                                            Icons.add_shopping_cart,
                                            color: Colors.black,
                                          ),
                                        ],
                                      ))
                                ],
                              ))
                            ]),
                      )))
            ],
          ),
        ));
  }
}
