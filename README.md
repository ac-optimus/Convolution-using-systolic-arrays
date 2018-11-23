# Abstract

>The projects aims to develope systolic array for convolution.
>Google TPUs uses Systolic arrays as the main procesing elements.
>Systolic arrays has lot of potential that is yet to  explore, it was first introduced by in this [paper](http://www.eecs.harvard.edu/~htk/publication/1982-kung-why-systolic-architecture.pdf).
>In this project we first aim to build processing elements of Systolic Arrays (major operations of PEs include floating point(ieee-754) multiplication and addition)and then use them in systlic arrays to perform matrix multiplication or convolution.
>Each processing element in systolic array will be resonsible for multiplication and addtion(MAC unit),which will make matix multiplication possible. This will lead to a faster matrix multiplication then a conventional method.
