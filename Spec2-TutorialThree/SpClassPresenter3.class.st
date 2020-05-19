Class {
	#name : #SpClassPresenter3,
	#superclass : #SpPresenter,
	#instVars : [
		'table'
	],
	#category : #'Spec2-TutorialThree'
}

{ #category : #specs }
SpClassPresenter3 class >> defaultLayout [

	^ SpBoxLayout newVertical
		add: #table
		yourself
]

{ #category : #specs }
SpClassPresenter3 class >> defaultSpec [

	^ self defaultLayout
]

{ #category : #specs }
SpClassPresenter3 class >> example [
	<sampleInstance>

	^ self new openWithSpec
]

{ #category : #initialization }
SpClassPresenter3 >> initializePresenters [ 

	table := self newTable
        items: self class environment allClasses ;
		  sortingBlock: #name descending;
        addColumn:
            ((SpStringTableColumn title: 'Name' evaluated: #name)
                width: 250;
                yourself);
			addColumn:
            ((SpStringTableColumn title: '#subclass' evaluated: [:each | each allSubclasses size])
					 sortFunction: [ :cl | cl allSubclasses size ] ascending;
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
