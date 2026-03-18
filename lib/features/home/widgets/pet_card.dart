import 'package:flutter/material.dart';

class PetCard extends StatelessWidget {
  const PetCard({super.key});

  @override
  Widget build(BuildContext context) {

    return Card(

      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Row(
          children: [

            const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1558788353-f76d92427f16",
              ),
            ),

            const SizedBox(width: 16),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [

                Text(
                  "Bella",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text("Golden Retriever"),

                Text("Last seen 5 min ago")

              ],
            ),

            const Spacer(),

            ElevatedButton(
              onPressed: (){},
              child: const Text("Open Map"),
            )

          ],
        ),
      ),
    );
  }
}
