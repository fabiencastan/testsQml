import QtQuick 2.0

Rectangle {
	id: button;
	
	width: 150; height : 75;
	radius: 20;

	property color buttonColor: "lightblue";
	property color onHoverColor: "gold";
	property color borderColor: "white";

	property string text: "Button";

	signal buttonClick();

	onButtonClick: {
		console.log(buttonLabel.text + " clicked");
	}

	border {
		color : button.borderColor;
	}
	
	Text {
		id: buttonLabel;
		anchors.centerIn: parent;
		text: button.text;
	}

	MouseArea {
		id: buttonMouseArea

		// Anchor all sides of the mouse area to the rectangle's anchors
		anchors.fill: parent
	
		onClicked: buttonClick();
		hoverEnabled: true;
		onEntered: parent.border.color = onHoverColor;
		onExited: parent.border.color = borderColor;
	}

	color: buttonMouseArea.pressed ? Qt.darker(buttonColor, 1.5): buttonColor;
}
