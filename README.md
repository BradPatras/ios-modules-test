# ios-modules-test
Testing out modules in an iOS app.

The basic idea is to split out bits of standalone functionality into seperate projects in the workspace, then include them in the main app as frameworks.

The benefit is that when you build the app, the swift files of the frameworks will not have to be compiled unless they are changed.
