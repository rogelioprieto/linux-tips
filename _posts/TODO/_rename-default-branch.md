 Error:
error: src refspec master does not match any
error: failed to push some refs to 'git@github.com:rogelioprieto/latex-templates-UAS'

Solution:
there is no any brach called master. My default branch has another name, in my case: main.
In github web, I have renamed as main.


 Your members will have to manually update their local environments. We'll let them know when they visit the repository, or you can share the following commands.

git branch -m master <BRANCH>
git fetch origin
git branch -u origin/<BRANCH> <BRANCH>
git remote set-head origin -a