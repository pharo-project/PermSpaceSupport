Extension { #name : #ClassOrganization }

{ #category : #'*PermSpace' }
ClassOrganization >> moveToPermSpace: permSpace [
	
	permSpace primMoveToPermSpace: self.
	commentSourcePointer moveToPermSpace: permSpace .
	protocolOrganizer moveToPermSpace: permSpace 
]
