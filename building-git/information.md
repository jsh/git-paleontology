### Information In Blobs Has a Regular Distribution

Let's ask about how information is distributed across the commits.

A measure of information content of a string is the Kolmogorov complexity:
roughly speaking, the length of the shortest possible description of the string.

To see what that means, contrast Hamlet, and the contents of a book the length of Hamlet,
but only containing the letter 'a': Hamlet is more complex, and contains more information.
(This isn't the whole story, since a truly random string the length of Hamlet would be more complex, still.)

Without going into a lot of detail, an LZW-compressed version of a file provides a rough measure of its Kolmogorov complexity.

We've seen that the blobs themselves have sizes -- information content -- that's lognormally distributed.
On the other hand, if you commit a file that has a thousand lines, and then I commit a bug-fix that changes one of those lines,
both files will be represented as blobs of roughly the same size: both will have roughly the same information content.

The information content of my change, however, is far less. Can we look at how information content of file versions is distributed?
Yes.

If we re-compress all the 
