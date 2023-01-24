Extension { #name : #Object }

{ #category : #'*PermSpace' }
Object >> moveToPermSpace: permSpace [

	self subclassResponsibility 
]

{ #category : #'*PermSpace' }
Object >> moveToPermSpaceWithContent: permSpace [ 

	self moveToPermSpace: permSpace
]

{ #category : #'*PermSpace' }
Object >> primIsInPermSpace [
	self shouldBeImplemented.
]
