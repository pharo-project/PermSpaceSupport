Extension { #name : 'PointerLayout' }

{ #category : '*PermSpace' }
PointerLayout >> moveToPermSpace: permSpace [

	super moveToPermSpace: permSpace.
	slotScope moveToPermSpace: permSpace
]
