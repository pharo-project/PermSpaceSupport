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
		spec package: #EscapeObjectSimulator.
		spec 
			package: #'PermSpace-Moose' 
			with: [ spec requires: #( 'PermSpace' ) ].
		
		spec 
			group: #default with: #('PermSpace' 'EscapeObjectSimulator');
			group: #moose with: #(default 'PermSpace-Moose')  ]
]
