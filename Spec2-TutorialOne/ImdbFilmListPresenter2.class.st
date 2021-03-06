"
ImdbFilmListPresenter2 new openWithSpec
"
Class {
	#name : #ImdbFilmListPresenter2,
	#superclass : #ImdbFilmListPresenter1,
	#category : #'Spec2-TutorialOne-Presenters'
}

{ #category : #specs }
ImdbFilmListPresenter2 class >> aboveLayout [ 
	"self new openWithSpec: #aboveLayout"
	^ SpBoxLayout newVertical
			add: #detail;
			add: #filmList; 
			yourself
]

{ #category : #specs }
ImdbFilmListPresenter2 class >> defaultLayout [ 
	^ SpBoxLayout newVertical
			add: #filmList; 
			add: #detail;
			yourself
]

{ #category : #specs }
ImdbFilmListPresenter2 class >> listOnlyLayout [ 
	"self new openWithSpec: #listOnlyLayout"
	^ SpBoxLayout newVertical
			add: #filmList; 
			yourself
]

{ #category : #accessing }
ImdbFilmListPresenter2 >> filmList [

	^ filmList
]

{ #category : #initialization }
ImdbFilmListPresenter2 >> initializePresenters [

	filmList := self newTable
		addColumn: (SpStringTableColumn title: 'Name' evaluated: #name);
		addColumn: (SpStringTableColumn title: 'Director' evaluated: #director);
		addColumn: (SpStringTableColumn title: 'Year' evaluated: #year);
		yourself.
	
	detail := self instantiate: ImdbFilmPresenter3.
	detail enabled: false.
	
	filmList whenSelectionChangedDo: [ :selectedItemMode | selectedItemMode isEmpty ifFalse: [detail setModel: selectedItemMode selectedItem]].

	self updatePresenter
]
