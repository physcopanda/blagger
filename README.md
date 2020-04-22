# Blagger - the last job

ITS HERE!!!! [The ZX Spectrum Next!](https://www.specnext.com/) And to celebrate this awesome beast - I'm going to have a crack at writting a game in Z80.

I've ported a game to the C64 using 6502 assembly before and more recently ported an old MSX game called Blagger into Gamemaker as a fun side project.

So - this lead me to thinking... if I have the assets, with a little reworking I could bring the original Blagger to the Spectrum. I've NO idea why it never happened before!

After playing a few new Spectrum games to see what the caliber of coding is like these days, I found the fantastic [Manic Pietro](https://noentiendo.itch.io/manic-pietro) and thought - that's how I want Blagger to look on the Next.

After some investigation - it turns out it uses a display engine called Nirvana+, so I set to the task of using the same engine to bring Blagger back for one last job!

I will include all the MSX levels and any extra ones from the C64 version of the game as for some reason it has many different ones.

Also for reference I will be checking the [enhanced MSX version](https://sites.google.com/site/msxpage/msx-developed-software/blagger-enhanced-version)

Using the [Zalaxa tutorials](https://seven-fff.com/blog/) to learn how to use the Nirvana+ API and kickstart me into Z80 cross assembly.

I've written this as a series of blog type articles for future use on our website.

## Part 1 22nd April 2020

Learning the tools

For assembly I'm using ZEUS.

For artwork I'm using ZX Paintbrush as it handles the btile format required by Nirvana.

Today I got my toolchain setup and took a look at the orignal sprite and compared it to the enhanced MSX one and had a go at making my own Speccy version.

Here's the original Roger the Dodger:

![Roger the Dodger](/resources/images/blagger_msx.gif)


And here's the MSX enhanced version:

![Roger the Dodger](/resources/images/blagger_enhanced_msx.gif)

Here's my Nirvana+ colourised version:

![Roger the Dodger](/resources/images/blagger_nirvana.gif)

