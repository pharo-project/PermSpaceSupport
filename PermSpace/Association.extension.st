Extension { #name : 'Association' }

{ #category : '*PermSpace' }
Association >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self.

]

{ #category : '*PermSpace' }
Association >> moveToPermSpaceWithContent: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].

	self moveToPermSpace: permSpace.
	key moveToPermSpaceWithContent: permSpace.
	value moveToPermSpaceWithContent: permSpace
]
