/* Game - the base interface for any DNA game */
module dna.framework.game;

interface Game {
public:
    void load();
    void update(double dt);
    void draw(/*Graphics g*/);
    void quit();
}

