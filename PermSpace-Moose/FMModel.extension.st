Extension { #name : #FMModel }

{ #category : #'*PermSpace-Moose' }
FMModel >> moveToPermSpace: permSpace [

	permSpace primMoveToPermSpace: self.

	elements  moveToPermSpaceWithContent: permSpace.
	metamodel moveToPermSpaceWithContent: permSpace.
	additionalProperties moveToPermSpaceWithContent: permSpace
]
