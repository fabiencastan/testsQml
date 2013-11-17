import QtQuick 2.0
import Qt.labs.folderlistmodel 1.0

Rectangle{
	id: winFile;
	color: "green"

	property string folder: "Default"
	property bool showFocusHighlight: false

	
	GridView{
		y: 20
		x: 10
		height : parent.height
		width : parent.height

		model: FolderListModel{
			id: folder1
			folder: winFile.folder
			showDirsFirst: true
		}
		delegate: Column {
			//if ()
			/*Image{
				x: 25
				source: winFile.folder+"/"+fileName
				sourceSize.width: 40
				sourceSize.height: 40
			}	*/	
			Text{
				text: fileName;
				anchors.horizontalCenter: parent.horizontalCenter

				MouseArea{
					id: mouseRegion
					onPressed: console.log(" clicked");
				}
			}
			
		}
	}

}