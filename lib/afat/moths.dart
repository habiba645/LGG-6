// afat/moths.dart
import 'package:flutter/material.dart';

class Moths extends StatelessWidget {
  const Moths({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: SelectableText(
          """Moth Life Cycle
- Stages: Moths undergo complete metamorphosis with four stages—egg, larva
- Eggs: Laid on host plants.
- Larvae: The caterpillars are the main damaging stage, feeding on leaves, stems, or fruits.
- Pupae: Caterpillars form pupae, where they develop into adults.
- Adults: Moths are primarily nocturnal and fly to find mates and suitable locations for laying eggs.

Factors Affecting Populations
- Weather: Warm temperatures support rapid moth development, while cold conditions limit growth.
- Food Supply: Moth larvae depend on specific host plants for nourishment, influencing population density.

Damage to Crops
- Feeding Habits: Caterpillars feed voraciously on plants, damaging leaves, fruits, and stems.
- Types of Crops Affected: Moth larvae can impact corn, cotton, vegetables, and fruit crops, with damage leading to reduced yield or quality.

Monitoring and Scouting
- Scouting: Regularly inspect crops for eggs or caterpillars to catch infestations early.
- Trapping: Use pheromone traps to monitor adult moth activity and predict egg-laying periods.

Management Strategies

1. Cultural Controls
- Crop Rotation: Reduces overwintering larvae by interrupting their food source.
- Sanitation: Removing plant debris and infested plants reduces larvae survival.
- Trap Crops: Planting specific crops to attract moths away from main crops.

2. Biological Controls
- Natural Enemies: Parasitoid wasps, predatory insects, and birds help control moth populations.
- Pathogens: Bacterial or fungal diseases naturally reduce moth larvae numbers.

3. Chemical Controls
- Insecticides: Target caterpillars when populations exceed economic thresholds.
- Insect Growth Regulators (IGRs): Disrupt moth development at various stages.
- Timing: Early application during larval stages is most effective.

Treatment Strategies
- Targeting Early Stages: Focus chemical treatments on the egg or young larval stage to minimize damage.
- Pheromone Disruption: Use pheromones to confuse mating and reduce reproduction.

Environmental Considerations
- Non-Target Species: Consider the effects of treatments on beneficial insects and pollinators.
- IPM Approach: Integrating biological, cultural, and chemical methods for sustainable management.

Insecticide Resistance Management
- Rotate Modes of Action: Prevent resistance by alternating between different insecticide classes.
- Monitor for Resistance: Regularly assess effectiveness and adjust methods accordingly.

 Economic Considerations
- Cost-Effective Control: Weigh treatment costs against potential yield losses.
- Long-Term Planning: Consider the impact of moth management on future seasons and crop rotations.

""",
          style: TextStyle(fontSize: 16,  color: Colors.black),
        ),
      ),
    );
  }
}