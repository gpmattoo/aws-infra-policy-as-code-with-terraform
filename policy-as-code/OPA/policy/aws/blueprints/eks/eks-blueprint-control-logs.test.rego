package aws.blueprints.eks.controllogs

msg := {"EKS Cluster should contain following cluster log types enabled - 'api', 'audit', 'authenticator'"}

test_valid {
  result = deny with input as data.m1_valid
  count(result) == 0
}

test_invalid_api {
  result = deny with input as data.m1_api_invalid
  msg == result
}