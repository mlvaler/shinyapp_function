prediction <- function(month_proj) {
  value.m1.ref <- drc::drm(
    value.ref.real_2 ~ AUX.period.ref,
    weights = AUX.weights.ref.real,
    robust = "tukey", #mean
    type = "continuous",
    fct = LL2.3())
  value.ref.predict <- predict(value.m1.ref, data.frame(AUX.period = (max(AUX.period.ref) + 1): month_proj))
  return(value.ref.predict)
}
