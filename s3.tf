# Creating aws s3 bucket and the bucket is created after the vpc is created.
resource "aws_s3_bucket" "mybucket"{
    bucket =  var.aws_bucket_name
    acl = "private"

    depends_on = [
        aws_vpc.myvpc
    ] 
}

# Put a local file into s3 bucket. The file will be copied once the bucket is created. 
resource "aws_s3_bucket_object" "bucket_object" {
    key = "readmefile"
    bucket = aws_s3_bucket.mybucket.id
    source = "./README.md"

    depends_on = [
        aws_s3_bucket.mybucket
    ]
}