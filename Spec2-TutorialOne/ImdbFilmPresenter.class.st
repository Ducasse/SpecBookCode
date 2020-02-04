Class {
	#name : #ImdbFilmPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'nameText',
		'directorText',
		'yearNumber'
	],
	#category : #'Spec2-TutorialOne'
}

{ #category : #specs }
ImdbFilmPresenter class >> defaultSpec [ 
	^ SpGridLayout new 
			add: 'Name' at: 1@1; add: #nameText at: 2@1;
			add: 'Director' at: 1@2; add: #directorText at: 2@2;
			add: 'Year' at: 1@3; add: #yearNumber at: 2@3;
			yourself
]

{ #category : #accessing }
ImdbFilmPresenter >> directorText [
	^ directorText
]

{ #category : #initialization }
ImdbFilmPresenter >> initializePresenters [

	nameText := self newTextInput.
	directorText := self newTextInput.
	yearNumber := self newNumberInput rangeMinimum: 1900 maximum:  Year current year; 
					yourself
	
]

{ #category : #accessing }
ImdbFilmPresenter >> nameText [
	^ nameText
]

{ #category : #accessing }
ImdbFilmPresenter >> yearNumber [
	^ yearNumber
]
