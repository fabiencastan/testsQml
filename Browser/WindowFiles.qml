import QtQuick 2.0

Rectangle{
	id: winFile;
	color : "green";

	GridView{
		height : parent.height - 10;
		width : parent.height - 10;

		model: FileModel{}
		delegate: Column {
			Image{
				source: icon;
				sourceSize.width : 100;
				sourceSize.height : 50;
				anchors.horizontalCenter: parent.horizontalCenter;
			}
			Text {
				text: name;
				anchors.horizontalCenter: parent.horizontalCenter;
			}
		}
	}
}