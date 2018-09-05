// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <RcppArmadillo.h>
#include <Rcpp.h>

using namespace Rcpp;

// f
arma::vec f(const arma::vec& v, int first, int last);
RcppExport SEXP modSaRa_f(SEXP vSEXP, SEXP firstSEXP, SEXP lastSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const arma::vec& >::type v(vSEXP);
    Rcpp::traits::input_parameter< int >::type first(firstSEXP);
    Rcpp::traits::input_parameter< int >::type last(lastSEXP);
    rcpp_result_gen = Rcpp::wrap(f(v, first, last));
    return rcpp_result_gen;
END_RCPP
}
// smooth
arma::mat smooth(arma::mat lrr, int R, int t);
RcppExport SEXP modSaRa_smooth(SEXP lrrSEXP, SEXP RSEXP, SEXP tSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< arma::mat >::type lrr(lrrSEXP);
    Rcpp::traits::input_parameter< int >::type R(RSEXP);
    Rcpp::traits::input_parameter< int >::type t(tSEXP);
    rcpp_result_gen = Rcpp::wrap(smooth(lrr, R, t));
    return rcpp_result_gen;
END_RCPP
}
