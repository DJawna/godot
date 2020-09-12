#!/bin/sh


# Build temporary binary
scons p=x11 tools=yes module_mono_enabled=yes mono_glue=no
# Generate glue sources
bin/godot.x11.tools.64.mono --generate-mono-glue modules/mono/glue

### Build binaries normally
# Editor
scons p=x11 target=release_debug tools=yes module_mono_enabled=yes mono_glue=yes
# Export templates
#scons p=x11 target=release_debug tools=no module_mono_enabled=yes mono_glue=yes
#scons p=x11 target=release tools=no module_mono_enabled=yes mono_glue=yes