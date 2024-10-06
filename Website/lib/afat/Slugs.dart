// afat/Slugs.dart
import 'package:flutter/material.dart';

class Slugs extends StatelessWidget {
  const Slugs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: SelectableText(
          """Slug Life Cycle
- Activity: Slugs are most active at night and during cool, damp conditions, particularly after rain or watering.
- Habitat: They thrive in areas with high moisture, shade, and dense plant growth, hiding under mulch, boards, and other debris during the day.
- Life Cycle: Slugs lay eggs in moist soil or under debris, and eggs hatch within a few weeks. They can survive in various weather conditions by seeking shelter.


Damage to Plants
- Feeding Habits: Slugs feed primarily on leaves, stems, and fruit. They leave irregular holes in plant tissue, affecting the appearance and health of plants.
- Signs of Damage: The presence of slime trails and ragged, irregular holes in leaves are clear signs of slug activity. They are especially damaging to tender seedlings and low-lying crops like lettuce, strawberries, and hostas.

Monitoring and Scouting
- Signs of Infestation: Look for slime trails and damaged leaves in moist, shaded areas of your garden. Check underneath boards, stones, and other debris for hiding slugs.
- Scouting Tips: Early morning and late evening are the best times to spot slugs, as they come out during cooler periods.
 
Management Strategies

1. Cultural Controls
- Reduce Moisture: Water in the morning to allow soil and plants to dry out by evening, as slugs prefer damp conditions.
- Improve Airflow: Prune plants and thin dense foliage to reduce shaded, moist areas where slugs hide.
- Use Mulch Sparingly: Mulches like straw or bark can provide hiding places for slugs, so avoid heavy mulching in areas prone to infestation.

2. Physical Controls
- Handpicking: Slugs can be manually removed during the evening or early morning when they are active.
- Traps: Set up traps using boards, grapefruit rinds, or shallow containers filled with beer or yeast water, which attract slugs. Collect and dispose of them each morning.
- Barriers:
  - Copper Strips: Placing copper around plant beds or pots deters slugs, as contact with copper generates a small electric shock.
  - Crushed Eggshells, Diatomaceous Earth, or Sand: These materials create rough surfaces that slugs avoid crossing.

3. Biological Controls
- Predators: Encourage natural predators such as ground beetles, birds, frogs, and toads to reduce slug populations.
- Nematodes: Parasitic nematodes specifically targeting slugs are available for biological control. They can be applied to moist soil.

4. Chemical Controls
- Slug Baits: Use bait products containing iron phosphate or ferric sodium EDTA, which are effective against slugs and less harmful to pets, wildlife, and the environment compared to traditional metaldehyde baits.
- Placement: Scatter baits around susceptible plants and reapply as needed. Ensure baits are placed in moist areas where slugs are likely to travel.

Prevention Tips
- Clean Up Debris: Remove boards, rocks, and plant debris where slugs might hide.
- Trap Crops: Use plants like marigolds or lettuce to attract slugs away from valuable crops.

Environmental Considerations
- Pet and Wildlife Safety: Use iron phosphate-based baits, which are less toxic to animals and beneficial organisms.
- Sustainable Approach: Integrate physical, cultural, and chemical controls for long-term slug management without harming the environment.
""",
          style: TextStyle(fontSize: 16 ,  color: Colors.black),
        ),
      ),
    );
  }
}