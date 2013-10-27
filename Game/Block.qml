import QtQuick 2.0

Item {
    id: block
    
    property int type: 0

    Image {
        id: img
        anchors.fill: parent
        source: {
			if (type == 0)
				return "./img/block1.png"
			else if (type == 1)
				return "./img/block2.png"
			else
				return "./img/block3.png"
		}
    }
}
