Class {
	#name : 'PermSpaceTest',
	#superclass : 'TestCase',
	#category : 'PermSpace',
	#package : 'PermSpace'
}

{ #category : 'tests' }
PermSpaceTest >> testMoveObjectCanBeReferenced [

	| x |
	x := String loremIpsum: 50.
	x moveToPermSpace: nil.

	self assert: x equals: (String loremIpsum: 50)
]

{ #category : 'tests' }
PermSpaceTest >> testPermanentMethodCanBeExecuted [

	| anObject |
	APermClass >> #aMethod moveToPermSpace: nil.
	anObject := APermClass new.

	self assert: anObject aMethod equals: 10 factorial.
	[ anObject aMethod ] bench
]
