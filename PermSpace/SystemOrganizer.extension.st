Extension { #name : #SystemOrganizer }

{ #category : #'*PermSpace' }
SystemOrganizer >> moveToPermSpace: aPermSpace [ 
	
	(aPermSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	aPermSpace primMoveToPermSpace: self.

	categoryArray moveToPermSpaceWithContent: aPermSpace.
	categoryStops moveToPermSpaceWithContent: aPermSpace.
	elementArray moveToPermSpaceWithContent: aPermSpace.

]
