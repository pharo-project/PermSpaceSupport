Class {
	#name : #BaselineOfPermSpaceSupport,
	#superclass : #BaselineOf,
	#category : #BaselineOfPermSpaceSupport
}

{ #category : #baselines }
BaselineOfPermSpaceSupport >> baseline: spec [
	<baseline>
	spec for: #common do: [ 
		spec package: #PermSpace.
		spec package: #EscapeObjectSimulator. ]
]
