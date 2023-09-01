Extension { #name : #Object }

{ #category : #'*PermSpace' }
Object >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self
]

{ #category : #'*PermSpace' }
Object >> moveToPermSpaceWithContent: permSpace [ 

	self moveToPermSpace: permSpace
]
