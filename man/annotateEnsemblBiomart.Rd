% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/annotateEnsemblBiomart.R
\name{annotateEnsemblBiomart}
\alias{annotateEnsemblBiomart}
\title{Annotate Ensembl Gene IDs with Entrez GeneIDs, gene symbols, and names using Biomart}
\usage{
annotateEnsemblBiomart(
  ids,
  mart = ensemblMart("ensembl", species = "hsapiens"),
  multi = FALSE,
  orthologue = FALSE,
  multiOrth = FALSE
)
}
\arguments{
\item{ids}{Ensembl Gene IDs}

\item{mart}{A Mart or LocalMart object}

\item{multi}{Logical, in case one ensembl Gene ID is mapped to multiple Entrez GeneIDs, should multiple IDs returned. Default: \code{FALSE}}

\item{orthologue}{Logical, if \code{TRUE}, human orthologue information (EnsembleGeneID, Entrez GeneID, and HGNC GeneSymbol) will be appended to the result \code{data.frame}. If the dataset is \code{hsapiens}, this option is ignored.}

\item{multiOrth}{Logical, if \code{TRUE}, one gene may be mapped to more than one human orthologues.}
}
\value{
A \code{data.frame} of annotations.
}
\description{
Annotate Ensembl Gene IDs with Entrez GeneIDs, gene symbols, and names using Biomart
}
\examples{
\dontrun{
  myMart <- ensemblMart("ensembl", species="hsapiens")
  annotateEnsemblBiomart(c("ENSG00000142208"), mart=myMart)
  annotateEnsemblBiomart(c("ENSG00000142208",
    "ENSG00000105221",
    "ENSG00000117020"), mart=myMart)
  ## orthologue mapping for mouse
  mouseMart <- ensemblMart("ensembl", species="mouse")
  annotateEnsemblBiomart(c("ENSMUSG00000001729"), mart=mouseMart)
  annotateEnsemblBiomart(c("ENSMUSG00000001729"), mart=mouseMart, orthologue=TRUE)
  ## orthologue mapping for rat
  ratMart <- ensemblMart("ensembl", species="rat")
  annotateEnsemblBiomart(c("ENSRNOG00000028629"), mart=ratMart)
  annotateEnsemblBiomart(c("ENSRNOG00000028629"), mart=ratMart, orthologue=TRUE)
}

}
