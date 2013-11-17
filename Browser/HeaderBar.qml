import QtQuick 2.1

Rectangle {
	id: header;
	color : "lightblue"

	property string text: texteditPath.text

	Row{
		spacing: 10;

		Image{
			id: previous;
			source: "./img/previous.png"
			sourceSize.width : parent.width
			sourceSize.height : 40

			MouseArea{
				onClicked: console.log("Previous clicked")
			}
		}
		Image{
			id: next
			source: "./img/next.png"
			sourceSize.width: parent.width
			sourceSize.height: 40

			MouseArea{
				onClicked: console.log("Next clicked")
			}
		}
		Image{
			id: folder
			source: "./img/Folder-icon.png"
			sourceSize.width: parent.width
			sourceSize.height: 40

			MouseArea{
				hoverEnabled: true
				onClicked: console.log("Folder clicked")
			}
		}

		TextEdit {
			id : texteditPath
			y: 10
			text: "/home/lucie-linux/testsQml/Browser"
			height: parent.height
			width: 900
		}
		
	}

}
