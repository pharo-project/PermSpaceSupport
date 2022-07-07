Extension { #name : #ClassOrganization }

{ #category : #'*PermSpace' }
ClassOrganization >> moveToPermSpace [
	
	self primMoveToPermSpace.
	commentSourcePointer moveToPermSpace.
	protocolOrganizer moveToPermSpace
]
