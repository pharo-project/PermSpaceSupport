Extension { #name : 'SubscriptionRegistry' }

{ #category : '*PermSpace' }
SubscriptionRegistry >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].
	
	permSpace primMoveToPermSpace: self.

	subscriptions moveToPermSpace: permSpace.
	monitor moveToPermSpace: permSpace
]
