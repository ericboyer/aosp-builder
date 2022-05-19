# aosp-builder
Container for building android source (macos)

First build the image using `podman build . -t aosp-builder`. Then run using `podman run -v $AOSP_SOURCE_DIR:/home/aosp -it aosp-builder` where $AOSP_SOURCE_DIR is just a directory we'll mount for the android source code.

Once container is running, we'll need to get the source with the following commands:

- `repo init -u https://android.googlesource.com/platform/manifest`
- `repo sync`
- `source build/envsetup.sh`
- `lunch` and select a target

Then build. Here's an example command to build CTS: `make -j4 cts`

There are other build commands listed with `hmm` but simple make seems to do the trick.

