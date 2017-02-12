file(COPY "${REPO_DIR}/FindMyGUI.cmake" DESTINATION "${CGET_INSTALL_DIR}/lib/cmake")
file(COPY "${REPO_DIR}/LibFindMacros.cmake" DESTINATION "${CGET_INSTALL_DIR}/lib/cmake")

CGET_HAS_DEPENDENCY(Freetype REGISTRY VERSION master)
CGET_HAS_DEPENDENCY(MyGUI GITHUB MyGUI/mygui VERSION MyGUI3.2.2
  OPTIONS 
  -DMYGUI_RENDERSYSTEM=4
  -DMYGUI_BUILD_DEMOS=OFF
  -DMYGUI_BUILD_PLUGINS=OFF
  -DMYGUI_BUILD_TOOLS=OFF
)