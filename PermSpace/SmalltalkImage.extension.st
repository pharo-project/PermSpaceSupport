Extension { #name : #SmalltalkImage }

{ #category : #'*PermSpace' }
SmalltalkImage >> convertToComposedImageFormat [
	
	SnapshotOperation useComposedFormatNext.
	Smalltalk imageFile ensureDeleteAll.
	^ self snapshot: true andQuit: false.
]

{ #category : #'*PermSpace' }
SmalltalkImage >> convertToComposedImageFormatAs: newImageName [
	
	SnapshotOperation useComposedFormatNext.
	^ self saveAs: newImageName.
]

{ #category : #'*PermSpace' }
SmalltalkImage >> moveToPermSpace: permSpace [

	(permSpace isInPermSpace: self)
		ifTrue: [ ^ self ].	

	permSpace primMoveToPermSpace: self.

	globals moveToPermSpaceWithContent: permSpace.
	

]
