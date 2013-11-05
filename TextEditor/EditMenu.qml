import QtQuick 2.0

Rectangle{
	width: 600;
	height: 100;
	color : "lightblue";

	Row {
		anchors.centerIn: parent;
		spacing: 6;

		Button {
			id: loadButton;
			buttonColor: "lightgrey";
			text: "Cut";
		}
		Button {
			id: saveButton;
			buttonColor: "grey";
			text: "Paste";
		}
		Button {
			id: exitButton;
			buttonColor: "darkgrey";
			text: "Select All";

		}
	}
}