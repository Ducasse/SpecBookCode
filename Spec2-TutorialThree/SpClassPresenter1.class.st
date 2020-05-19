Class {
	#name : #SpClassPresenter1,
	#superclass : #SpPresenter,
	#instVars : [
		'table'
	],
	#category : #'Spec2-TutorialThree'
}

{ #category : #specs }
SpClassPresenter1 class >> defaultLayout [

	^ SpBoxLayout newVertical
		add: #table
		yourself
]

{ #category : #specs }
SpClassPresenter1 class >> defaultSpec [

	^ self defaultLayout
]

{ #category : #specs }
SpClassPresenter1 class >> example [
	<sampleInstance>

	^ self new openWithSpec
]

{ #category : #initialization }
SpClassPresenter1 >> initializePresenters [ 

	table := self newTable
        items: self class environment allClasses ;
        sortingBlock: #name descending;
        addColumn:
            ((SpStringTableColumn title: 'Name' evaluated: #name)
                width: 250;
                yourself);
        addColumn:
            ((SpStringTableColumn title: '#methods' evaluated: #numberOfMethods)
                width: 80;
                yourself);
        beResizable;
        beMultipleSelection;
        yourself.
]
