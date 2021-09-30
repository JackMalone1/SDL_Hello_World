#pragma once

class Game
{
public:
    bool isRunning();
    void handleEvents();
    void update();
    void render();
    void cleanup();
private:
};