# How to Update News and Events in the Forwards Homepage

## Adding the changes to the website

A branch has been set up on forwards/website_source to work in. The simplest way to update is to edit the index.Rmd file in the 
browser: https://github.com/forwards/website_source/blob/update-news-events/content/index.Rmd

It doesn't actually contain R code, but using an .Rmd allows us to use divs for a two-column layout for the events and the 
twitter widget, while still allowing us to use markdown to write the events, which is a bit simpler especially for hyperlinks!

So the workflow is this: 
1. Click the pencil to edit the .Rmd. You can preview changes in the editor although this may not update properly e.g. when 
fixing a link, so just take that as a guide.
2. Once you've made the edits add a commit message and commit to the update-news-branch.
3. Preview the markdown in the browser to check for typos and that links work.
4. After a few mins the website will be built automatically and put online here: http://rforwards-auto.github.io/. This is the 
draft site, which allows you to check for any issues. Note if anyone else happens to be working in a different branch, the 
latest push will trigger a build, so your draft can get over-written. If you need to re-build, make another (trivial) commit.
5. If all ok, create a pull request with base:master and compare:update-news-events. It will tell you if the update-news-events 
branch is out-of-date with master (because changes have been made elsewhere) - you should be able to pull these changes in 
without any trouble as you'll be the only one editing news and events. Automatic tests are run and these have to pass.
6. If the check pass and you've checked the draft site for any problems, you can merge the branch directly - no need to get 
the changes reviewed.

That's it! The push to master triggers a production build and you should shortly see your changes on the live site: 
http://forwards.github.io/. Then you can go back to step 1 when you have new changes.

When the news gets longer than the Twitter window, you can drop old events. At some point it might be nice to have an archive or 
a scrolling window or something cleverer, but at the moment the focus is on keeping up-to-date.

A disadvantage of the above workflow is it doesn't allow you to stage changes and commit locally, so any mistakes require a new 
commit to fix and larger changes (e.g. changing the layout) might be tiresome to implement this way. The alternative is to 
clone the forwards/website_source repo and follow the general instructions in the README for updating.

## Gathering changes

The current procedure is to gather news and events in core team/slackathon minutes (other taskforce members should update!). 

It is appreciated if the task owner adds to this, adding taskforce events that have been missed and keeping an eye on relevant 
activities of taskforce members, e.g. by following their Twitter accounts.

The task owner decide on the procedure for gathering news, whether that's a regular slot in the minutes, a channel on slack, 
by email, on Twitter or whatever. Something shared (minutes/slack) is preferred as this can also help people moderating Twitter 
or Facebook to advertise the news/events if they weren't aware already.
