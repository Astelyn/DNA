/* Game - the outermost class for a DNA application. Contains a stack-based
   state machine and takes care of initialization and the main update/render loop.
*/
module dna.game;

import std.datetime;
import dna.graphics.all;
import dna.state;
import dna.statemachine;

export class Game {
private:
    bool   running = true;
    double totalElapsed;
    double lastDelta;

    //Video variables
    //Graphics graphics;
    bool _fullscreen = false;
    bool _vsync;
    int  _width;
    int  _height;

    //FPS calculations
    double lastFrame;
    double lastFPSTime;
    int    lastFPS;
    int    fps;

    //Input
    //Input input;

public:
    bool fixedTimestep = false;
    bool showFPS;
    int  targetFPS;

    @property
    {
        bool fullscreen(bool n) {
            return _fullscreen = n;
        }

        bool vsync(bool n) {
            return _vsync = n;
        }

        int width(int n) {
            return _width = n;
        }

        int height(int n) {
            return _height = n;
        }
    }

    this(State state)
    {
        StateMachine.push(state);

        totalElapsed = 0.0;
        lastDelta = 0.0;

        //Initialize OpenGL
        //Initialize OpenAL
    }

    void run()
    {
        while (running) {
            auto start = Clock.currTime().stdTime();

            StateMachine.peek().update(this, lastDelta);
            StateMachine.peek().draw(/*graphics*/);

            auto end = Clock.currTime().stdTime();
            lastDelta = (end - start) / 10000.0;
            totalElapsed += lastDelta;
        }

        //Exit code here
    }
}

