# microservices-demo-consul

Demo application to go with [Microservices Blog](https://spring.io/blog/2015/07/14/microservices-with-spring) on the spring.io website.

I just modify it to run on consul.

## Running the sample

 1. Install Consul, Please see the [installation documentation](https://www.consul.io/intro/getting-started/install.html) for instructions on how to install Consul.
 1. In each window, change to the directory where you cloned the demo
 1. In the first window, run: `./src/main/bash/local_run_consul.sh` and wait for it to start up
 1. In the second window, build the application using `mvn clean package`
 1. In the same window run: `java -jar target/microservice-demo-consul-1.1.0.RELEASE.jar accounts` and wait for it to start up
 1. In the third window run: `java -jar target/microservice-demo-consul-1.1.0.RELEASE.jar web`
 1. In your favorite browser open the same two links: [http://localhost:8500](http://localhost:8500) and [http://localhost:3333](http://localhost:3333)

You should see servers being registered in the log output of the first (registration) window.
As you interact with the web-application ([http://localhost:3333](http://localhost:3333)) you should logging appear
in the second and third windows.

 1. In a new window, run up a second account-server using HTTP port 2223:
     * `java -jar target/microservice-demo-consul-1.1.0.RELEASE.jar accounts 2223`
 1. Allow it to register itself
 1. Kill the first account-server and see the web-server switch to using the new account-server - no loss of service.

