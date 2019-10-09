# aws-cli-docker-task-defintion

Execute for parser compose to task definiton:
```
$ ecs-cli compose -f docker-compose.yml --project-name aws-sdk-test --region <AWS_REGION> create
```
* Need a task role to run SDK in an ECS environment without crendentials.
* Put task role ARN in ecs-params.yml.
* **Don't put the credentials file in the container! This container is not ready for production environment.**

### Docker Hub
https://hub.docker.com/r/leonaugusto16/aws-sdk

### Links
https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cmd-ecs-cli-compose.html
