#ifndef FEEDBACK_H
#define	FEEDBACK_H

// Indication de mode en cours
// ARMED	: 1 pulse
// GO		: 2 pulses
// STOP		: 3 pulses
// END		: 4 pulses

#define INFO_OUT	PORTCbits.RC4	// Info de feedback

#define FEEDBACK_PULSE			50		// Dur�e d'un pulse		: 50ms
#define FEEDBACK_INTER_PULSE	50		// Dur�e inter-pulse	: 50ms
#define FEEDBACK_PERIOD			500		// P�riode du feedback	: 500ms // P�riode > (4 * FEEDBACK_PULSE + 4 * FEEDBACK_INTER_PULSE)

typedef struct StructFeedback {
	word		Period;
	byte		Pulse;
	byte		State;	// ARMED / GO / STOP / END
	byte		Step;
}struFeedback;

struFeedback Feedback;

#endif	/* FEEDBACK_H */