function love.load()
    playingAreaWidth = 300
    playingAreaHeight = 388

    birdX = 62
    birdWidth = 30
    birdHeight = 25

    pipeSpaceHeight = 100
    pipeWidth = 54

    function newPipeSpaceY()
        local pipeSpaceYMin = 54
        local pipeSpaceY = love.math.random(
            pipeSpaceYMin,
            playingAreaHeight - pipeSpaceHeight - pipeSpaceYMin
        )
        return pipeSpaceY
    end

    function reset()
        birdY = 200
        birdYSpeed = 0

        pipe1X = playingAreaWidth
        pipe1SpaceY = newPipeSpaceY()

        pipe2X = playingAreaWidth + ((playingAreaWidth + pipeWidth) / 2)
        pipe2SpaceY = newPipeSpaceY()

        score = 0

        upcomingPipe = 1
    end

    reset()
end

function love.update(dt)
    -- etc.

    if isBirdCollidingWithPipe(pipe1X, pipe1SpaceY)
    or isBirdCollidingWithPipe(pipe2X, pipe2SpaceY)
    or birdY > playingAreaHeight then
        reset()
    end

    -- etc.
end
