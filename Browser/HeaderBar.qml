import QtQuick 2.0

Rectangle {
	id: header;
	color : "lightblue"

	property string text: "Path";

	Row{
		spacing: 6;

		Image{
			id: previous;
			source: "./img/previous.png";
			sourceSize.width : parent.width;
			sourceSize.height : 40;
		}
		Image{
			id: next;
			source: "./img/next.png";
			sourceSize.width : parent.width;
			sourceSize.height : 40;
		}

		Text{
			id : path
			text: header.text
		}
		
	}

}