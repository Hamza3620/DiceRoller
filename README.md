# MiFinity

# Dice Roller

This code repository is a submission for task assigned to me from MiFinity. 

Following were the requirements:
The task assigned is to create a dice roll - flutter application that contains 2 main screens.
First screen should show a roll button that generates 2 random numbers from 1 to 6 on press.
When the roll is completed, these numbers should be displayed on this screen.
(To make it a bit fancier, you can display 2 dices which shakes upon button press rather than just numbers)

Second screen should show a history list of all generated numbers with a timestamp. Also, add a reset button to clear history.
Here are some guidelines:
No backend is necessary but you need to use a State management library to maintain the dice rolls such as riverpod- https://riverpod.dev/docs/getting_started or BLOC - https://bloclibrary.dev/#/ .
You can use a navigation library such as Autorouter -https://pub.dev/packages/auto_route to navigate from one screen to another.
Make use of components to fragment the ui as much as possible.

## Description
The developed application contains two screen to which the route is managed using AutoRoute and the functionalities include:
1. Rolling a die and getting a random number. The random number generated between 1 and 6 updates the die face on the first screen and records the number along with a timestamp.
2. History can be viewed on the second screen accessible from the history icon on the right corner of the app bar. Each instance of history contains a date, a time, a number that was generated. 
3. Entries in the history can be removed one by one by swiping an item left and dismissing it or the whole list can be cleared using the CLEAR HISTORY option provided at the bottom. 

