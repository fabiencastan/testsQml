import QtQuick 2.0

Rectangle{
	id: browser;
	width : 1000; height : 600;

	HeaderBar{
		anchors.top: parent.top;
		id: headerBar;
		width: parent.width;
		height: 40;
	}

	LeftCol{
		anchors.top : headerBar.bottom;
		anchors.bottom : footerBar.top;
		id: left;
		width: parent.width / 3;

	}

	WindowFiles{
		anchors.top : headerBar.bottom;
		anchors.right: parent.right;
		anchors.bottom : footerBar.top;
		id: files
		width: parent.width* 2/3;
	}

	FooterBar{
		anchors.bottom: parent.bottom;
		id: footerBar;
		width: parent.width;
		height: 40;
	}
}
