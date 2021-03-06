% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CNVout.R
\name{CNVout}
\alias{CNVout}
\title{CNVout}
\usage{
CNVout(lrr, map, h1 = 5, h2 = 10, h3 = 15, alpha = 0.01, L = 100,
  outname)
}
\arguments{
\item{lrr}{the matrix of the log R ratio intensities. Each column describes a single sample or sequence and each row describes a single marker}

\item{map}{Each line of the map file describes a single marker and must contain exactly 3 columns: chromosome ID; rs# or marker identifier; position (in bp units)}

\item{h1}{the bandwidth 1 for the screening procedure, defaults to 5}

\item{h2}{the bandwidth 2 for the screening procedure, defaults to 10}

\item{h3}{the bandwidth 3 for the screening procedure, defaults to 15}

\item{alpha}{the significance levels for the test to accept change-points}

\item{L}{number of iterations in the EM algorithm for CNV clustering}

\item{outname}{name for the output file}
}
\value{
This function generates a text file describing all detected CNVs. In addition, it also returns a list of detected change-points for all samples.

\item{cp}{a list of position index for the final change-points identified by modSaRa}
}
\description{
This function annotates the identified CNV using the reference map file and output the annotation of all identified CNVs. Each line of the output describes one CNV in nine columns: individual ID; chromosome ID; CNV start marker identifier; CNV start location (in base pair units); CNV end marker identifier; CNV end location (in base pair units); length of CNV (in base pair units); length of CNV(number of markers); copy number states (duplication or deletion).
}
\examples{
# Input the example data of SNP genotyping data from Affymatrix Human SNP Array 6.0 platform.
# The map file displays annotation of the markers including the chromosome and location
# information of each SNP or CNV marker.
data(example.data.lrr)
data(example.data.map)
# Use log R ratio information of ten samples to detect CNVs
cnv.out <- CNVout(lrr=example.data.lrr[,1:10],map=example.data.map, outname="out")
# The following file will be generated: "out.csv”
# This file contains CNV output for each individual.
# Each line represents one CNV detected from one sample or sequence.
# For each line, the individual ID, start position, end position, length and state
# (duplication or deletion) of the CNV will be shown.
out.cp <- cnv.out$cp
# This returns a list of vectors containing detected change-points by modSaRa for each
# sample in the marker name.
}
\seealso{
\link{modifiedSaRa} for processing the modified SaRa method
}

