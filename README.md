# Blagger - the last job

ITS HERE!!!! [The ZX Spectrum Next!](https://www.specnext.com/) And to celebrate this awesome beast - I'm going to have a crack at writting a game in Z80. It's the middle of a virus pandemic and we're all in lockdown so what a great way to pass the time!

I've ported a game to the C64 using 6502 assembly before and more recently ported an old MSX game called Blagger into Gamemaker as a fun side project.

So - this lead me to thinking... if I have the assets, with a little reworking I could bring the original Blagger to the Spectrum. I've NO idea why it never happened before!

After playing a few new Spectrum games to see what the caliber of coding is like these days, I found the fantastic [Manic Pietro](https://noentiendo.itch.io/manic-pietro) and thought - that's how I want Blagger to look on the Next.

After some investigation - it turns out it uses a display engine called Nirvana+, so I set to the task of using the same engine to bring Blagger back for one last job!

I will include all the MSX levels and any extra ones from the C64 version of the game as for some reason it has many different ones.

Also for reference I will be checking the [enhanced MSX version](https://sites.google.com/site/msxpage/msx-developed-software/blagger-enhanced-version)

Using the [Zalaxa tutorials](https://seven-fff.com/blog/) to learn how to use the Nirvana+ API and kickstart me into Z80 cross assembly.

I've written this as a series of blog type articles for future use on our website.

## 3 - Font Fun
*25th Aptil 2020*

For future reference Blagger levels are 24 x 18 tiles. These are 8 pixel square - so not quite sure yet how this will translate to the Nirvana engine!

Today, I re-pixelled the original Snatcher font using FZX font editor.

It took a few hours so not much else happened - but here's an idea of how the font looks!
![Snatcher Font](/resources/images/fonts.png)


## 2 - Roger the Dodger
*23rd April 2020*

After some messing about I managed to get Roger walking about on my Spectrum Next! He had to lose his red swag bag as I'm using basically character graphics to make him walk. So there's 4 frames in each direction with these wide tiles allowing him to move 2 pixels per frame ready for drawing 8 pixels forward.

Here he is being edited in [ZX Paintbrush](https://sourcesolutions.itch.io/zx-paintbrush)
![Roger the Dodger](/resources/images/blagger_zxpaintbrush.png)

You can see each attribute cell outlined. These can have one foreground colour and one background; hence the reason Roger had to lose the red bag. Too much colour corruption would have to have taken place over his body and head to keep it. Not sure about the blue boots yet either. Basically the Nirvana(+) engine gives you fantastic control of colour splits vertically of the spectrums colour cells but horizontally its the same.

Next stop - back to the tutorials. My Z80 is painfully slow at the moment as I don't know the opcodes. I need a 6502 to Z80 cheat sheet!

The question is boots or no boots?

![boots or no boots](/resources/images/blagger_sprites_boots_or_no.gif)


## 1 - Blagging It!
*22nd April 2020*

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

OK - so as Roger is a software sprite - he will have 4 frames moving horizontally and this causes some slight niggles with the attribute zones which dont move so my nice burgendy loot sack may on some offsets take on the stripey outfit. I might have a go at repixeling it a little to see if I can make it look neater but we'll see.

![Roger the Dodger](/resources/images/blagger_wtile.gif)