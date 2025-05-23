$QueueMessage = @{
    "container_name" = "documents"
}

$Base64EncodedMessage = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes(($QueueMessage | ConvertTo-Json)))

# Run on local
# az storage message put `
#     --content $Base64EncodedMessage `
#     --queue-name "documents" `
#     --connection-string "AccountName=devstoreaccount1;AccountKey=Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw==;DefaultEndpointsProtocol=http;BlobEndpoint=http://127.0.0.1:10000/devstoreaccount1;QueueEndpoint=http://127.0.0.1:10001/devstoreaccount1;TableEndpoint=http://127.0.0.1:10002/devstoreaccount1;" `
#     --time-to-live 86400

# Run on Azure
az storage message put `
    --content $Base64EncodedMessage `
    --queue-name "documents" `
    --account-name "st5aow54ku7ejbg" `
    --auth-mode key `
    --time-to-live 86400
