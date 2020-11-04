title 'AWS EC2 Instance'

aws_instance_id = attribute('aws_instance_id')
aws_instance_ami_id = attribute('aws_instance_ami_id')

control 'ec2' do
    impact 1.0
    title 'Ensure EC2 instance exists with the right tags and the AMI ID'
    describe aws_ec2_instance(aws_instance_id) do
        it { should exist }
        its('tags') { should include(key: 'Name', value: 'Akshay') }
        its('image_id') { should eq aws_instance_ami_id }
    end 
end