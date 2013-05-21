/* Game - Provides basic graphics device initialization,
   game logic, and rendering code
*/
module dna.framework.game;

import dna.system.timespan;

class Game {
private:
    const float defaultTargetFramesPerSecond = 60.0f;
    immutable TimeSpan _maxElapsedTime = TimeSpan.fromMilliseconds(500);

    IGraphicsDeviceService  _graphicsDeviceService;
    bool                    _initialized = false;
    bool                    _suppressDraw;

    //Timer variables
    TimeSpan                _accumulatedElapsedTime;
    immutable GameTime      _gameTime = new GameTime();
    Stopwatch               _gameTimer = Stopwatch.startNew();
    
    //Public variables
    GameComponentCollection _components;            // { get; }
    GraphicsDevice          _graphicsDevice;        // { get; }
    IGraphicsDeviceManager  _graphicsDeviceManager; // { get; }
    bool                    _isActive;              // { get; }
    LaunchParameters        _launchParameters;      // { get; }
    GameServiceContainer    _services;              // { get; }
    GameWindow              _window;                // { get; }
    ContentManager          _content;               // { get; set; }
    TimeSpan                _inactiveSleepTime;     // { get; set; }
    bool                    _isFixedTimeStep;       // { get; set; }
    bool                    _isMouseVisible;        // { get; set; }
    TimeSpan                _targetElapsedTime;     // { get; set; }
    GamePlatform            _platform;              // { get; set; }

    static Game             _instance;              // { get; private set; }

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

        bool instance(Game n) {
            return _instance = n;
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

    this()
    {
        instance = this;
    }

    ~this()
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

