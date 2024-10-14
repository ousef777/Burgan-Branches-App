import 'package:burgan_branches_app/branches_page.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget{
  final BankBranch branch;
  const DetailsPage({super.key, required this.branch});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(branch.name),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Location: ${branch.address}", style: const TextStyle(fontSize: 18),),
            Text("Opening Hours: ${branch.hours}", style: const TextStyle(fontSize: 18),),
            Image.asset("assets/images/Head.jpg"),
            const Text("Additional information: none", style: const TextStyle(fontSize: 18),),
          ],
        ),
      ),
    );
  }

}