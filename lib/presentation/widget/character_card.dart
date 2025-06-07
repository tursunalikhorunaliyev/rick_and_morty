import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:rick_and_morty/domain/entity/character.dart';
import 'package:string_capitalize/string_capitalize.dart';

class CharacterCard extends StatelessWidget {
  final Character character;
  final VoidCallback? onTapStar;
  final bool isFavorite;

  const CharacterCard({
    super.key,
    required this.character,
    this.onTapStar,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: character.image,
                fit: BoxFit.cover,
                height: 250,
                width: double.infinity,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 40,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: ShapeDecoration(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  color: Colors.black.withOpacity(0.5),
                ),
                child: Text(
                  character.originName,
                  style: GoogleFonts.openSans(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            if (onTapStar != null)
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: ShapeDecoration(
                    shape: const CircleBorder(),
                    color: Colors.black.withOpacity(0.5),
                  ),
                  child: IconButton(
                    onPressed: onTapStar,
                    icon: Icon(
                      isFavorite ? EvaIcons.star : EvaIcons.starOutline,
                      color: Colors.orange,
                    ),
                  ),
                ),
              )
          ],
        ),
        const SizedBox(height: 12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(character.name, style: GoogleFonts.openSans(fontSize: 20)),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(EvaIcons.pinOutline, color: Colors.red),
                    const SizedBox(width: 5),
                    Text(
                      character.locationName,
                      style: GoogleFonts.openSans(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
            const Spacer(),
            Text(
              character.gender.name.capitalize(),
              style: GoogleFonts.openSans(fontSize: 16),
            )
          ],
        )
      ],
    );
  }
}
