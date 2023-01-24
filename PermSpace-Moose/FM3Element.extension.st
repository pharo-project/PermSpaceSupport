Extension { #name : #FM3Element }

{ #category : #'*PermSpace-Moose' }
FM3Element >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	permSpace primMoveToPermSpace: self.
	name moveToPermSpaceWithContent: permSpace.
	
]
