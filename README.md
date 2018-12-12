
# Abstract


The project aims to develope systolic array architecture for convolution. Google's [Tensor Processing units (TPUs)](https://cloud.google.com/blog/products/gcp/an-in-depth-look-at-googles-first-tensor-processing-unit-tpu)uses Systolic arrays architecture, for Google services such as Google Search, Street View, Google Photos and Google Translate to accelerate their neural network computations behind the scenes.


Systolic arrays have lot of potential that is yet to  explore, it was first introduced in this [paper](http://www.eecs.harvard.edu/~htk/publication/1982-kung-why-systolic-architecture.pdf).
This project aims to build processing elements of Systolic Arrays (major operations of PEs include floating point(ieee-754) multiplication and addition)and then use them in systlic arrays architecture to perform matrix multiplication or convolution.
Each processing element in systolic array will be resonsible for multiplication and addtion(MAC unit),which will make matix multiplication possible. This will lead to a faster matrix multiplication then conventional methods.


#### Clock comparision of treditional integer matrix multiplication and systolic array matrix multiplication can be seen below.


### Matrix Multiplication without systolic arrays-
![27clcktreditionalmatrixmultp](https://user-images.githubusercontent.com/26172160/48943766-46d85080-ef4a-11e8-984f-0c73ba18cadf.png)


### Matrix Multiplication with Systolic Array implementation: 
![8clcksystolicarrmatrixmultp](https://user-images.githubusercontent.com/26172160/48943826-7c7d3980-ef4a-11e8-921c-505cdd21c595.png)
