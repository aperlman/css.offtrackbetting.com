/* CSS files organized alphabetically by selector type:
	generic element styles
	id styles
	class styles
	combinations of selectors

p
	Targets generic elements named p
	
#_
	Targets specific ID's like id="_"
	
._	Targets specific classes like class="_"

Combinators are used to separate the two or more simple selectors that make up a combined selector. The available combinators are whitespace (any number of tab, space or other whitespace characters), >, and +. What each combinator does is described in the next few sections. 

_ _

		A descendant selector is made up of two or more simple selectors separated by whitespace.

_ > _

		A child selector targets an IMMEDIATE, DIRECT child of a certain element. A child selector consists of two or more selectors separated by a greater than sign, _>_. The parent goes to the left of the _>_, and whitespace is allowed around the combinator.

_ + _

		An adjacent sibling selector is made up of two simple selectors separated by a plus sign, _+_. Whitespace is allowed around the adjacent sibling combinator. The selector matches an element which is the next sibling to the first element. The elements must have the same parent and the first element must immediately precede the second element.

*/



/* 12pt = 16px = 1em = 100% */
