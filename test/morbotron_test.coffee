chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'hubot-morbotron', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/morbotron')(@robot)

  it 'registers a respond listener for "futurama me <query>"', ->
    expect(@robot.respond).to.have.been.calledWithMatch sinon.match((val) ->
      val.test "futurama me d'oh!"
    )

  it 'registers a respond listener for "futurama search <query>"', ->
    expect(@robot.respond).to.have.been.calledWithMatch sinon.match((val) ->
      val.test "futurama search me fail english?"
    )

  it 'registers a respond listener for "morbotron <query>"', ->
    expect(@robot.respond).to.have.been.calledWithMatch sinon.match((val) ->
      val.test "morbotron i'd be stupid not to do this"
    )

  it 'does NOT register a hear listener', ->
    expect(@robot.hear).to.not.have.been.calledWith sinon.match((val) ->
      val.test "futurama search"
    )
