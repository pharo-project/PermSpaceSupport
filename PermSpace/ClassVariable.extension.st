Extension { #name : #ClassVariable }

{ #category : #'*PermSpace' }
ClassVariable >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.
	name moveToPermSpace: permSpace 
]

{ #category : #'*PermSpace' }
ClassVariable >> moveToPermSpaceWithContent: permSpace [
	
	self moveToPermSpace: permSpace.
	value moveToPermSpaceWithContent: permSpace
]
