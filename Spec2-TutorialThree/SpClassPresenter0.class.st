"
SpClassPresenter new openWithSpec
"
Class {
	#name : #SpClassPresenter0,
	#superclass : #SpPresenter,
	#instVars : [
		'table'
	],
	#category : #'Spec2-TutorialThree'
}

{ #category : #specs }
SpClassPresenter0 class >> defaultLayout [

	^ SpBoxLayout newVertical
		add: #table
		yourself
]

{ #category : #specs }
SpClassPresenter0 class >> defaultSpec [

	^ self defaultLayout
]

{ #category : #specs }
SpClassPresenter0 class >> example [
	<sampleInstance>

	^ self new openWithSpec
]

{ #category : #initialization }
SpClassPresenter0 >> initializePresenters [ 

	table := self newTable
        items: self class environment allClasses ;

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
