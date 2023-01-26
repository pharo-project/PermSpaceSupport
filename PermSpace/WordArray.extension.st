Extension { #name : #WordArray }

{ #category : #'*PermSpace' }
WordArray >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self
]

{ #category : #'*PermSpace' }
WordArray >> moveToPermSpaceWithContent: permSpace [
	
	self moveToPermSpace: permSpace
]
