# MP3 Toolbox

This is a toolbox for batch-managing large collections of MP3 files and their ID3 Tags. It allows to set ID3 Tag basing on file name and opposite (to rename all files basing on their ID3 Tags). It offers many cool functions and tools useful, when you want to have your MP3 or audiobook collection nice and shiny. Warning! Only first version of ID3Tag (ID3Tagv1) is supported by this program!

For Delphi developer this project may be useful to learn how to operate on large number of files and to learn all the things around playing MP3 file with XAudio or managing its ID3Tag with `MPGTools.pas` library.

**This project ABANDONED! There is no wiki, issues and no support. There will be no future updates. Unfortunately, you're on your own.**

### Status

Last time `.dpr` file saved in Delphi: **27 March 2008**. Last time `.exe` file built: **6 January 2013**.

**You're only getting project's source code and nothing else! You need to find all missing Delphi components by yourself.**

I don't have access to either most of my components used in this or any other of my Delphi projects, nor to Delphi itself. Even translation of this project to English was done by text-editing all `.dfm` and `.pas` files and therefore it may be cracked. It was made in hope to be useful to anyone and for the same reason I'm releasing its source code, but you're using this project or source code at your own responsibility.

Keep in mind, that both comments and names (variables, object) are in Polish. I didn't find enough time and determination to translated them as well. I only translated strings.

### Used components and libraries

If you wish to work on source code of this application, then there are few things you need to remember:

1. This project is based on `MPGTools.pas` -- a library created (and last time updated?) in... 1999! Even though program was perfectly building in Delphi 5, it dies completely with a lot of `Unsafe code` and many other warnings or errors, when trying to build it in Delphi 7 or anything newer! You can either try to fight this monster and fix all the _unsafe code_ or make use of [Audio Tools Library](http://mac.cvs.sourceforge.net/viewvc/mac/unstable/Units/ID3v2.pas?view=markup) or anything else for reading and writing of ID3Tags. ATL should compile in Delphi 7 or newer (never checked that actually!) and beside has full support for ID3Tagv2.

2. Project uses `ThemeManger` component to add Windows XP-like style to application. This is past, of course. Compiling in any new Delphi version should have the same effect.

3. Project uses `TXAudioPlayer` and `TFolderDialog` which are no longer available (for free / with sources / not available at all). I used some "home-cooked" replacement (modified version of `TXaPlayer` for example) to make this program compilable in Delphi 7, but expect some strange issues around this corner now or in the future.

4. Project uses `TFlatHint` component from `FlatStyle` library. Original component failed to compile in Delphi 7, so I installed newest version of `FlatHint` library. It works (compiles), but certain hints may look strange and my need to be revised.

**This project ABANDONED! There is no wiki, issues and no support. There will be no future updates. Unfortunately, you're on your own.**