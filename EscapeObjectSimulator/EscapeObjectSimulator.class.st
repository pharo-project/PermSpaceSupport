Class {
	#name : #EscapeObjectSimulator,
	#superclass : #Object,
	#instVars : [
		'objects'
	],
	#category : #EscapeObjectSimulator
}

{ #category : #accessing }
EscapeObjectSimulator >> addObject: obj [

	objects add: obj
]

{ #category : #accessing }
EscapeObjectSimulator >> allLeaks [

	^ objects flatCollect: [ :obj | self leaksOf: obj ]
]

{ #category : #accessing }
EscapeObjectSimulator >> escapingObjects [

	^ objects select: [ :o | self isEscapingObject: o ]
]

{ #category : #initialization }
EscapeObjectSimulator >> initialize [

	super initialize.
	objects := IdentitySet new
]

{ #category : #accessing }
EscapeObjectSimulator >> isEscapingObject: obj [

	^ (self leaksOf: obj) notEmpty
]

{ #category : #testing }
EscapeObjectSimulator >> isInSpace: obj [

	| wellKnownObjs |
	wellKnownObjs := { true. false. nil }.

	((wellKnownObjs includes: obj) or: [ obj isImmediateObject ]) 
		ifTrue: [ ^ true ].

	^ objects includes: obj
]

{ #category : #accessing }
EscapeObjectSimulator >> leaksOf: obj [

	| leaks |
	leaks := OrderedCollection new.

	obj class allSlots do: [ :slot | 
		| referenced |
		referenced := slot read: obj.
		(self isInSpace: referenced) ifFalse: [ 
			leaks add: (EscapingLeak from: obj ref: slot) ] ].

	obj isArray ifTrue: [ 
		obj doWithIndex: [ :referenced :i | 
			(self isInSpace: referenced) ifFalse: [ 
				leaks add: (EscapingLeak from: obj ref: i) ] ] ].


	(obj isCompiledMethod or: [ obj isCompiledBlock ]) ifTrue: [ 
		obj allLiterals doWithIndex: [ :referenced :i | 
			(self isInSpace: referenced) ifFalse: [ 
				leaks add: (EscapingLeak from: obj ref: i) ] ] ].


	^ leaks
]

{ #category : #api }
EscapeObjectSimulator >> primMoveToPermSpace: obj [

	self addObject: obj
]
