import QtQuick 2.0

Rectangle{
   id:menuBar;
   height: 700;
   width: parent.width;


   Rectangle {
      id: labelList;
      z : 1;
      height: 40;
      width: parent.width;
      color: "#101013"

      Row {
          anchors.centerIn: parent;
   	      spacing : 8;

          Button{
             id: fileButton;
             y: 5;
             onButtonClick: {
                menuListView.currentIndex = 0;
             }
             height : 20
             width : 50
             text: "File";
          }
          Button{
             id : editButton;
             y: 5;
             onButtonClick: {
                menuListView.currentIndex = 1;
             }
             height : 20
             width : 50
             text: "Edit";
          }
       }
   }

   Rectangle{
      color : "lightblue"
      width: parent.width;
      height: 70;
      VisualItemModel{
         id: menuListModel
         FileMenu{
            width: menuListView.width;
            height: menuBar.height;
            y: 40;
         }
         EditMenu{
            width: menuListView.width;
            height: menuBar.height;
            y: 40;
         }
      }
      ListView {
        id: menuListView

        // Anchors are set to react to window anchors
        anchors.fill: parent
        anchors.bottom: parent.bottom
        width: parent.width
        height: parent.height

        // The model contains the data
        model: menuListModel

        // Control the movement of the menu switching
        snapMode: ListView.SnapOneItem
        orientation: ListView.Horizontal
        boundsBehavior: Flickable.StopAtBounds
        flickDeceleration: 5000
        highlightFollowsCurrentItem: true
        highlightMoveDuration: 240
        highlightRangeMode: ListView.StrictlyEnforceRange
      }
   }
   
}