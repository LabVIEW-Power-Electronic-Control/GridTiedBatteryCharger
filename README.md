# Scale-And-Limit

The scale and limit library is a LabVIEW 2017 library specifically designed for LabVIEW Power Electronics Applications on the sbRIO-9607 platform.  It can be used on other LabVIEW FPGA targets but will require recompilation for those targets.  The Library is used to scale U16 analog value to SGL data type via configuration as well trigger when those scaled values go above or below a limit.  Each FPGA core supports 16 channels for scale and faulting, but you may have multiple instances if you need more channels.
