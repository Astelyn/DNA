module examplegame;

import dna.framework.all;

class MyGame : Game {
public:
    void load()
    {
        //Initialization code
    }

    void update(double dt)
    {
        //Game update logic
    }

    void draw(/*Graphics g*/)
    {
        //Rendering code
    }
}

void main()
{
    auto app = new DNAApp(new MyGame());
    app.targetFPS = 60;
    //Other configuration stuff here
    app.run();
}

