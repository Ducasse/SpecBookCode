"
ImdbFilmListPresenter2 new openWithSpec
"
Class {
	#name : #ImdbFilmListPresenter2,
	#superclass : #ImdbFilmListPresenter1,
	#category : #'Spec2-TutorialOne'
}

{ #category : #specs }
ImdbFilmListPresenter2 class >> defaultLayout [ 
	^ SpBoxLayout newVertical
			add: #filmList; 
			add: #detail;
			yourself
]

{ #category : #specs }
ImdbFilmListPresenter2 class >> embeddedLayout [ 

	^ SpBoxLayout newVertical
			add: #filmList; 
			add: #detail;
			yourself
]

{ #category : #initialization }
ImdbFilmListPresenter2 >> initializePresenters [

	filmList := self newTable
		addColumn: (SpStringTableColumn title: 'Name' evaluated: #name);
		addColumn: (SpStringTableColumn title: 'Director' evaluated: #director);
		addColumn: (SpStringTableColumn title: 'Year' evaluated: #year);
		yourself.
		
	detail := self instantiate: ImdbFilmPresenter.
	detail enabled: false.
	
	filmList whenSelectionChangedDo: [ :selected | selected inspect ].

	self updatePresenter
]
