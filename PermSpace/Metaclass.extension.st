Extension { #name : #Metaclass }

{ #category : #'*PermSpace' }
Metaclass >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: permSpace)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self.

	methodDict moveToPermSpace: permSpace .
	layout moveToPermSpace: permSpace .
	organization moveToPermSpace: permSpace 
]
