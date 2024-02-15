Extension { #name : 'MCRepositoryGroup' }

{ #category : '*PermSpace' }
MCRepositoryGroup >> moveToPermSpace: aPermSpace [

	super moveToPermSpace: aPermSpace.
	
	repositories moveToPermSpace: aPermSpace. 
	useCache moveToPermSpace: aPermSpace.
]
