/* State - the base interface for a DNA game state */
module dna.state;

import dna.game;

export interface State {
public:
    void init();
    void update(Game game, double dt);
    void draw(/*Graphics g*/);
    void quit();
}
