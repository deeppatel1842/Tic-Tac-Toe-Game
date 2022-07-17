part of 'home_page.dart';

class GameModeSelectionWidget extends StatelessWidget {
  const GameModeSelectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
          const Text(
            "Tic Tac Toe",
            style: TextStyle(
              fontSize: 34.0,
              fontWeight: FontWeight.bold,
            ),
          ),
           const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                width: 54.0,
                height: 54.0,
                child: CrossWidget(
                  strokeWidth: 18.0,
                ),
              ),
              SizedBox(
                width: 24.0,
              ),
              SizedBox(
                width: 54.0,
                height: 54.0,
                child: CircleWidget(
                  strokeWidth: 16.0,
                ),
              ),
            ],
          ),
           const SizedBox(height: 50.0),
        const Text(
          "Choose your play mode",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 18.0,
        ),
        _GameButtonWidget(
          label: "With AI",
          onPressed: () {
            Get.to(() => const GamePage(),
                binding: GamePageBinding(isMultiPlayer: false));
          },
        ),
        const SizedBox(
          height: 12.0,
        ),
        _GameButtonWidget(
          label: "With a friend",
          onPressed: () {
            Get.to(() => const GamePage(),
                binding: GamePageBinding(isMultiPlayer: true));
          },
        ),
      ],
    );
  }
}

class _GameButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const _GameButtonWidget({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: const Color.fromARGB(255, 169, 187, 149),
        fixedSize: const Size.fromWidth(240.0),
        shape: const StadiumBorder(),
        elevation: 0.0,
        textStyle: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),
      child: Text(label),
    );
  }
}
