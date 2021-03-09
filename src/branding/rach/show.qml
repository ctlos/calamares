/* === This file is part of EasyArch - <https://gitlab.com/easyarch-iso> ===
 *
 *   Copyright 2020, Asif Mahmud Shimon <ams.eee09@gmail.com>
 *
 *   EasyArch is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   EasyArch is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with EasyArch. If not, see <http://www.gnu.org/licenses/>.
 */
import QtQuick 2.0
import calamares.slideshow 1.0
import QtQuick.Layouts 1.11

Presentation {
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide")
        presentation.goToNextSlide()
    }

    Timer {
        id: advanceTimer
        interval: 10 * 1000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent

        RowLayout {
            id: rowLayout1
            anchors.fill: parent
            spacing: 0
            Rectangle {
                id: blueRect1
                color: "#4A65BD"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 0

                Text {
                    id: logoText1
                    color: "#161720"
                    text: qsTr("Rach")
                    font.pointSize: 64
                    styleColor: "#161720"
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                }
            }

            Rectangle {
                id: darkRect1
                color: "#161720"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 0

                Text {
                    id: logoText2
                    color: "#4A65BD"
                    text: qsTr("Linups")
                    font.pointSize: 64
                    styleColor: "#4A65BD"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                }
            }
        }
    }
    Slide {
        anchors.rightMargin: 0
        anchors.fill: parent
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        anchors.leftMargin: 0
        RowLayout {
            id: rowLayout2
            anchors.fill: parent
            spacing: 0
            Rectangle {
                id: blueRect2
                color: "#4A65BD"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 0

                Text {
                    id: rachText
                    width: parent.width / 2
                    color: "#161720"
                    text: qsTr("Rach Linups Details")
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pointSize: 20
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            Rectangle {
                id: darkRect2
                color: "#161720"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 0

                Text {
                    id: rachTextUrl
                    color: "#4A65BD"
                    text: "https://git.io/linups"
                    style: Text.Raised
                    font.underline: true
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pointSize: 20
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WrapAnywhere

                    MouseArea {
                        id: rachTextUrlMouseArea
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor

                        onClicked: {
                            Qt.openUrlExternally("https://ctlos.github.io/rach")
                        }
                    }
                }
            }
        }
    }
    Slide {
        anchors.rightMargin: 0
        anchors.fill: parent
        anchors.bottomMargin: 0
        anchors.topMargin: 0
        anchors.leftMargin: 0
        RowLayout {
            id: rowLayout3
            anchors.fill: parent
            spacing: 0
            Rectangle {
                id: darkRect3
                color: "#161720"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 0

                Text {
                    id: rachTg
                    width: parent.width / 2
                    color: "#4A65BD"
                    text: qsTr("Rach Linups Telegram")
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pointSize: 20
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }

            Rectangle {
                id: blueRect3
                color: "#4A65BD"
                Layout.fillHeight: true
                Layout.fillWidth: true
                border.width: 0

                Text {
                    id: rachTgUrl
                    color: "#161720"
                    text: "t.me/rach_linups"
                    style: Text.Raised
                    font.underline: true
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    font.pointSize: 20
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WrapAnywhere

                    MouseArea {
                        id: rachTgUrlMouseArea
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor

                        onClicked: {
                            Qt.openUrlExternally("https://t.me/rach_linups")
                        }
                    }
                }
            }
        }
    }
    function onActivate() {
        console.log("QML Component (default slideshow) activated")
        presentation.currentSlide = 0
    }

    function onLeave() {
        console.log("QML Component (default slideshow) deactivated")
    }
}
