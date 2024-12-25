# Bricloud TF

This folder manages infra hosted in the cloud.

# How to use

Since this uses linode object storage as a backend, you must have the following in your aws credentials and config (s3 compatible):

`~/.aws/config`
```toml
[profile linode-s3]
output = text
region = us-east-1
```

`~/.aws/credentials`
```toml
aws_access_key_id=<access-key>
aws_secret_access_key=<secret-key>
```