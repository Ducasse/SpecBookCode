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
	#category : #'Spec2-TutorialOne'
}

{ #category : #testing }
ImdbFilm class >> addFilm: aFilm [
	films add: aFilm
]

{ #category : #testing }
ImdbFilm class >> addFilms: aCollection [
	films := aCollection
]

{ #category : #testing }
ImdbFilm class >> films [

	^ films ifNil: [ films := OrderedCollection new ]
]

{ #category : #testing }
ImdbFilm class >> isVoyageRoot [
	"VOMemoryRepository new enableSingleton"
	
	^ true
]

{ #category : #testing }
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
