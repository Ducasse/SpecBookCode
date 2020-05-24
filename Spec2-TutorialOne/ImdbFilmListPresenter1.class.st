"
ImdbFilmListPresenter1 new openWithSpec
"
Class {
	#name : #ImdbFilmListPresenter1,
	#superclass : #ImdbFilmListPresenter0,
	#category : #'Spec2-TutorialOne'
}

{ #category : #initialization }
ImdbFilmListPresenter1 >> addFilm [ 
	
]

{ #category : #initialization }
ImdbFilmListPresenter1 >> initializeWindow: aWindowPresenter [

	aWindowPresenter 
		title: 'Mini IMDB';
		initialExtent: 600@400;
		toolBar: (self newToolBar
						addItem: (SpToolBarButtonPresenter new
										label: 'Add film' ;
										icon: (self application iconNamed: #smallAdd);
										action: [ self addFilm ];
										yourself);
									yourself)
]
