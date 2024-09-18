#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Name an unusual sport: " NOUN1
read -p "2. Name an action related to the sport (place verb in -ing form): " VERB1
read -p "3. Name an adjective: " ADJ1
read -p "4. Name a place to visit: " NOUN2
read -p "5. Name an adverb: " ADV1
read -p "6. Name a type of animal: " NOUN3
read -p "7. Name another action: " VERB2
read -p "8. Name a color: " COLOR1

echo "Once upon a time, there was a girl called Sam who loved $NOUN1."
echo "One day, while she was $VERB1 in $NOUN2, a $COLOR1 $NOUN3 appeared."
echo "The $NOUN3 snorted $ADV1 and made Sam $VERB2."
echo "Sam thought this was one of her top $ADJ1 times $VERB1 for sure."
