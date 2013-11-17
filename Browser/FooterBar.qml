import QtQuick 2.0

Rectangle {
	id: footer;
	color: "lightgray"

	Row{
		y: 3
		anchors.right: parent.right
		spacing: 6

		Button{
			id: openButton
			text: "Open"
		}
		Button{
			id: cancelButton
			text: "Cancel"

			onButtonClick: Qt.quit();
		}
		
	}
}