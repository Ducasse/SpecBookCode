Class {
	#name : #FilmListPresenterTest,
	#superclass : #TestCase,
	#category : #'Spec2-TutorialOne-Presenters-Tests'
}

{ #category : #tests }
FilmListPresenterTest >> testSelectingOneFilmDisplaysIt [

	| list |
	list := ImdbFilmListPresenter2 new.
	list openWithSpec: #embeddedLayout.
	self assert: list detail nameText text isEmpty. 
	list filmList clickAtIndex: 1.
	self deny: list detail nameText text isEmpty. 
]
