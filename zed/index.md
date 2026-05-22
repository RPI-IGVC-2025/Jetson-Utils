# ZED Utilities

## QuickZed
Dependencies:
- [ZED SDK](https://www.stereolabs.com/en-fr/developers/release#CUDA13)

Installation: 

``echo "alias qzed='$(cat /path/to/quickzed.bash)'" >> ~/.bashrc`` (Not expecting changes)

OR

``chmod +x /path/to/quickzed.bash && echo "alias qzed='/path/to/quickzed.bash'" >> ~/.bashrc``


Usage: 

`qzed {App Name (case-insensitive)}`

Examples:

- To open ZED Explorer: `qzed explorer`
- To open ZED Depth Viewer: `qzed depth_viewer`