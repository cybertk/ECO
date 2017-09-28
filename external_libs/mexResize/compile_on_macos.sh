mv opencv2 opencv2.removed
mkoctfile -mex $(pkg-config --libs opencv)  mexResize.cpp MxArray.cpp
mv opencv2.removed opencv2
