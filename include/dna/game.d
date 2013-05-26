/*

Copyright (C) 2013 Allie Saia <allie@fcraft.net>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*/

module dna.game;

//Test
import std.stdio;

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
    Graphics graphics;
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

        graphics = new Graphics();
        graphics.init();

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

