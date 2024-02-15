Extension { #name : 'TraitedMetaclass' }

{ #category : '*PermSpace' }
TraitedMetaclass >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self) ifTrue: [ ^ self ].

	super moveToPermSpace: permSpace.
	localMethods moveToPermSpace: permSpace.
	composition moveToPermSpace: permSpace.

	baseLocalMethods moveToPermSpace: permSpace.
	baseComposition moveToPermSpace: permSpace
]
