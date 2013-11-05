import QtQuick 2.0

Rectangle{
	id: screen
	width: 1000
	height: 1000

	property int partition: height /3;
	
	MenuBar{
		id: menuBar
		height: partition
		width: parent.width
		z:1
	}

	TextArea {
		id: textArea
		anchors.bottom: parent.bottom
		y: partition
		color: "white"
		width: parent.width
		height: partition * 2;
	}
}