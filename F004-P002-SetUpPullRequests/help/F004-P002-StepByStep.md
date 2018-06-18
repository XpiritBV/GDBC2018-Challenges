# Step By Step: Protect your master branch with Pull Requests #

1. Open the Branch policies for the master branch in your repository:

![step-1](images/step-1.png)

2. Configure the required policies:

![step-2](images/step-2.png)

3. (Optional) Configure build validation :

![step-3](images/step-3.png)

4. Press "Save Changes"
5. Navigate back to the repository, you will now see branch policies have been activated on the master branch:

![step-5](images/step-5.png)

This means no code can be pushed directly to master anymore. You will have to setup a branch and submit a pull request to make any changes.

## Make a change using a pull request
6. Open a command prompt and change directory to the repository on disk, for example: `c:\repots\gdbc\samplewebapp`
7. Run the following commands:

```bash
git checkout master
git pull
git checkout -b feature/awesome-feature
```

8. Make a change in your code that breaks at least 1 unit test
9. Run the following commands:

```bash
git add *
git commit -m "added great feature"
git push -u origin feature/awesome-feature
```

10. Go back to your repo in VSTS and create a new pull request:

![step-10](images/step-10.png)

11. Make sure the pull request goes from `feature/awesome-feature` into `master`, add a reviewer that is not you (since you cannot approve your own changes in our current setup) and add the work item you were working on. When you are done press "Create":

![step-11](images/step-11.png)

12. Have the reviewer review the changes:

![step-12](images/step-12.png)

13. Go back to your pull request and you will see you cannot complete it yet:

![step-13](images/step-13.png)

As you can see the build failed (because we broke a unit test on purpose) and a comment was left that must be resolved.
14. Fix the code again in your repository and run the following commands:

```bash
git add *
git commit -m "fixed unit test"
git push
```

15. Go back to your pull request. As you can see the build has automatically been triggered when you pushed the change to the branch. Reply to the comment and resolve it and set the pull request to complete automatically once all policies have been satisfied:

![step-15-1](images/step-15-1.png)

![step-15-2](images/step-15-2.png)

16. Have the reviewer approve the changes:

![step-16](images/step-16.png)

17. Go back to your pull request. wait for your build to complete and you will that the pull request has been completed:

![step-17](images/step-17.png)

18. Go back to your repository and check the history. You will see a commit that says a pull request was merged to master. Click on the pull request number:

![step-18](images/step-18.png)

19. There you have it" proof that this pull request was reviewed, approved and met all required policies before it was merged into master!