Class {
	#name : #ImdbFilmClassTest,
	#superclass : #TestCase,
	#category : #'Spec2-TutorialOne'
}

{ #category : #tests }
ImdbFilmClassTest >> testAddFilm [

	| previousFilms |
	previousFilms := ImdbFilm films.
	ImdbFilm reset.
	ImdbFilm addFilm: (ImdbFilm new name: 'Rock 3').
	self assert: ImdbFilm films size equals: 1.
	ImdbFilm reset.
	ImdbFilm addFilms: previousFilms.
]

{ #category : #tests }
ImdbFilmClassTest >> testAddFilm2 [

	| previousFilms |
	previousFilms := ImdbFilm films.
	ImdbFilm reset.
	ImdbFilm addFilm: (ImdbFilm new name: 'Rock 3').
	ImdbFilm addFilm: (ImdbFilm new name: 'Rock 4').
	self assert: ImdbFilm films size equals: 2.
	ImdbFilm reset.
	ImdbFilm addFilms: previousFilms.
]
