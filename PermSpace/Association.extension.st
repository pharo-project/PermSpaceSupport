Extension { #name : #Association }

{ #category : #'*PermSpace' }
Association >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self.

]
