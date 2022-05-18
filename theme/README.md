# NOTE from Ben: This is a fork of https://github.com/veeravn/jsonresume-theme-tan-responsive

# jsonresume-theme-tan-responsive

JSON Resume template based on FREE RESPONSIVE HTML/CSS3 CV TEMPLATE from http://www.thomashardy.me.uk/free-responsive-html-css3-cv-template http://www.thomashardy.me.uk/cv/

This theme includes the **Projects** section of the resume.json into the final layout of the resume.

## Usage

To first get started with this JSONResume theme, you'll need to have the JSONResume CLI installed. If you haven't already install it with `npm install -g resume-cli`. If this doesn't work, try `sudo npm install -g resume-cli`.

After this, you can get your resume.json ready by typing `resume init`. After hitting enter, your resume will be initialized and you can edit it and fill in the neccessary fields. Check out [the official resume-schema repository](https://github.com/jsonresume/resume-schema) for more information on filling these fields.

When you are finished with your resume, you may test it by yet again opening the command line and typing `resume serve --theme an-responsive` to see how it looks with this theme. You can replace the word `tan-responsive` with other theme names too.

### Install the command line

We're going to use the official [resume-cli](https://github.com/jsonresume/resume-cli) to run our development server.

Go ahead and install it:

```
sudo npm install -g resume-cli
```

### Install npm packages

We need to install the dependencies. `cd` into the theme folder we just downloaded and run:

```bash
sudo npm install
```

This will read the local `package.json` and install the packages listed under `dependencies`.

### Serve theme

While inside the theme folder, simply run:

```
resume serve --theme .
```

You should now see this message:

```
Preview: http://localhost:4000
Press ctrl-c to stop
```

Congratulations, you've made it!

__The theme development can now begin.__
