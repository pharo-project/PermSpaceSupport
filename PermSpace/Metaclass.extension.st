Extension { #name : #Metaclass }

{ #category : #'*PermSpace' }
Metaclass >> moveToPermSpace: permSpace [
	
	permSpace primMoveToPermSpace: self.

	methodDict moveToPermSpace: permSpace .
	layout moveToPermSpace: permSpace .
	organization moveToPermSpace: permSpace 
]
