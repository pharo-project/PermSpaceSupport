Extension { #name : #MooseObject }

{ #category : #'*PermSpace-Moose' }
MooseObject >> doMoveToPermSpace: permSpace [

	permSpace primMoveToPermSpace: self.

	mooseID moveToPermSpaceWithContent: permSpace.
	mooseName moveToPermSpaceWithContent: permSpace.

	cache moveToPermSpaceWithContent: permSpace.
	entityAttributes moveToPermSpaceWithContent: permSpace.

]
