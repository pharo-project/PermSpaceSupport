Extension { #name : 'ByteArray' }

{ #category : '*PermSpace' }
ByteArray >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self
]

{ #category : '*PermSpace' }
ByteArray >> moveToPermSpaceWithContent: permSpace [
	
	self moveToPermSpace: permSpace
]
