import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Image.asset(
              "assets/images/logo.png",
              //width: 400,
              //height: 200,
              //fit: BoxFit.contain,
            ),
            centerTitle: true,
            backgroundColor: Colors.lightBlueAccent,
            toolbarHeight: 200,
          ),
          body: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Description", 
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.all(32.0),
                  //decoration: BoxDecoration(),
                  child: const Text(
                    """Established in 1977, Burgan Bank is currently the third largest bank by assets in Kuwait. From its earliest days, the Bank has significantly focused on the corporate and financial institution sectors, in addition to diversifying its offering to cater to its growing retail and private banking customer base.
                    Burgan Bank has majority-owned subsidiaries, collectively known as the “Burgan Bank Group”, in the MENAT region. This Group is supported by one of the largest branch networks across the region and includes: Gulf Bank Algeria – AGB (Algeria), Tunis International Bank – TIB (Tunisia), and the fully owned Burgan Bank Turkey. Furthermore, Burgan Bank has a presence in the UAE through its corporate office, Burgan Financial Services Limited.
                    The Bank has continuously improved its performance over the years, through an expanded revenue structure, diversified funding sources, and a strong capital base. The adoption of state-of-the-art services and technology has positioned it as a trendsetter in the domestic market and within the MENA region. Moreover, Burgan Bank’s brand has been built on a foundation of real values – trust, commitment, excellence and progression – which serve as a reminder of the high standards to which the Bank always aspires. In fact, the Bank’s core philosophy of ‘Driven by You’ is the foundation on which its products and services are continuously developed.
                    Burgan Bank is a majority owned subsidiary of KIPCO (Kuwait Projects Company), one of the largest holding companies in the MENA region.""",
                    //softWrap: true,
                    overflow: TextOverflow.clip,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      GoRouter.of(context).push("/branches_page");
                    }, 
                    child: const Text("Explore")
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}