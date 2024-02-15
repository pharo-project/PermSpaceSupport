Class {
	#name : 'PermSpace',
	#superclass : 'Object',
	#category : 'PermSpace',
	#package : 'PermSpace'
}

{ #category : 'api' }
PermSpace >> moveToPermSpaceAllOldObjects [
	
	self primMoveToPermSpaceAllOldObjects 
]

{ #category : 'primitive' }
PermSpace >> primMoveToPermSpace: obj [

	obj primMoveToPermSpace
]

{ #category : 'primitive' }
PermSpace >> primMoveToPermSpaceAllOldObjects [
	
	<primitive: 93 error: ec>
	
	^ self primitiveFailed
]
