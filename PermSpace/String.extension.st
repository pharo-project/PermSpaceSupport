Extension { #name : #String }

{ #category : #'*PermSpace' }
String >> moveToPermSpace: permSpace [
	
	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	
	
	permSpace primMoveToPermSpace: self.

]
