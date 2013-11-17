import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

ApplicationWindow {
	id: browser
	width: 1000
	height : 600

	ColumnLayout {
	    anchors.fill: parent
	    HeaderBar {
		    //anchors.top: parent.top
		    id: headerBar
		    Layout.fillWidth: true
		    Layout.preferredHeight: 40
	    }

	    RowLayout {
	        Layout.fillWidth: true
	        Layout.fillHeight: true

		    LeftCol {
			    id: left
		        Layout.preferredWidth: 100
	            Layout.fillHeight: true
		    }

		    WindowFiles {
			    id: files
		        Layout.fillWidth: true
	            Layout.fillHeight: true
			    
			    folder: headerBar.text
		    }
	    }

	    FooterBar {
		    id: footerBar
	        Layout.fillWidth: true
		    Layout.preferredHeight: 40
	    }
    }
}

