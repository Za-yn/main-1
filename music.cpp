/*
 * music.cpp
 *
 *  Created on: 20 Mar 2019
 *      Author: zhuan
 */
#include <Arduino.h>
#include <avr/io.h>
#include <FreeRTOS.h>
#include <task.h>
#include <queue.h>
#include "pitches.h"

int melody[] = {
  NOTE_D4, NOTE_E4, NOTE_G4, NOTE_G4, NOTE_G4, 0, NOTE_B3, NOTE_C4
};

// note durations: 4 = quarter note, 8 = eighth note, etc.:
int noteDurations[] = {
  4, 4, 8, 8, 8, 16, 16, 4
};

void setupMusic() {
	pinMode(2, OUTPUT);
}

void playTune() {

	while(1) {

		for (int thisNote = 0; thisNote < 8; thisNote++) {
			// to calculate the note duration, take one second divided by the note type.
			//e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
			int noteDuration = 1000 / noteDurations[thisNote];
			tone(2, melody[thisNote], noteDuration);

			// to distinguish the notes, set a minimum time between them.
			// the note's duration + 30% seems to work well:
			int pauseBetweenNotes = noteDuration * 1.30;
			delay(pauseBetweenNotes);
			// stop the tone playing:
			noTone(8);
		}
	}
}