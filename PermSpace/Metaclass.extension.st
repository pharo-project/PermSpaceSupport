Extension { #name : 'Metaclass' }

{ #category : '*PermSpace' }
Metaclass >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self.

	methodDict moveToPermSpace: permSpace .
	layout moveToPermSpace: permSpace .
	protocols moveToPermSpaceWithContent: permSpace 
]
