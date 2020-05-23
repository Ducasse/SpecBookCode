"
ImdbFilmListPresenter0 new openWithSpec
"
Class {
	#name : #ImdbFilmListPresenter0,
	#superclass : #ImdbFilmListPresenterRoot,
	#category : #'Spec2-TutorialOne'
}

{ #category : #specs }
ImdbFilmListPresenter0 class >> defaultLayout [
	^ SpBoxLayout newVertical
			add: #filmList;
			yourself
]

{ #category : #initialization }
ImdbFilmListPresenter0 >> initializePresenters [

	filmList := self newTable
		addColumn: (SpStringTableColumn title: 'Name' evaluated: #name);
		addColumn: (SpStringTableColumn title: 'Director' evaluated: #director);
		addColumn: (SpStringTableColumn title: 'Year' evaluated: #year);
		yourself.
		
	self updatePresenter
]
