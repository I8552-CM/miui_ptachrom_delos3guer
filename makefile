#
# Makefile for taoshan
#

# The original zip file, MUST be specified by each product
local-zip-file     := cm-11-20161231-UNOFFICIAL-delos3geur.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI7_delos3geur.zip

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := XHDPI

PORT_PRODUCT := delos3geur

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
#local-pre-zip := local-pre-zip-misc
#local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

#include phoneapps.mk

include $(PORT_BUILD)/porting.mk
