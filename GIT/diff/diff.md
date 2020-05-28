
Problem
You wish to view the differences between the previous commit and the latest.
Solution
1 Change directory to the Git repository, such as cd /Users/mike/ GitInPracticeRedux/.
2 Run git diff master~1 master (you may need to press Q to exit afterward). The output should resemble the following.
Listing 1.8 Differences between the previous commit and the latest
# git diff master~1 master B git diff command
diff --git a/GitInPractice.asciidoc b/GitInPractice.asciidoc index 48f7a8a..b14909f 100644 D Index SHA-1 changes
C Virtual diff command
     
20
CHAPTER 1
Local Git
--- a/GitInPractice.asciidoc
+++ b/GitInPractice.asciidoc
@@ -1,2 +1,4 @@
E Old virtual path F New virtual path
    G Diff offsets
  = Git In Practice
-// TODO: write book
+== Chapter 1
+Git In Practice makes Git In Perfect! J Inserted line +// TODO: Is this funny?
B is the command that requests that Git show the diff between the commit before the top of master (master~1) and the commit on top of master. Both master~1 and master are refs and will be explained in section 1.7.
C is the invocation of the Unix diff command that Git is simulating. Git pretends that it’s diffing the contents of two directories E and F, and C represents that. The --git flag can be ignored, because it just shows this is the Git simulation and the Unix diff command is never run.
D shows the difference in the contents of the working tree between these commits. This can be safely ignored, other than noticing that these SHA-1s don’t refer to the commits themselves.
E is the simulated directory for the master~1 commit.
F is the simulated directory for the master commit.
G can be ignored. These are used by the Unix diff command to identify what lines the diff relates to for files that are too large to be shown in their entirety.
H shows the previous version of a line that differs between the commits. Recall that a modified line is shown as a deletion and insertion.
I shows the new version of a line that differs between the commits.
J shows a new line that was added in the latter commit.
Discussion
git diff can take path arguments after a -- to request only the differences between particular paths. For example, git diff master~1 master -- GitInPractice .asciidoc shows only the differences to the GitInPractice.asciidoc file between the previous and latest commits.
git diff without an argument displays the differences between the current working directory and the index staging area. git diff master displays the differences between the current working directory and the last commit on the default master branch.
If git diff is run with no arguments, it shows the differences between the index staging area and the current state of the files tracked by Git: any changes you’ve made but not yet added with git add.