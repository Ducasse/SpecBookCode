Class {
	#name : #ImdbFilmPresenter2,
	#superclass : #ImdbFilmPresenter1,
	#category : #'Spec2-TutorialOne'
}

{ #category : #initialization }
ImdbFilmPresenter2 >> initializeWindow: aWindowPresenter [
	aWindowPresenter
		title: 'Film';
		initialExtent: 400 @ 250
]
