Class {
	#name : #ImdbFilm,
	#superclass : #Object,
	#instVars : [
		'name',
		'director',
		'year'
	],
	#category : #'Spec2-TutorialOne'
}

{ #category : #testing }
ImdbFilm class >> isVoyageRoot [
	"VOMemoryRepository new enableSingleton"
	
	^ true
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
