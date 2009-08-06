var intervalId = 0;
var on = false;
var paused = false;
var atWork = false;
var workingTime = 600;
var playingTime = 120;
var seconds;
var hours;
var cycles;

function init() {
  if( window.widget ) {
    createStartButton( 'Work' );
    createPauseButton( 'Pause' );
    enablePauseButton( false );
  }
}

function count() {
  --seconds;

  if ( seconds > 0 ) {
    updateClockDisplay();
  }
  else {
    if ( atWork ) {
      startPlayByTimeout();
    }
    else {
      startWorkByTimeout();
    }
  }
}

function startButtonPress() {
  if ( on ) {
    if( atWork ) {
      startPlayByUser();
    }
    else {
      startIdleByUser();
    }
  }
  else {
    startWorkByUser();
  }
}

function pauseButtonPress() {
  if ( paused ) {
    intervalId = setInterval( count, 1000 );
    paused = false;
    updateClockDisplay();
    enableStartButton( true );
    createPauseButton( 'Pause' );

    text = '';
    if ( atWork ) {
      text = "Getting back to work";
    }
    else {
      text = "Getting back to playing";
    }

    growl( text, "At hour " + hours + " cycle " + cycles  );
  }
  else {
    clearInterval( intervalId );
    paused = true;
    updateState( "Paused" );
    enableStartButton( false );
    createPauseButton( 'Cont.' );

    growl( "Paused", "At hour " + hours + " cycle " + cycles  );
  }
}

function startWorkByUser() {
  on = true;
  paused = false;
  enablePauseButton( true );

  hours = 0;
  cycles = 0;
  seconds = workingTime;

  intervalId = setInterval( count, 1000 );

  startWork();
}

function startWorkByTimeout() {
  seconds = workingTime;
  say( startWork() );
}

function startWork() {
  atWork = true;
  updateClockDisplay();

  createStartButton( "Play" );

  text = "Start.";
  if ( cycles++ % 5 == 0 ) {
    cycles = 1;

    ++hours;
    text += " Hour " + hours + ".";
  }

  growl( "Time to work", "Hour " + hours + " cycle " + cycles  );

  return text;
}

function startPlayByUser() {
  startPlay();
}

function startPlayByTimeout() {
  say( startPlay() );
}

function startPlay() {
  seconds = playingTime;
  atWork = false;
  updateClockDisplay();

  createStartButton( 'Stop' );

  growl( "Time to play", "Hour " + hours + " cycle " + cycles  );

  return "Stop";
}

function startIdleByUser() {
  startIdle();
}

function startIdle() {
  on = false;
  clearInterval( intervalId );
  createStartButton( "Work" );
  enablePauseButton( false );
  updateState( "Idle" );
}

function updateState( text ) {
  document.getElementById( 'status' ).firstChild.data = text
}

function updateClockDisplay() {
  text = "";
  if ( atWork ) {
    text = 'Work ' + getClock();
  }
  else {
    text = 'Play ' + getClock();
  }
  updateState( text );
}

function createStartButton( title ) {
  document.getElementById( 'start' ).innerHTML = '';
  createGenericButton(
    document.getElementById( 'start' ), title, startButtonPress, 60
  );
}

function createPauseButton( title ) {
  document.getElementById( 'pause' ).innerHTML = '';
  createGenericButton(
    document.getElementById( 'pause' ), title, pauseButtonPress, 60
  );
}

function enableStartButton( enable ) {
  genericButtonSetEnabled( document.getElementById( 'start' ), enable );
}

function enablePauseButton( enable ) {
  genericButtonSetEnabled( document.getElementById( 'pause' ), enable );
}

function getClock() {
  text = '';
  clockMins = Math.floor( seconds / 60 ).toString();
  clockSecs = ( seconds % 60 ).toString();
  if( clockSecs.length < 2 ) clockSecs = '0' + clockSecs;
  text += clockMins + ':' + clockSecs;
  return text;
}

function say(text) {
  setTimeout(function() {
    widget.system('/usr/bin/say '+text, null)
  }, 1);
}

function growl( title, description ) {
  command = '/usr/bin/osascript growl.scpt '
    + '"' + dblEscapeQuotes( title ) + '" '
    + '"' + dblEscapeQuotes( description ) + '" '
    + "no"

  widget.system( command, null );
}

function dblEscapeQuotes(str) {
  return str.replace(/\"/g, '\\\"');
}

