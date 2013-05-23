/* DNAApp - the outermost class for a DNA application. Contains the game
   instance and takes care of initialization and the main update/render loop.
*/
module dna.framework.dnaapp;

import std.datetime;
import dna.framework.graphics;

class DNAApp {
private:
    bool closing;
    double totalElapsed;
    double lastDelta;

public:
    Game game;
    int targetFPS;

    this(Game g)
    {
        game = g;
        game.load();

        totalElapsed = 0.0;
        lastDelta = 0.0;

        //Initialize OpenGL
        //Initialize OpenAL
    }

    //TODO: Add fixed timestep
    void run()
    {
        while (!closing) {
            auto start = Clock.currTime().stdTime();

            game.update(lastDelta);
            game.draw(/*graphics*/);

            auto end = Clock.currTime().stdTime();
            lastDelta = (end - start) / 10000.0;
            totalElapsed += lastDelta;
        }

        game.quit();
    }
}

