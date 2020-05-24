Class {
	#name : #ImdbFilmListPresenterRoot,
	#superclass : #SpPresenter,
	#instVars : [
		'filmList',
		'detail'
	],
	#category : #'Spec2-TutorialOne-Presenters'
}

{ #category : #specs }
ImdbFilmListPresenterRoot class >> defaultSpec [ 
	^ self defaultLayout
]

{ #category : #'as yet unclassified' }
ImdbFilmListPresenterRoot >> detail [
	^ detail
]

{ #category : #initialization }
ImdbFilmListPresenterRoot >> updatePresenter [
	
	filmList items: ImdbFilm films

	
]
