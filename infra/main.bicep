targetScope = 'subscription'

var audienceMap = {
  AzureCloud: '41b23e61-6c1e-4545-b367-cd054e0ed4b4'
  AzureUSGovernment: '51bb15d4-3a4f-4ebf-9dca-40096fe32426'
  AzureGermanCloud: '538ee9e6-310a-468d-afef-ea97365856a9'
  AzureChinaCloud: '49f817b6-84ae-4cc0-928c-73f27289b3aa'
}

// var tenantId = subscription().tenantId
// var cloud = environment().name
// var audience = audienceMap[cloud]
// var tenant = uri(environment().authentication.loginEndpoint, tenantId)
// var issuer = 'https://sts.windows.net/${tenantId}/'
