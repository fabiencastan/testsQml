import QtQuick 2.0

Rectangle {
	id: simpleButton;
	color: "grey"
	width: 150; height : 75;
	
	Text {
		id: buttonLabel;
		anchors.centerIn: parent;
		text: "Button label";
	}
	
	MouseArea {
		id: buttonMouseArea;
		// His parent is Rectangle
		anchors.fill: parent;
		// When is clicked, "Button label clicked" is written in the consol
		onClicked: console.log(buttonLabel.text + " clicked");
	}	
}
