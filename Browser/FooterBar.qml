import QtQuick 2.0

Rectangle {
	id: footer;
	color : "lightgray"

	Row{
		anchors.right: parent.right;
		spacing: 6;

		Button{
			id: openButton;
			text: "Open";
		}
		Button{
			id: cancelButton;
			text: "Cancel";
		}
		
	}
}