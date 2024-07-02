# Load the oro.dicom library
library(oro.dicom)

# Read the DICOM file
slice = readDICOM("data/DICOM/FLAIR/IM-0001-0001.dcm")
names(slice)

#======================================================
# Extract the image header
dcm_hdr = slice$hdr[[1]]
names(dcm_hdr)
dcm_hdr_titles = dcm_hdr$name

# display specific header value
dcm_hdr[dcm_hdr_titles == "PixelSpacing", "value"]
# display specific header info (not only the value)
dcm_hdr[dcm_hdr_titles == "FlipAngle", ]

#======================================================
# Extract the image slice
dcm_img = slice$img

#======================================================
# Transpose data using t(): faces "up" versus "right"
d = dim(t(dcm_img[[1]]))
image(1:d[1],1:d[2],t(dcm_img[[1]]), col=gray(0:64/64))



