### Git Is an Active Project

We saw that **`git`** has over 40,000 commits -- an average of 10 a day for its lifetime.
But how active is **`git`** today?

We can make guesses, based on what we believe about how software evolves.

Perhaps **`git`** had a flurry of activity at the beginning,
but once the code was flushed out, that pace slackened.

Perhaps at the beginning, there was only one developer, who could only do so much by himself,
but now that there are many, changes come in at a furious pace.

Perhaps now that **`git`** is mature, and other, more fashionable technologies have appeared, there is little change.

There are claims that data show bugs per source-line-of-code is roughly constant across wide ranges of projects.
This would mean that the more **`git`** grows, the more bugs there are to fix.
Perhaps the number of commits per day is increasing exponentially.

We can guess, or we can look.

Collect the data.

```bash
#!/bin/bash -eu

echo week total
spd=$((24*60*60)) # seconds per day
spw=$((7*spd))    # seconds per week
d0=$(git log -1 --date=short --pretty=format:%ct e83c516) # first commit, seconds since epoch

ntot=$(git rev-list master | wc -l) # current commit total
n=0

for ((wk=0, sec=$d0; n < ntot; wk+=1, sec+=spw)); do
  n=$(git rev-list master --before=$sec | wc -l)
  echo $wk $((n-1))
done
```

Run the program, send output to cumulative-commits.dat, and look at it

```{r}
cc <- read.csv("cumulative-commits.dat", sep="")
plot(cc, main="Commits by Week")
cc.lm = lm(cc)
abline(cc.lm)
with(cc, cor.test(week,total))
```

The rate of commits is constant.

By looking, we've transformed the question
from "How do you think the rate of commits in a project changes over time?"
to "Why doesn't it?"
 
