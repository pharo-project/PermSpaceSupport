Extension { #name : 'OrderedCollection' }

{ #category : '*PermSpace' }
OrderedCollection >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	permSpace primMoveToPermSpace: self.

	array moveToPermSpace: permSpace
]

{ #category : '*PermSpace' }
OrderedCollection >> moveToPermSpaceWithContent: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	self moveToPermSpace: permSpace.
	array do: [ :e | e moveToPermSpaceWithContent: permSpace ]
	
]
