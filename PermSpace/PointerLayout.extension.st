Extension { #name : #PointerLayout }

{ #category : #'*PermSpace' }
PointerLayout >> moveToPermSpace [
	
	super moveToPermSpace.
	slotScope moveToPermSpace.
]
