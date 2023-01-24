Extension { #name : #Pragma }

{ #category : #'*PermSpace' }
Pragma >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self.
	selector moveToPermSpace: permSpace.
	arguments moveToPermSpace: permSpace.
	arguments do: [ :e | e moveToPermSpace: permSpace ]
]
