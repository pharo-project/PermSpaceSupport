Extension { #name : 'TaPrecedenceComposition' }

{ #category : '*PermSpace' }
TaPrecedenceComposition >> moveToPermSpace: aPermSpace [

	super moveToPermSpace: aPermSpace.
	preferedTrait moveToPermSpace: aPermSpace
]
