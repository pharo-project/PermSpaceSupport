Extension { #name : 'UUID' }

{ #category : '*PermSpace' }
UUID >> moveToPermSpace: aPermSpace [

	super moveToPermSpace: aPermSpace.
	uuidData moveToPermSpace: aPermSpace
]
