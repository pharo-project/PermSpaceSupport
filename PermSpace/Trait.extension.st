Extension { #name : #Trait }

{ #category : #'*PermSpace' }
Trait >> moveToPermSpace: permSpace [
	
	super moveToPermSpace: permSpace.
	users moveToPermSpace: permSpace.

]
