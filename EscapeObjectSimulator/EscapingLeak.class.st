Class {
	#name : #EscapingLeak,
	#superclass : #Object,
	#instVars : [
		'obj',
		'ref'
	],
	#category : #EscapeObjectSimulator
}

{ #category : #'instance creation' }
EscapingLeak class >> from: obj ref: ref [

	^ self new
		  obj: obj;
		  ref: ref;
		  yourself
]

{ #category : #accessing }
EscapingLeak >> obj [
	^ obj
]

{ #category : #accessing }
EscapingLeak >> obj: aCollection [ 
	obj := aCollection
]

{ #category : #accessing }
EscapingLeak >> ref [
	^ ref
]

{ #category : #accessing }
EscapingLeak >> ref: anInstanceVariableSlot [ 
	ref := anInstanceVariableSlot
]

{ #category : #accessing }
EscapingLeak >> referencedObject [

	^ ref isNumber
		  ifTrue: [ 
			  obj isArray
				  ifTrue: [ obj at: ref ]
				  ifFalse: [ obj allLiterals at: ref ] ]
		  ifFalse: [ ref read: obj ]
]
