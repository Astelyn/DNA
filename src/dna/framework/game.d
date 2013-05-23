/* Game - the base interface for any DNA game */
module dna.game;

interface Game {
public:
    void load();
    void update(double dt);
    void draw(/*Graphics graphics*/);
    void quit();
}

