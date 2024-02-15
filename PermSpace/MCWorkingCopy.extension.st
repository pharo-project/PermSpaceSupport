Extension { #name : 'MCWorkingCopy' }

{ #category : '*PermSpace' }
MCWorkingCopy >> moveToPermSpace: aPermSpace [

	super moveToPermSpace: aPermSpace.
	
	ancestry moveToPermSpace: aPermSpace.
	repositoryGroup moveToPermSpace: aPermSpace.
	requiredPackages moveToPermSpaceWithContent: aPermSpace.
]
