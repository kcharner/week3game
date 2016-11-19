// 1. Make an array containing available letter options for game 

var letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
   // console.log(letters);

// 2. Tell computer to select a letter from array

//var selection = function() 
var selection = letters[Math.floor(Math.random() * letters.length)];
    console.log(selection);

// 3. Enable user to guess a letter

var userGuess;

// 4. Initialize variables for game
var lettersGuessed =[]; // letters that have been entered
var guessesRemaining = 7; // Initial # of guesses

// 5. Tell computer to evaluate letter guessed 
var userGuess= document.getElementById("guessBox");

// 6. Create target references to append to later
var targetDiv = document.getElementById("textToShow");
var guessTarget = document.getElementById("guessHere");
var winTarget = document.getElementById("winsHere");
var lossTarget = document.getElementById("lossHere");

// 7. Set up initial scores
var Wins =0;
var Losses =0 ;

// 8. Print Initial Scores
var wincounter = document.createElement("div");
   wincounter.innerHTML = Wins;
   winTarget.appendChild(wincounter);

var losscounter = document.createElement("div");
   losscounter.innerHTML = Losses;
   lossTarget.appendChild(losscounter);


// 9. Runs when a button is pressed
document.onkeyup = function(event){

   var userGuessValue = userGuess.value;
       userGuessValue = userGuessValue.toLowerCase();  
   var lettersHere= document.createElement("div");
   var guessdiv = document.createElement("div");

       if (letters.indexOf(userGuessValue) != -1){

       if (userGuessValue == selection) {
               alert("You have guessed correctly! You must be psychic.")
               lettersGuessed.push(userGuessValue);
               lettersHere.innerHTML = lettersGuessed;
                targetDiv.appendChild(lettersHere); 
                Wins++;
                wincounter.innerHTML = Wins;
               winTarget.appendChild(wincounter); 
        }
       else {
       alert("You have guessed incorrectly, please try again.");
               lettersGuessed.push(userGuessValue);
               targetDiv.innerHTML = lettersGuessed;
               guessesRemaining--;
               guessdiv.innerHTML = guessesRemaining;
               Losses++;
               losscounter.innerHTML = Losses;
               lossTarget.appendChild(losscounter); 
        }}
}

  