# read the entire image not only a slice

# Read the DICOM file
all_slice_T1 = readDICOM("data/DICOM/T1/")

dim(all_slice_T1$img[[11]])

img_hdr = all_slice_T1$hdr[[11]]
img_hdr[img_hdr$name == "PixelSpacing", "value"]

