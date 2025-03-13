// personal_trainer.dart
abstract class Workout {
  void generateRoutine();
}

class StrengthTraining extends Workout {
  @override
  void generateRoutine() {
    print('Strength Training Routine: 5x5 squats, bench press, deadlifts (AI optimized for muscle gain)');
  }
}

class Cardio extends Workout {
  @override
  void generateRoutine() {
    print('Cardio Routine: 30-min run, 15-min cycling (AI optimized for endurance)');
  }
}

class Yoga extends Workout {
  @override
  void generateRoutine() {
    print('Yoga Routine: Sun Salutations, Warrior Pose (AI optimized for flexibility)');
  }
}

void main() {
  print("Task 2: AI-Based Personal Trainer App");
  Workout strength = StrengthTraining();
  Workout cardio = Cardio();
  Workout yoga = Yoga();
  strength.generateRoutine();
  cardio.generateRoutine();
  yoga.generateRoutine();
}