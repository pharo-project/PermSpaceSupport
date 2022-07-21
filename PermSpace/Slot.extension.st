Extension { #name : #Slot }

{ #category : #'*PermSpace' }
Slot >> moveToPermSpace: permSpace [
	
	permSpace primMoveToPermSpace: self.
	name moveToPermSpace: permSpace 
]
