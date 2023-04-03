import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practical/model.dart';
import 'package:practical/services.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, bool> selected = {};
  Representative? rep;
  Representative? srep;
  List<Data>? d = [];

  void onSearch(String search) {
    print(search);
    if (search == "") {
      setState(() {
        d = [];
      });
      return;
    }

    if (rep != null) {
      setState(() {
        d = [];
      });
      rep?.data!.forEach((ele) {
        if (ele.name!.toLowerCase().contains(search.toLowerCase())) {
          setState(() {
            d!.add(ele);
          });
        }
      });
      print(d!.length);
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    await Services.getData().then((value) {
      setState(() {
        rep = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight * 3.5),
        child: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          leadingWidth: 30,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: null,
          ),
          title: Text("Setting"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            Stack(
              alignment: Alignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none_rounded)),
                Positioned(
                  right: 8,
                  top: 10,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.red, width: 2),
                        color: Colors.white),
                    child: Text(
                      " 2 ",
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Flexible(
                child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Colors.grey.withOpacity(0.2), width: 2)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 6,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple.shade500,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Representative",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        Flexible(
                          flex: 6,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Granted Suppier",
                                  style: TextStyle(
                                      color: Colors.deepPurple.shade500,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: TextFormField(
                    onChanged: (v) {
                      onSearch(v);
                    },
                    decoration: InputDecoration(
                      hintText: "Representative",
                      prefixIcon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {},
                      ),
                      suffix: Text(
                        "ADD",
                        style: TextStyle(
                            color: Colors.deepPurple.shade500,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2),
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
      body: FutureBuilder<Representative>(
          future: Services.getData()!,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                  child: CupertinoActivityIndicator(
                color: Colors.grey,
                radius: 18,
              ));
            }
            Representative? rep = snapshot.data;
            return ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 15),
              itemCount: d!.length != 0 ? d!.length : rep!.data!.length,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                if (d!.length != 0) {
                  return card(d![index], index);
                }
                return card(rep!.data![index], index);
              },
            );
          }),
    );
  }

  Widget card(Data data, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: selected[index.toString()] == true
                  ? Colors.deepPurple
                  : Colors.grey.withOpacity(0.5),
              width: 1),
        ),
        child: ListTile(
          tileColor: selected[index.toString()] == true
              ? Colors.deepPurple.withOpacity(0.1)
              : Colors.transparent,
          leading: Container(
            width: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade100,
                border: Border.all(
                    color: selected[index.toString()] == true
                        ? Colors.deepPurple
                        : Colors.grey.withOpacity(0.5),
                    width: 2)),
            child: Center(
                child: Text(
              data.name.toString().toUpperCase()[0],
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
            )),
          ),
          title: Text(
            data.name.toString().toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            data.customerId.toString().toLowerCase(),
            style: TextStyle(
                color: selected[index.toString()] == true
                    ? Colors.deepPurple
                    : Colors.grey),
          ),
          trailing: index % 2 == 0
              ? Checkbox(
                  activeColor: Colors.deepPurple,
                  value: selected[index.toString()] ?? false,
                  onChanged: (v) {
                    setState(() {
                      selected[index.toString()] = v!;
                    });
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                )
              : IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        title: Text("Are your sure for delete?"),
                        actions: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    print("yes");
                                  },
                                  child: Text(
                                    "Yes",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    print("No");
                                  },
                                  child: Text(
                                    "No",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.delete_outline,
                    color: Colors.red,
                  ),
                ),
        ),
      ),
    );
  }
}
