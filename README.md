UIView+PartialRoundedCorner
===========================

Allows rounding of just two corners of a UIView, instead of four.

Demo
====

The demo/ folder contains a demo project showing
UIView+PartialRoundedCorner in use. Open and run it.

Usage
=====

This code can round the corners on views of any class. Just copy the
files under src/ into your project, import
"UIView+PartialRoundedCorner.h", then call the following on any view:
	
	[yourView setCornerRadius:… direction:…];

Where corner radius is a float, and direction is one of the following:

- UIViewPartialRoundedCornerDirectionTop - rounds the top-left and
	top-right corners
- UIViewPartialRoundedCornerDirectionRight - rounds the top-right and
	bottom-right corners
- UIViewPartialRoundedCornerDirectionBottom - rounds the bottom-left and
	bottom-right corners
- UIViewPartialRoundedCornerDirectionLeft - rounds the top-left and
	bottom-left corners
- UIViewPartialRoundedCornerDirectionAll - rounds all four corners. Like
	view.layer.cornerRadius, but it can end up being more helpful
	masking

Compatibility
=============

This class has been tested back to iOS 6.0.

Implementation
==============

This class is implemented by creating a mask layer for the view, setting
the corner radius on that, and offsetting it to the top, bottom, left,
or right to get the appropriate effect.

License
=======

This code is released under the MIT License. See the LICENSE file for
details.
