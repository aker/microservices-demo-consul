docker run --rm -v ~/.m2:/root/.m2 -v ${PWD}:/root/demo --privileged --net=host dev-mic sh -c 'mvn -f /root/demo/pom.xml package -Dmaven.test.skip=true'
