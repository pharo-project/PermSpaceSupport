Extension { #name : #Collection }

{ #category : #'*PermSpace' }
Collection >> moveToPermSpace: permSpace [
	
	self subclassResponsibility
]

{ #category : #'*PermSpace' }
Collection >> moveToPermSpaceWithContent: permSpace [
	
	self moveToPermSpace: permSpace 
]
