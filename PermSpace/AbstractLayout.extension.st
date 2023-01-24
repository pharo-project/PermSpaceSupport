Extension { #name : #AbstractLayout }

{ #category : #'*PermSpace' }
AbstractLayout >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self
]
