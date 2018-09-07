This is a toy project demonstrating some API design.

## Requirements
- As a user I want to be able to share a playlist with another user
- As a user I want to be able to unshare a playlist with another user
- As a user I want to be able to view a playlist I created
- As a user I want to be able to view a playlist shared with me
- As a user I want to be able to view all my playlists

Edge cases:
- As a user, I cannot share a playlist I did not create
- As a user, I cannot unshare a playlist I did not create
- As a user, I cannot view a playlist which I did not create and which was not shared with me
- As a user, I want to be able to see a playlist with all its songs with one network call
- Songs that no longer exist do not get added to a playlist when it is requested

## Considerations
I did consider the possibility of pagination of songs within a playlist and playlists for users, but thought this would be premature optimization. Judging from the example data given, this will not be a current problem.I could see how it probably will be a problem we encounter later.

## Deployment
This code is currently deployed at `https://mysterious-basin-78669.herokuapp.com`.

## Seeding
The code to seed the database (currently Postgresql) can be run using `rails db:seed`.

## Automated Testing
If you can get everything setup locally ;), you can run `rails t` to run tests. The tests focus on testing the requirements above and are located in `test/controllers` and `test/models`.

## Manual Testing
Some curl command you can use to test the functionality are below:
- Sharing: `curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "user_id=2" https://mysterious-basin-78669.herokuapp.com/playlists/1/share/1`
- Unsharing: `curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -d "user_id=2" https://mysterious-basin-78669.herokuapp.com/playlists/1/unshare/1`
- Viewing a playlist: `curl https://mysterious-basin-78669.herokuapp.com/playlists/1?user_id=2`
- Viewing a user's playlists: `curl https://mysterious-basin-78669.herokuapp.com/users/2/playlists?user_id=2`
- Viewing songs: `curl https://mysterious-basin-78669.herokuapp.com/songs`
- Healthcheck: `https://mysterious-basin-78669.herokuapp.com/health`