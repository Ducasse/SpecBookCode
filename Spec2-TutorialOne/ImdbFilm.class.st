Class {
	#name : #ImdbFilm,
	#superclass : #Object,
	#instVars : [
		'name',
		'director',
		'year'
	],
	#classInstVars : [
		'films'
	],
	#category : #'Spec2-TutorialOne-Domain'
}

{ #category : #db }
ImdbFilm class >> ET [

	^ self new 
		name: 'E.T.';
		director: 'Steven Spielberg';
		year: '1982'; 
		yourself
]

{ #category : #db }
ImdbFilm class >> addET [
	films add: self ET
]

{ #category : #db }
ImdbFilm class >> addFilm: aFilm [
	films add: aFilm
]

{ #category : #db }
ImdbFilm class >> addFilms: aCollection [
	films := aCollection
]

{ #category : #db }
ImdbFilm class >> films [

	^ films ifNil: [ films := OrderedCollection new ]
]

{ #category : #db }
ImdbFilm class >> reset [ 
	films := OrderedCollection new
]

{ #category : #accessing }
ImdbFilm >> director [
	^ director
]

{ #category : #accessing }
ImdbFilm >> director: anObject [
	director := anObject
]

{ #category : #accessing }
ImdbFilm >> name [
	^ name
]

{ #category : #accessing }
ImdbFilm >> name: anObject [
	name := anObject
]

{ #category : #accessing }
ImdbFilm >> year [
	^ year
]

{ #category : #accessing }
ImdbFilm >> year: anObject [
	year := anObject
]
