## edit
git checkout -b feature1

## commit
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git commit . -m "hello gitops"

## push

git push ooocamel feature1

## PR

hub pull-request -F- <<<"THIS IS THE SUBJECT

This is the body.
This is the second line of body.

This will all be body."