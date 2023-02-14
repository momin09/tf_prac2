resource "aws_db_parameter_group" "sample-db-pg" {
  name = "sample-db-pg"
  description = "sample parameter group"
  family = "mysql8.0"
}

resource "aws_db_option_group" "sample-db-og" {
  name = "sample-db-og"
  option_group_description = "Sample option group"
  engine_name = "mysql"
  major_engine_version = "8.0"
}

resource "aws_db_subnet_group" "sample-db-subnet" {
  name = "sample-db-subnet"
  description = "Sample db subnet"

  subnet_ids = [aws_subnet.private01.id, aws_subnet.private02.id]
  tags = {
    Name = "sample-db-subnet"
  }
}

resource "aws_db_instance" "sample-db" {
  allocated_storage = 20
  parameter_group_name = aws_db_parameter_group.sample-db-pg.name
  option_group_name = aws_db_option_group.sample-db-og.name
  db_subnet_group_name = aws_db_subnet_group.sample-db-subnet.name
  vpc_security_group_ids = [aws_security_group.sample-sg-rds.id]

  db_name = "sample_db"
  engine = "mysql"
  instance_class = "db.t2.micro"


  username = ""
  password = ""
  multi_az = false
}