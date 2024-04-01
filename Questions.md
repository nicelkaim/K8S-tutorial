## GKE specific

1. Try to create a standard non-vpc native cluster in the `terraform-network` VPC. Does this fail, if so, why?

2. Autoscaling is enabled in the `lion` cluster, but the `bigjob` deployment still has unschedulable pods, why isn’t autoscaling working?

3. Autoscaling is enabled on the `mongoose` cluster. There are multiple nodes with under 50% resource usage, why won’t it scale down?

## General Kubernetes

1. In the `unicorn` cluster, create a deployment using the `wordpress:latest` container image. You can do this through the UI or from the `bastion` VM using this command:  

       kubectl create deploy wordpress --image wordpress:latest  

   Why won't the pods run?

2. Why isn’t the `working` deployment in the `lion` cluster working? The pod status shows running in the UI!

3. The `job` workload in the `lion` cluster doesn’t seem to be working. Can you tell what is wrong or what the next steps in debugging it would be?

4. The `fab-four` deployment in the `narwhal` cluster should have 4 pods, why are only 3 scheduled?

5. There is a service called `webserver`, I have tested the pod internally and I am confident that the pod is serving traffic properly. Why doesn’t the Load Balancer seem to work?

6. There is a service called `nginx` in the hippo cluster, I have tested the pod internally and I am confident that the pod is serving traffic properly. Why doesn’t the Load Balancer seem to work?

7. I created an ingress for my `nginx` workload since the service load balancer is not working. Why isn’t my ingress working?

8. The `working` ingress is returning 502 errors. Why is this happening?  How can I debug this?

9. The `echo-ing` workload has been exposed with an ingress, yet there is still no external IP, what am I doing wrong?

10. Why won't the `mount` pods run?
