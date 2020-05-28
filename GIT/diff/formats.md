Diffs are shown by default in Git (and in the previous example) in a format known as a unified format diff. Diffs are used often by Git to indicate changes to files, for example when navigating through history or viewing what you’re about to commit.
Sometimes it’s desirable to display diffs in different formats. Two common alterna- tives to a typical unified format diff are a diffstat and word diff.
Listing 1.9 Diffstat format
# git diff --stat master~1 master
B One file’s changes
 GitInPractice.asciidoc | 4 +++-
1 file changed, 3 insertion(+), 1 deletions(-)
C All files’ changes
    Bshows the filename that has been changed, the number of lines changed in that file, and +/- characters summarizing the overall changes to the file. If multiple files were changed, this would show multiple filenames, and each would have the lines changed for that file and +/- characters.
C lists a summary of totals of the number of files changes and lines inserted/deleted across all files.
This diffstat shows the same changes as the unified format diff in the previous solu- tion. Rather than showing the breakdown of exactly what has changed, it indicates what files have changed and a brief overview of how many lines were involved in the changes. This can be useful when getting a quick overview of what has changed with- out needing all the detail of a normal unified format diff.
Listing 1.10 Word diff format
# git diff --word-diff master~1 master
diff --git a/GitInPractice.asciidoc b/GitInPractice.asciidoc
index 48f7a8a..b14909f 100644
--- a/GitInPractice.asciidoc
+++ b/GitInPractice.asciidoc
@@ -1,2 +1,4 @@
= Git In Practice
{+== Chapter 1+}
{+Git In Practice makes Git In Perfect!+}
// TODO: [-write book-]{+Is this funny?+}
B Added line
C Modified line
     B shows a completely new line that was inserted, surrounded by {+}.
C shows some characters that were deleted, surrounded by [-]; and some lines that
were inserted, surrounded by {+}.
This word diff shows the same changes as the unified format diff in the previous solu- tion. A word diff is similar to a unified format diff but shows modifications per word rather than per line. This is particularly useful when viewing changes to plain text
22
CHAPTER 1 Local Git
1.7
rather than code; in README files, we probably care more about individual word choices than knowing that an entire line has changed, and the special characters ([-]{+}) aren’t used as often in prose as in code.