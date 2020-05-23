Class {
	#name : #ImdbFilmListPresenterRoot,
	#superclass : #SpPresenter,
	#instVars : [
		'filmList',
		'detail'
	],
	#category : #'Spec2-TutorialOne'
}

{ #category : #specs }
ImdbFilmListPresenterRoot class >> defaultSpec [ 
	^ self defaultLayout
]

{ #category : #initialization }
ImdbFilmListPresenterRoot >> updatePresenter [
	
	filmList items: ImdbFilm films

	
]
