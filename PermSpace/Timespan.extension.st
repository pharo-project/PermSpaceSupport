Extension { #name : 'Timespan' }

{ #category : '*PermSpace' }
Timespan >> moveToPermSpace: aPermSpace [

	super moveToPermSpace: aPermSpace.

	start moveToPermSpace: aPermSpace.
	duration moveToPermSpace: aPermSpace
]
