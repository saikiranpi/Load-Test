# Note: Replace the website address below “http://cmakkaya-test-ALB-for-WAF-173332589.us-east-1.elb.amazonaws.com/” 
# with your own website address or Load Balancer’s endpoint where we are going to run the load testing.
################
#!/bin/bash
for x in {1..200}
do
output=$(curl –s http://cmakkaya-test-ALB-for-WAF-173332589.us-east-1.elb.amazonaws.com/ | grep h1)
echo $x — $output
sleep 0.5
done
