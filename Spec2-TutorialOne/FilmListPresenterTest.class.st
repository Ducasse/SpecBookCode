Class {
	#name : #FilmListPresenterTest,
	#superclass : #TestCase,
	#category : #'Spec2-TutorialOne-Presenters-Tests'
}

{ #category : #running }
FilmListPresenterTest >> setUp [
	"Hooks that subclasses may override to define the fixture of test."
	super setUp. 
	
	ImdbFilm reset. 
	ImdbFilm addET.
]

{ #category : #tests }
FilmListPresenterTest >> testListIsSimpleSelection [

	| list |
	list := ImdbFilmListPresenter2 new.
	list openWithSpec.
	self deny: list isMultipleSelection.
	
]

{ #category : #tests }
FilmListPresenterTest >> testSelectingOneFilmAndClickingOnEmpty [

	| list text |
	list := ImdbFilmListPresenter2 new.
	list openWithSpec.
	list filmList clickAtIndex: 1.
	text := list detail nameText text.
	self deny:  text isEmpty. 
	self assert: list filmList listSize equals: 1.
	list filmList clickAtIndex: 2.
	self assert: list detail nameText text equals: text
]

{ #category : #tests }
FilmListPresenterTest >> testSelectingOneFilmDisplaysIt [

	| list |
	list := ImdbFilmListPresenter2 new.
	list openWithSpec.
	self assert: list detail nameText text isEmpty. 
	list filmList clickAtIndex: 1.
	self deny: list detail nameText text isEmpty. 
]
