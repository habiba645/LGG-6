// afat/snails.dart
import 'package:flutter/material.dart';

class Snails extends StatelessWidget {
  const Snails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: SelectableText(
          """Snail Life Cycle
- Activity: Snails are active during cool, damp conditions, particularly in autumn, winter, and spring. They feed mostly at night or on overcast days.
- Habitat: They prefer areas with dense vegetation, moist soil, or mulch, where they can shelter during dry periods.
- Life Cycle: Snails lay eggs in clusters under debris or moist soil, hatching into juvenile snails that grow to adulthood within 1-2 years.

Damage to Crops
- Feeding Habits: Snails feed on a wide range of plants, damaging leaves, stems, seedlings, and fruit. Their feeding creates holes in leaves and surface damage on fruits, affecting both appearance and productivity.
- Impact on Agriculture: Severe infestations can lead to significant crop losses, especially in vegetables, cereals, and fruits. Snail damage is most common during the establishment phase of crops (seedlings) or as crops mature and bear fruit.

Monitoring and Scouting
- Monitoring Tips: Scout for snail activity during moist conditions and examine under boards, rocks, or plant debris where snails hide during the day.
- Trap Methods: Use bait traps or place refuges like wooden boards or moist sacks to attract snails, making monitoring easier.

Management Strategies

1. Cultural Controls
- Habitat Reduction: Remove vegetation, crop residues, and organic matter that provide shelter for snails. Ensure fields are well-drained to reduce humidity.
- Tillage: Cultivate soil after harvest to expose and kill snail eggs and juveniles, and reduce their shelter opportunities.
- Irrigation Management: Water early in the day so the soil dries out by evening, as snails are more active in moist environments.

2. Biological Controls
- Natural Predators: Encourage natural predators such as birds, beetles, and some types of parasitic nematodes, which help reduce snail populations naturally.
- Habitat for Predators: Creating habitats that attract these predators can be part of an integrated management approach.

3. Chemical Controls
- Bait Applications: Snail baits containing active ingredients like metaldehyde, iron phosphate, or ferric sodium EDTA can be effective.
  - Metaldehyde: Traditionally used but poses risks to non-target organisms.
  - Iron Phosphate: A safer, more environmentally friendly option that breaks down into plant nutrients.
  - Ferric Sodium EDTA: Effective against snails but less harmful to pets and wildlife.
- Application Timing: Apply baits during moist conditions when snails are most active, typically after rain or irrigation. Reapply as needed, especially after heavy rain.

Environmental Considerations
- Non-Target Effects: Some chemical baits, particularly those containing metaldehyde, can be harmful to pets, wildlife, and beneficial organisms, so consider using less toxic alternatives like iron phosphate.
- Preventing Runoff: Use baits responsibly to avoid contaminating water bodies or harming non-target species.
- Sustainable Practices: Incorporate multiple strategies, including cultural and biological controls, to reduce reliance on chemical treatments and promote long-term pest management.

""",
          style: TextStyle(fontSize: 16 ,  color: Colors.black),
        ),
      ),
    );
  }
}