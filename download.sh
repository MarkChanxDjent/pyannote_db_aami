#!/bin/bash

if [ -z "$1" ]
then
      DLFOLDER="amicorpus"
else
      DLFOLDER="$1/amicorpus"
fi

wget    --continue -P $DLFOLDER/EN2001a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/EN2001a/audio/EN2001a.Mix-Headset.wav
wget    --continue -P $DLFOLDER/EN2001b/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/EN2001b/audio/EN2001b.Mix-Headset.wav
wget    --continue -P $DLFOLDER/EN2001d/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/EN2001d/audio/EN2001d.Mix-Headset.wav
wget    --continue -P $DLFOLDER/EN2001e/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/EN2001e/audio/EN2001e.Mix-Headset.wav
wget    --continue -P $DLFOLDER/EN2002b/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/EN2002b/audio/EN2002b.Mix-Headset.wav
wget    --continue -P $DLFOLDER/EN2002d/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/EN2002d/audio/EN2002d.Mix-Headset.wav
wget    --continue -P $DLFOLDER/EN2004a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/EN2004a/audio/EN2004a.Mix-Headset.wav
wget    --continue -P $DLFOLDER/EN2005a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/EN2005a/audio/EN2005a.Mix-Headset.wav
wget    --continue -P $DLFOLDER/EN2006a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/EN2006a/audio/EN2006a.Mix-Headset.wav
wget    --continue -P $DLFOLDER/EN2006b/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/EN2006b/audio/EN2006b.Mix-Headset.wav
wget    --continue -P $DLFOLDER/EN2009b/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/EN2009b/audio/EN2009b.Mix-Headset.wav
wget    --continue -P $DLFOLDER/EN2009c/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/EN2009c/audio/EN2009c.Mix-Headset.wav
wget    --continue -P $DLFOLDER/ES2002a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/ES2002a/audio/ES2002a.Mix-Headset.wav
wget    --continue -P $DLFOLDER/ES2002b/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/ES2002b/audio/ES2002b.Mix-Headset.wav
wget    --continue -P $DLFOLDER/ES2002c/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/ES2002c/audio/ES2002c.Mix-Headset.wav
wget    --continue -P $DLFOLDER/ES2002d/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/ES2002d/audio/ES2002d.Mix-Headset.wav
wget    --continue -P $DLFOLDER/ES2003a/audio http://groups.inf.ed.ac.uk/ami/AMICorpusMirror//amicorpus/ES2003a/audio/ES2003a.Mix-Headset.wav