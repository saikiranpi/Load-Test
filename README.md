# Load-Test
Load test script for our web application.

DDoS (Distributed Denial of Service) attack is done by generating a large number of requests to a website and its resources to cause an overload and ultimately block real traffic from accessing the website. Then attackers use sudden massive data packets to attack the network from multiple geo-locations causing the systems to go offline for a significant duration. Larger DDoS attacks cause more extended downtime, and your website/application may fail or recover very slowly. DDoS attacks can cause significant financial loss, business loss, and brand reputation damage.

Today, in order to simulate DDoS attacks, we will create a Load Testing using BashScript. Then we will try the load test script we created, on a website protected by AWS WAF.

- In the Linux terminal, create a script file called ddostest.sh. Then paste the bash script code below into it on your local PC.

Note: Replace the website address below “http://cmakkaya-test-ALB-for-WAF-173332589.us-east-1.elb.amazonaws.com/” with your own website address or Load Balancer’s endpoint where we are going to run the load testing.

++++++++


#!/bin/bash
for x in {1..200}
do
output=$(curl –s http://cmakkaya-test-ALB-for-WAF-173332589.us-east-1.elb.amazonaws.com/ | grep h1)
echo $x — $output
sleep 0.5
done


++++++++

