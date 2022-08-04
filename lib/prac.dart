import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Prac extends StatefulWidget {
  const Prac({Key? key}) : super(key: key);

  @override
  State<Prac> createState() => _PracState();
}

class _PracState extends State<Prac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.red.withOpacity(0.5),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'First Name',
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.red.withOpacity(0.5),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'Middle Name'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.red.withOpacity(0.5),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: 'Last Name'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    //margin: EdgeInsets.all(8),
                    color: Colors.red.withOpacity(0.5),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            PopupMenuButton(
                              child: const Icon(Icons.person),
                              itemBuilder: (context) => [
                               const PopupMenuItem(
                                  child: Text("1"),
                                ),
                              ],
                            ),
                            Flexible(
                              child: Container(
                                color: Colors.red.withOpacity(0.5),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'DD',
                                    
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Container(
                                color: Colors.red.withOpacity(0.5),
                                child: TextFormField(
                                  decoration:
                                      const InputDecoration(hintText: 'MM'),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: Container(
                                color: Colors.red.withOpacity(0.5),
                                child: TextFormField(
                                  decoration:
                                      const InputDecoration(hintText: 'YY'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    color: Colors.red.withOpacity(0.5),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(hintText: 'Nationality'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    color: Colors.red.withOpacity(0.5),
                    child: TextFormField(
                      decoration: const InputDecoration(hintText: 'Address'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    color: Colors.red.withOpacity(0.5),
                    child: TextFormField(
                      decoration: const InputDecoration(hintText: 'Email id'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    color: Colors.red.withOpacity(0.5),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(hintText: 'Contect Numbers'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
