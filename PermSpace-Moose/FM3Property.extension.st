Extension { #name : #FM3Property }

{ #category : #'*PermSpace-Moose' }
FM3Property >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
		
	super moveToPermSpace: permSpace.
	
	isContainer moveToPermSpaceWithContent: permSpace.
	isDerived moveToPermSpaceWithContent: permSpace. 
	isMultivalued moveToPermSpaceWithContent: permSpace. 
	opposite moveToPermSpaceWithContent: permSpace. 
	class moveToPermSpaceWithContent: permSpace. 
	package moveToPermSpaceWithContent: permSpace. 
	type moveToPermSpaceWithContent: permSpace. 
	implementingSelector moveToPermSpaceWithContent: permSpace. 
	isTarget moveToPermSpaceWithContent: permSpace. 
	isSource moveToPermSpaceWithContent: permSpace. 
	comment moveToPermSpaceWithContent: permSpace. 
	defaultValue moveToPermSpaceWithContent: permSpace
]
