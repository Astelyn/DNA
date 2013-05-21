/* GameTime - Snapshot of the game timing state expressed
   in values that can be used by variable-step (real time)
   or fixed-step (game time) games
*/
module dna.framework.gametime;

import dna.system.timespan; //TODO: implement this!

class GameTime {
public:
    TimeSpan ElapsedGameTime;
    TimeSpan TotalGameTime;
    bool IsRunningSlowly;

    this()
    {
        //TODO: constructor
    }
}

