# Math Game - Ruby App

## Planning

### Extract Nouns for Classes

These are the things that will ultimately be delineated by different classes within the app.

- Game 

  Initialize with 2 Players.
  Methods req: start_game (loop through turns), game_over, winner

- Players
  - Player 1 and Player 2

  The players class will allow me to create two individual player instances. Each of these instances will have a name (Player 1 and Player 2), they will be used to direct each math question and they will store their own scores. It will also handle their input as they answer questions.
  Initialize with a name & number of lives 3/3. 
  Methods req: initialize, reduce_lives, tally_score.

- Questions

  The questions class will allow me to generate random math question instances (just addition) that will store question statements and methods to automatically ask questions each turn.
  Initialize with num1(random), num2(random), answer(num1 + num2)
  Method req: check_answer(input), print_question

  Implementation:

  

