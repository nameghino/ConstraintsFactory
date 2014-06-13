ConstraintsFactory
==================

Quick and easy NSLayoutConstraint creation for iOS 8, written in Swift

* Use a ConstraintTuple to specifiy a constraint definition:
```Swift
        let constraintDefinition: ConstraintTuple = 
                (aView, .Height, .Equal, self.view, .Height, 0.5, 0)
```

* Use the ConstraintFactory to create a constraint:
```Swift
        let constraint = ConstraintFactory.createConstraint(constraintDefinition)
```

* Create multiple constraints in one go:
```Swift
        let constraints = ConstraintFactory.createConstraints([
            (aView, .Width, .Equal, self.view, .Width, 0.5, 0),
            (aView, .CenterX, .Equal, self.view, .CenterX, 1, 0),
            (aView, .CenterY, .Equal, self.view, .CenterY, 1, 0),
        ])
```
This doesn't add the constraints to any view, it is only a shorthand to create them by code
