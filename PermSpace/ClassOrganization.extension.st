Extension { #name : #ClassOrganization }

{ #category : #'*PermSpace' }
ClassOrganization >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self.
	commentSourcePointer moveToPermSpace: permSpace .
	protocolOrganizer moveToPermSpace: permSpace 
]
