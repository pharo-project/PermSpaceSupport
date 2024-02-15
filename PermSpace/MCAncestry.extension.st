Extension { #name : 'MCAncestry' }

{ #category : '*PermSpace' }
MCAncestry >> moveToPermSpace: aPermSpace [

	super moveToPermSpace: aPermSpace.
	ancestors moveToPermSpaceWithContent: aPermSpace.
	stepChildren moveToPermSpaceWithContent: aPermSpace.
]
