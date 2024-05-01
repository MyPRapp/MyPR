import 'package:flutter/material.dart';

class NameAndStars extends StatelessWidget {
  const NameAndStars({super.key, required this.clubName, required this.stars});

  final String clubName;
  final double stars;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          ' $clubName',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF9C0C04),
          ),
          textAlign: TextAlign.start,
        ),
        RatingStars(
          stars: stars,
        ),
      ],
    );
  }
}

//if(stars <= 0 || stars > 5), then color = grey
class RatingStars extends StatelessWidget {
  const RatingStars({super.key, required this.stars});

  final double stars;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (stars <= 0 || stars > 5)
          for (int i = 0; i < 5; i++)
            const Icon(
              Icons.star_border_outlined,
              size: 20,
              color: Colors.white30,
            ),
        if (stars % 1 == 0 && stars > 0 && stars <= 5)
          for (int i = 0; i < stars; i++)
            const Icon(
              Icons.star,
              size: 20,
              color: Color(0xFF9C0C04),
            ),
        if (stars % 1 != 0 && stars > 0 && stars <= 5)
          for (int i = 1; i < stars; i++)
            const Icon(
              Icons.star,
              size: 20,
              color: Color(0xFF9C0C04),
            ),
        if (stars % 1 != 0 && stars > 0 && stars <= 5)
          const Icon(
            Icons.star_half,
            size: 20,
            color: Color(0xFF9C0C04),
          ),
      ],
    );
  }
}

class MinPriceAndMaxPersons extends StatelessWidget {
  const MinPriceAndMaxPersons({
    super.key,
    required this.minPrice,
    required this.maxPersons,
  });

  final int minPrice;
  final int maxPersons;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          Icons.monetization_on,
          color: Color(0xFF9C0C04),
        ),
        Text(
          ' $minPrice',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const Text(
          ' | ',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        const Icon(
          Icons.account_circle,
          color: Color(0xFF9C0C04),
        ),
        Text(
          ' $maxPersons',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class DaysOpen extends StatelessWidget {
  const DaysOpen({
    super.key,
    required this.monday,
    required this.tuesday,
    required this.wednesday,
    required this.thursday,
    required this.friday,
    required this.saturday,
    required this.sunday,
  });

  final bool monday;
  final bool tuesday;
  final bool wednesday;
  final bool thursday;
  final bool friday;
  final bool saturday;
  final bool sunday;

  @override
  Widget build(BuildContext context) {
    Color mondayColor = Colors.white24;
    Color tuesdayColor = Colors.white24;
    Color wednesdayColor = Colors.white24;
    Color thursdayColor = Colors.white24;
    Color fridayColor = Colors.white24;
    Color saturdayColor = Colors.white24;
    Color sundayColor = Colors.white24;

    if (monday == true) mondayColor = const Color(0xFF9c0c04);
    if (tuesday == true) tuesdayColor = const Color(0xFF9c0c04);
    if (wednesday == true) wednesdayColor = const Color(0xFF9c0c04);
    if (thursday == true) thursdayColor = const Color(0xFF9c0c04);
    if (friday == true) fridayColor = const Color(0xFF9c0c04);
    if (saturday == true) saturdayColor = const Color(0xFF9c0c04);
    if (sunday == true) sundayColor = const Color(0xFF9c0c04);

    return Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Row(
          children: [
            Text(
              'Δ',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: mondayColor),
            ),
            const Text(
              '/',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white38),
            ),
            Text(
              'Τ',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: tuesdayColor),
            ),
            const Text(
              '/',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white38),
            ),
            Text(
              'Τ',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: wednesdayColor),
            ),
            const Text(
              '/',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white38),
            ),
            Text(
              'Π',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: thursdayColor),
            ),
            const Text(
              '/',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white38),
            ),
            Text(
              'Π',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: fridayColor),
            ),
            const Text(
              '/',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white38),
            ),
            Text(
              'Σ',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: saturdayColor),
            ),
            const Text(
              '/',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white38),
            ),
            Text(
              'Κ',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: sundayColor),
            ),
          ],
        ));
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: TextField(
        style: const TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
        cursorColor: Colors.black,
        cursorHeight: 25,
        cursorWidth: 2,
        decoration: InputDecoration(
          isCollapsed: true,
          contentPadding: const EdgeInsets.all(8),
          filled: true,
          fillColor: Colors.white70,
          hoverColor: Colors.black,
          hintText: 'Αναζήτηση',
          hintStyle: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}

/*Icon(
          Icons.star,
          size: 20,
          color: Color(0xFF9C0C04),
        ),
        Icon(
          Icons.star_half,
          size: 20,
          color: Color(0xFF9C0C04),
        ) */