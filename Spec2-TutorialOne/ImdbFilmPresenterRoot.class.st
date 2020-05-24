Class {
	#name : #ImdbFilmPresenterRoot,
	#superclass : #SpPresenter,
	#instVars : [
		'nameText',
		'directorText',
		'yearNumber'
	],
	#category : #'Spec2-TutorialOne-Presenters'
}

{ #category : #specs }
ImdbFilmPresenterRoot class >> defaultSpec [

	^ self defaultLayout
]

{ #category : #specs }
ImdbFilmPresenterRoot class >> example [

	<sampleInstance>
	^ self new openWithSpec
]

{ #category : #accessing }
ImdbFilmPresenterRoot >> directorText [
	^ directorText
]

{ #category : #initialization }
ImdbFilmPresenterRoot >> initializePresenters [
	nameText := self newTextInput autoAccept: true.
	directorText := self newTextInput autoAccept: true.
	yearNumber := self newNumberInput autoAccept: true;
		rangeMinimum: 1900 maximum: Year current year;
		yourself
]

{ #category : #accessing }
ImdbFilmPresenterRoot >> nameText [
	^ nameText
]

{ #category : #accessing }
ImdbFilmPresenterRoot >> yearNumber [
	^ yearNumber
]
