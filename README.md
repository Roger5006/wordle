
## introduction
This is a "guess the secret word" kind of game. For each puzzle, there is a
particular secret 5-letter English word, and the player tries to infer what it
is by making a series of guesses. If the player can find the secret word, then
they win! And then they post some yellow and green squares on Twitter to amaze
their friends with their word-guessing prowess.

## Rules of the game

You may wish to give the game a try yourself to get a feel for it -- you can try
[the official version](https://www.nytimes.com/games/wordle/index.html), which
was recently acquired by the New York Times, or numerous unofficial clones
exist.

At each turn, the player guesses a word, which must come from a shared list of
5-letter English words. There is a dictionary of 5-letter words embedded in the
code for the game. Then the game compares the player's guess to the true secret
word, and returns a *response*, where the response consists of 5 colored
squares.

The squares have the following meaning:
  * gray: the corresponding letter does not appear in the secret word
  * yellow: the corresponding letter appears in the secret word, but not in that
    corresponding slot
  * green: the corresponding letter appears in the secret word, in that slot.

So each of these colors gives the player a lot of information about what the
secret word must be -- a gray square *means that a specific letter does not
appear at all in the secret word*, eliminating huge swaths of search space, and
yellow not only tells the player that a letter occurs in the secret word, but
that it *does not* occur in the corresponding slot.

Then it is up to the player to think of more words to try, until they find the
solution. We consider a guess to be *valid* when it is a 5-letter string of
ASCII characters a-z, and when it is one of the words in the specified word
list.









