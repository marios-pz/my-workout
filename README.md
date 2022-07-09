# my-workout
A workout routine for full body strength. 

## Showcase
![Screenshot 2022-07-09 at 10 32 47 AM](https://user-images.githubusercontent.com/30930688/178096440-e7d5db2c-c8f0-4548-9a9d-a2885a7dfee0.png)

## Tools used
- Svelte
- <a href="https://github.com/mariospapaz/my-workout-api">Go</a>
- Kubernetes
- Docker
- MongoDB
- Microsoft Azure


## Disclaimer: 
- I precisely searched for uncopyrighted images, if the backround image is copyrighted. 
  Not my problem! 😉 __It will not__ going to be used for commercial purposes.
  
## To make the whole thing work you need to:
- `docker pull mongodb:5.0` (hostname must be named bibi, else use my compose are reference)
- `docker pull mariospapaz/api-workout:1.0`
- `docker pull mariospapaz/my-workout:1.0`
<br>
I highly suggest you to take my 
<a href="https://github.com/mariospapaz/my-workout/blob/main/visitors.yaml"> 
    Visitors yaml
</a>
instead, running all of these seperaly is a nuisance.

This is my first svelte project, if the webapp image seems not minimal to you. blame node-modules and my lack of experience :')
