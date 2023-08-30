Extension { #name : #SmalltalkImage }

{ #category : #'*PermSpace' }
SmalltalkImage >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	

	permSpace primMoveToPermSpace: self.

	globals moveToPermSpaceWithContent: permSpace.
	

]
