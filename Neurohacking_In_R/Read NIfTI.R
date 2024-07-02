# Load the oro.nifti package
library(oro.nifti)


# From DICOM to NIfTI
nii_T1 = dicom2nifti(all_slice_T1)
d=dim(nii_T1)
image(1:d[1], 1:d[2], nii_T1[,,11], col=gray(0:64/64), xlab="", ylab="")

# Write a NIfTI file
fname="Output_3D_File"
writeNIfTI(nim=nii_T1,filename=fname)

#======================================================
# Read a NIfTI file
file_path = "data/NIfTI/T2.nii.gz"
nii_T2 = readNIfTI(file_path, reorient = FALSE)
print(dim(nii_T2))
