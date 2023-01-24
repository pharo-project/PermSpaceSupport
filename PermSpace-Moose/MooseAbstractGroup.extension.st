Extension { #name : #MooseAbstractGroup }

{ #category : #'*PermSpace-Moose' }
MooseAbstractGroup >> doMoveToPermSpace: permSpace [

	super doMoveToPermSpace: permSpace.

	storage moveToPermSpaceWithContent: permSpace.

]
