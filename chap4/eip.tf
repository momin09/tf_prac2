resource "aws_eip" "sample-nat-eip01" {
    lifecycle {
        create_before_destroy = true
    }
}

resource "aws_eip" "sample-nat-eip02" {
    lifecycle {
        create_before_destroy = true
    }
}