cimport numpy as np 
from util cimport datetime64, timedelta64

from frame cimport Frame
from index cimport DateTimeIndex


cdef class Resampler:
    cdef public:
        DateTimeIndex index
        Frame frame
        np.int64_t[:] groups
        
    cdef timedelta64 _timedelta_to_ns(self, interval)