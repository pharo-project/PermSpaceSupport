Extension { #name : #AbstractLayout }

{ #category : #'*PermSpace' }
AbstractLayout >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self
]
