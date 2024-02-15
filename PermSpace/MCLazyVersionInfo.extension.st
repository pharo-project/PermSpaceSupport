Extension { #name : 'MCLazyVersionInfo' }

{ #category : '*PermSpace' }
MCLazyVersionInfo >> moveToPermSpace: aPermSpace [

	super moveToPermSpace: aPermSpace.

	id moveToPermSpace: aPermSpace.
	name moveToPermSpace: aPermSpace.
	message moveToPermSpace: aPermSpace.
	date moveToPermSpace: aPermSpace.
	time moveToPermSpace: aPermSpace.
	author moveToPermSpace: aPermSpace.
]
