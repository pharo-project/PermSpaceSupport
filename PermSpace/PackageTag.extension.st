Extension { #name : 'PackageTag' }

{ #category : '*PermSpace' }
PackageTag >> moveToPermSpace: aPermSpace [

	super moveToPermSpace: aPermSpace.
	
	package moveToPermSpaceWithContent: aPermSpace.
	name moveToPermSpace: aPermSpace.
	classes moveToPermSpace: aPermSpace.
	
]
