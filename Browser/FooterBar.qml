import QtQuick 2.1
import QtQuick.Layouts 1.0

Rectangle {
	id: footer
	color: "yellow"

	RowLayout {
		anchors.fill: parent
		spacing: 6

        Item {
			Layout.fillHeight: true
			Layout.fillWidth: true
        }
		Button{
			id: openButton
			text: "Open"
			Layout.fillHeight: true
		}
		Button{
			id: cancelButton
			text: "Cancel"
			Layout.fillHeight: true

			onButtonClick: Qt.quit();
		}
	}
}

