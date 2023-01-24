Extension { #name : #GlobalVariable }

{ #category : #'*PermSpace' }
GlobalVariable >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self.

]
