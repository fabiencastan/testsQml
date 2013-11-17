import QtQuick 2.0
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

ApplicationWindow{
	id: browser
	width: 1000
	height : 600

	GroupBox{
		ColumnLayout{
	
			HeaderBar{
				//anchors.top: parent.top
				id: headerBar
				width: parent.width
				height: 40
			}
		}
	}

	GroupBox{
		GridLayout{
			columns:2

			LeftCol{
				//anchors.top: headerBar.bottom
				height: 700
				id: left
				width: parent.width / 3
			}

			WindowFiles{
				//anchors.top: headerBar.bottom;
				//anchors.right: parent.right
				height: 700
				id: files
				width: parent.width* 2/3
				folder: headerBar.text
			}
		}
	}

	GroupBox{
		ColumnLayout{
			FooterBar{
				//anchors.bottom: parent.bottom
				id: footerBar
				width: parent.width
				height: 40
			}
		}
	}
}
