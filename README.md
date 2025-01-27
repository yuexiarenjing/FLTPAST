# FLTPAST：Function Level Trace Point Selection Tool

A tool to automatically generate function level trace points which can optimize the tracing overhead and structural coverage.

## Require

1. SystemTap
  
2. Python 3
  
3. Java development toolkit
  

## How to use

1. preprocess
  
  1.1 get fun_count.out file by get_fun_count.stp
  
  1.2 get LLVM-IR files by getll.sh
  
  1.3 get probe_functions by command: stap -L 'process("/path/to/binary").function("*")' > probe_functions
  
  1.4 run mmas.py to generate fun_blocks.txt and fun_weight.txt (store into input dir)
  
2. solver
  
  2.1 prepare the input dir, the files needed has been generated by step 1.4
  
  2.2 run MWSCP.java, the trace point will be generated into output dir
  
3. tracer
  
  3.1 prepare the output dir, the files needed has been generated by step 2.2
  
  3.2 run adaptive_trace.py to generate the systemtap tracing script.
  
  3.3 run the stp script, e.g., stap -v trace_functions-0.01.stp -o out

