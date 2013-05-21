/* Game - Provides basic graphics device initialization,
   game logic, and rendering code
*/
module dna.framework.game;

import dna.system.timespan;

class Game {
private:
    GameComponentCollection _components;        // { get; }
    ContentManager          _content;           // { get; set; }
    GraphicsDevice          _graphicsDevice;    // { get; }
    TimeSpan                _inactiveSleepTime; // { get; set; }
    bool                    _isActive;          // { get; }
    bool                    _isFixedTimeStep;   // { get; set; }
    bool                    _isMouseVisible;    // { get; set; }
    LaunchParameters        _launchParameters;  // { get; }
    GameServiceContainer    _services;          // { get; }
    TimeSpan                _targetElapsedTime; // { get; set; }
    GameWindow              _window;            // { get; }

    //Private mutators
    @property
    {
        bool components(GameComponentCollections n) {
            return _components = n;
        }

        bool graphicsDevice(GraphicsDevice n) {
            return _graphicsDevice = n;
        }

        bool isActive(bool n) {
            return _isActive = n;
        }

        bool launchParameters(LaunchParameters n) {
            return _launchParameters = n;
        }

        bool services(GameServiceContainer n) {
            return _services = n;
        }

        bool window(GameWindow n) {
            return _window = n;
        }
    }

protected:
    bool beginDraw()
    {

    }

    bool beginRun()
    {

    }

    void draw(GameTime gameTime)
    {

    }

    void endDraw()
    {

    }

    void endRun()
    {

    }

    void finalize()
    {

    }

    void initialize()
    {

    }

    void loadContent()
    {

    }

    void onActivated(/*object sender, EventArgs args*/)
    {

    }

    void onDeactivated(/*object sender, EventArgs args*/)
    {

    }

    void onExiting(/*object sender, EventArgs args*/)
    {

    }

    bool showMissingRequirementMessage(/*Exception exception*/)
    {

    }

    void unloadContent()
    {

    }

    void update(GameTime gameTime)
    {

    }

public:
    //Public accessors/mutators
    @property
    {
        
    }

    bool getIsActive()
    {
        return isActive;
    }

    this()
    {

    }

    void dispose()
    {

    }

    void dispose(bool disposing)
    {

    }
    
    void exit()
    {

    }
    
    void loadGraphicsContent()
    {

    }
    
    void resetElapsedTime()
    {

    }

    void run()
    {

    }

    void runOneFrame()
    {

    }
    
    void suppressDraw()
    {

    }

    void tick()
    {

    }
}

