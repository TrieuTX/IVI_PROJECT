import QtQuick 2.15
import QtQuick3D 1.15

Node {
    id: rootNode
    property bool doorLeftFront: false
    property bool doorRightFront: false
    property bool doorLeftRear: false
    property bool doorRightRear: false
    property bool openTrunkFront: false
    property int doorOpenAngle: -50
    property int openTruckAngle: 90
    property int duration: 500
    Node {
        id: tesla_Model_3
        eulerRotation.x: -90
        scale.x: 100
        scale.y: 100
        scale.z: 100

        Model {
            id: hub_rb
            x: 0.898338
            y: -1.44654
            z: -0.37177
            source: "meshes/hub_rb.mesh"
            materials: [
                hub_rb_0_material
            ]
        }

        Model {
            id: hub_lb
            x: -0.898226
            y: -1.44647
            z: -0.37177
            source: "meshes/hub_lb.mesh"
            materials: [
                hub_rb_0_material
            ]
        }

        Model {
            id: hub_rf
            x: 0.924155
            y: 1.7566
            z: -0.371791
            source: "meshes/hub_rf.mesh"
            materials: [
                hub_rf_0_material,
                hub_rf_1_material
            ]
        }

        Model {
            id: hub_lf
            x: -0.924874
            y: 1.7566
            z: -0.371791
            source: "meshes/hub_lf.mesh"
            materials: [
                hub_rf_0_material,
                hub_rf_1_material
            ]
        }




        Node {
            id: dvornik_dummy
            x: -0.0828764
            y: 1.60456
            z: 0.17731
            eulerRotation.x: 54.7549

            Model {
                id: dvorright
                source: "meshes/dvorright.mesh"
                materials: [
                    dvorright_0_material
                ]
            }

            Node {
                id: other
                x: -0.622816
                y: -0.0792368
                z: 0.170684
                eulerRotation.x: 7.59313
                scale.y: 1
                scale.z: 1

                Model {
                    id: dvorleft
                    source: "meshes/dvorleft.mesh"
                    materials: [
                        dvorright_0_material
                    ]
                }
            }
        }

        Node {
            id: steering_dummy
            x: -0.469958
            y: 0.60791
            z: 0.17581
            eulerRotation.x: -17.625

            Model {
                id: movsteer_1_0
                source: "meshes/movsteer_1_0.mesh"
                materials: [
                    movsteer_1_0_1_material,
                    movsteer_1_0_0_material,
                    dvorright_0_material
                ]
            }
        }

        Node {
            id: chassis_dummy

            Model {
                id: chassis
                y: 1.77061
                z: -0.362406
                source: "meshes/chassis.mesh"
                materials: [
                    chassis_0_material
                ]

                Model {
                    id: jUST_BLACK
                    y: -1.77061
                    z: 0.362406
                    source: "meshes/jUST_BLACK.mesh"
                    materials: [
                        jUST_BLACK_0_material
                    ]

                    Model {
                        id: jUST_BLACK_001
                        source: "meshes/jUST_BLACK_001.mesh"
                        materials: [
                            jUST_BLACK_0_material
                        ]
                    }
                }

                Model {
                    id: body
                    y: -1.77061
                    z: 0.362406
                    source: "meshes/body.mesh"
                    materials: [
                        primary_material
                    ]
                }

                Model {
                    id: bodysills
                    y: -1.77061
                    z: 0.362406
                    source: "meshes/bodysills.mesh"
                    materials: [
                        primary_001_material
                    ]
                }

                Model {
                    id: black_lights
                    y: -1.77061
                    z: 0.362406
                    source: "meshes/black_lights.mesh"
                    materials: [
                        black_lights_0_material
                    ]

                    Model {
                        id: _satin_black_134
                        source: "meshes/_satin_black_134.mesh"
                        materials: [
                            black_lights_0_material
                        ]

                        Model {
                            id: _plastic_black_124
                            source: "meshes/_plastic_black_124.mesh"
                            materials: [
                                black_lights_0_material
                            ]
                        }
                    }

                    Model {
                        id: back_chrome_light
                        source: "meshes/back_chrome_light.mesh"
                        materials: [
                            back_chrome_light_0_material
                        ]

                        Model {
                            id: pantulans
                            source: "meshes/pantulans.mesh"
                            materials: [
                                pantulans_0_material
                            ]
                        }

                        Model {
                            id: rear_lights
                            source: "meshes/rear_lights.mesh"
                            materials: [
                                right_rear_light_material
                            ]
                        }

                        Model {
                            id: light_breake
                            source: "meshes/light_breake.mesh"
                            materials: [
                                breaklight_l_material
                            ]
                        }
                    }

                    Model {
                        id: chrome_foglight_r
                        source: "meshes/chrome_foglight_r.mesh"
                        materials: [
                            foglight_r_material
                        ]
                    }

                    Model {
                        id: chrome_foglight_l
                        source: "meshes/chrome_foglight_l.mesh"
                        materials: [
                            foglight_l_material
                        ]
                    }

                    Model {
                        id: chrome_Lights_head_l
                        source: "meshes/chrome_Lights_head_l.mesh"
                        materials: [
                            right_front_light_material,
                            left_front_light_material
                        ]
                    }

                    Model {
                        id: chrome
                        source: "meshes/chrome.mesh"
                        materials: [
                            movsteer_1_0_1_material
                        ]
                    }

                    Model {
                        id: breake_int
                        source: "meshes/breake_int.mesh"
                        materials: [
                            breaklight_l_material
                        ]
                    }

                    Model {
                        id: aluminium_light
                        source: "meshes/aluminium_light.mesh"
                        materials: [
                            aluminium_light_0_material
                        ]
                    }

                    Model {
                        id: tembus_red
                        source: "meshes/tembus_red.mesh"
                        materials: [
                            tembus_red_0_material
                        ]
                    }

                    Model {
                        id: interiorlights
                        source: "meshes/interiorlights.mesh"
                        materials: [
                            light_night_material
                        ]
                    }

                    Model {
                        id: turn_indicat_l
                        x: 0.00181705
                        source: "meshes/turn_indicat_l.mesh"
                        materials: [
                            indicator_lf_material
                        ]
                    }

                    Model {
                        id: turn_indicat_r
                        x: 0.00181705
                        source: "meshes/turn_indicat_r.mesh"
                        materials: [
                            indicator_rf_material
                        ]
                    }
                }



                Model {
                    id: base
                    y: -1.77061
                    z: 0.362406
                    source: "meshes/base.mesh"
                    materials: [
                        dvorright_0_material
                    ]

                    Model {
                        id: hitam
                        source: "meshes/hitam.mesh"
                        materials: [
                            dvorright_0_material
                        ]
                    }

                    Model {
                        id: hitam_001
                        source: "meshes/hitam_001.mesh"
                        materials: [
                            dvorright_0_material
                        ]
                    }

                    Model {
                        id: hitam_002
                        source: "meshes/hitam_002.mesh"
                        materials: [
                            hitam_0_material
                        ]
                    }

                    Model {
                        id: plastic
                        source: "meshes/plastic.mesh"
                        materials: [
                            plastic_0_material
                        ]
                    }

                    Model {
                        id: belt
                        source: "meshes/belt.mesh"
                        materials: [
                            belt_0_material
                        ]
                    }

                    Model {
                        id: black
                        source: "meshes/black.mesh"
                        materials: [
                            black_lights_0_material
                        ]
                    }

                    Model {
                        id: satin_red
                        source: "meshes/satin_red.mesh"
                        materials: [
                            satin_red_0_material
                        ]
                    }

                    Model {
                        id: paint_black
                        source: "meshes/paint_black.mesh"
                        materials: [
                            dvorright_0_material
                        ]
                    }

                    Model {
                        id: cahrome
                        source: "meshes/cahrome.mesh"
                        materials: [
                            movsteer_1_0_1_material
                        ]
                    }

                    Model {
                        id: suspensi
                        source: "meshes/suspensi.mesh"
                        materials: [
                            suspensi_0_material,
                            suspensi_1_material
                        ]
                    }

                    Model {
                        id: chrome_
                        source: "meshes/chrome_.mesh"
                        materials: [
                            movsteer_1_0_1_material
                        ]
                    }

                    Model {
                        id: chrome1
                        source: "meshes/chrome1.mesh"
                        materials: [
                            movsteer_1_0_1_material
                        ]
                    }

                    Model {
                        id: chrome2
                        source: "meshes/chrome2.mesh"
                        materials: [
                            movsteer_1_0_1_material
                        ]
                    }

                    Model {
                        id: hitam_003
                        source: "meshes/hitam_003.mesh"
                        materials: [
                            dvorright_0_material
                        ]
                    }

                    Model {
                        id: hitam_004
                        source: "meshes/hitam_004.mesh"
                        materials: [
                            dvorright_0_material
                        ]
                    }

                    Model {
                        id: aluminium
                        source: "meshes/aluminium.mesh"
                        materials: [
                            movsteer_1_0_1_material
                        ]
                    }

                    Model {
                        id: hitam_005
                        source: "meshes/hitam_005.mesh"
                        materials: [
                            plastic_0_material
                        ]
                    }

                    Model {
                        id: hitam_006
                        source: "meshes/hitam_006.mesh"
                        materials: [
                            black_lights_0_material
                        ]
                    }

                    Model {
                        id: texture_Leather
                        source: "meshes/texture_Leather.mesh"
                        materials: [
                            movsteer_1_0_0_material
                        ]
                    }

                    Model {
                        id: texture_Leather_001
                        source: "meshes/texture_Leather_001.mesh"
                        materials: [
                            movsteer_1_0_0_material
                        ]
                    }

                    Model {
                        id: aluminium2
                        source: "meshes/aluminium2.mesh"
                        materials: [
                            aluminium2_0_material
                        ]
                    }

                    Model {
                        id: frunkplastic
                        source: "meshes/frunkplastic.mesh"
                        materials: [
                            dvorright_0_material
                        ]
                    }

                    Model {
                        id: putih
                        source: "meshes/putih.mesh"
                        materials: [
                            putih_0_material
                        ]
                    }

                    Model {
                        id: whiteleather
                        source: "meshes/whiteleather.mesh"
                        materials: [
                            putih_0_material
                        ]
                    }

                    Model {
                        id: putih_001
                        source: "meshes/putih_001.mesh"
                        materials: [
                            putih_0_material
                        ]
                    }

                    Model {
                        id: putih_002
                        source: "meshes/putih_002.mesh"
                        materials: [
                            putih_0_material
                        ]
                    }

                    Model {
                        id: carpet
                        source: "meshes/carpet.mesh"
                        materials: [
                            carpet_0_material
                        ]
                    }

                    Model {
                        id: black_001
                        source: "meshes/black_001.mesh"
                        materials: [
                            plastic_0_material
                        ]
                    }

                    Model {
                        id: black_002
                        source: "meshes/black_002.mesh"
                        materials: [
                            plastic_0_material
                        ]
                    }

                    Model {
                        id: black_003
                        source: "meshes/black_003.mesh"
                        materials: [
                            black_lights_0_material
                        ]
                    }

                    Model {
                        id: black_004
                        source: "meshes/black_004.mesh"
                        materials: [
                            jUST_BLACK_0_material
                        ]
                    }

                    Model {
                        id: black_005
                        source: "meshes/black_005.mesh"
                        materials: [
                            black_lights_0_material
                        ]
                    }

                    Model {
                        id: carpet_Light
                        source: "meshes/carpet_Light.mesh"
                        materials: [
                            carpet_Light_0_material
                        ]
                    }

                    Model {
                        id: chromeBELT
                        source: "meshes/chromeBELT.mesh"
                        materials: [
                            movsteer_1_0_1_material
                        ]
                    }

                    Model {
                        id: suspensi2
                        source: "meshes/suspensi2.mesh"
                        materials: [
                            suspensi_0_material,
                            suspensi_1_material
                        ]
                    }

                    Model {
                        id: texture_Buttons
                        source: "meshes/texture_Buttons.mesh"
                        materials: [
                            texture_Buttons_0_material
                        ]
                    }

                    Model {
                        id: lCDs
                        source: "meshes/lCDs.mesh"
                        materials: [
                            lCDs_0_material
                        ]
                    }

                    Model {
                        id: seat_Leather_white
                        source: "meshes/seat_Leather_white.mesh"
                        materials: [
                            seat_Leather_white_0_material
                        ]

                        Model {
                            id: leather_white
                            source: "meshes/leather_white.mesh"
                            materials: [
                                seat_Leather_white_0_material
                            ]
                        }
                    }

                    Model {
                        id: mirror_inside
                        source: "meshes/mirror_inside.mesh"
                        materials: [
                            mirror_inside_0_material
                        ]
                    }
                }

                Model {
                    id: glass
                    y: -1.04158
                    z: 0.93493
                    source: "meshes/glass.mesh"
                    materials: [
                        glass_0_material,
                        glass_1_material
                    ]
                }
            }

            Node {
                id: boot_dummy
                y: -1.69223
                z: 0.597245

                Model {
                    id: black_boot
                    source: "meshes/black_boot.mesh"
                    materials: [
                        black_lights_0_material
                    ]

                    Model {
                        id: boot
                        source: "meshes/boot.mesh"
                        materials: [
                            primary_material
                        ]
                    }

                    Model {
                        id: platnomor
                        source: "meshes/platnomor.mesh"
                        materials: [
                            jUST_BLACK_0_material,
                            platnomor_1_material,
                            hitam_0_material,
                            platnomor_2_material
                        ]
                    }

                    Model {
                        id: chrome_001
                        source: "meshes/chrome_001.mesh"
                        materials: [
                            movsteer_1_0_1_material
                        ]
                    }

                    Model {
                        id: light_turn_rr_boot
                        source: "meshes/light_turn_rr_boot.mesh"
                        materials: [
                            indicator_rr_material
                        ]
                    }

                    Model {
                        id: light_turn_lr_boot
                        source: "meshes/light_turn_lr_boot.mesh"
                        materials: [
                            indicator_lr_material
                        ]
                    }

                    Model {
                        id: chrome_light
                        source: "meshes/chrome_light.mesh"
                        materials: [
                            back_chrome_light_0_material
                        ]
                    }

                    Model {
                        id: rear_lightsr
                        source: "meshes/rear_lightsr.mesh"
                        materials: [
                            right_rear_light_material
                        ]
                    }

                    Model {
                        id: rear_lightsl
                        source: "meshes/rear_lightsl.mesh"
                        materials: [
                            left_rear_light_material
                        ]
                    }

                    Model {
                        id: lightrevese_boot
                        source: "meshes/lightrevese_boot.mesh"
                        materials: [
                            revlight_L_material
                        ]
                    }

                    Model {
                        id: tembus_boot_ok
                        source: "meshes/tembus_boot_ok.mesh"
                        materials: [
                            tembus_red_0_material
                        ]
                    }
                }






            }

            Node {
                id: door_lf_dummy
                x: -1.00598
                y: 1.17528
                z: -0.0625812

                Model {
                    id: door_lf
                    source: "meshes/door_lf.mesh"
                    eulerRotation.z: rootNode.doorLeftFront ? doorOpenAngle : 0
                    Behavior on eulerRotation.z {
                        NumberAnimation { duration: rootNode.duration }
                    }
                    materials: [
                        jUST_BLACK_0_material,
                        texture_Buttons_0_material,
                        movsteer_1_0_1_material,
                        movsteer_1_0_0_material,
                        putih_0_material,
                        plastic_0_material,
                        aluminium2_0_material,
                        dvorright_0_material,
                        door_lf_0_material,
                        door_lf_5_material,
                        glass_0_material,
                        mirror_inside_0_material,
                        primary_material,
                        primary_002_material
                    ]

                    Model {
                        id: door_lf_ok
                        source: "meshes/door_lf_ok.mesh"
                        materials: [
                            primary_material
                        ]
                    }
                }
            }

            Node {
                id: door_lr_dummy
                x: -1.03329
                y: -0.13056
                z: -0.0625833

                Model {
                    id: door_lr
                    source: "meshes/door_lr.mesh"
                    eulerRotation.z: rootNode.doorLeftRear ? doorOpenAngle : 0
                    Behavior on eulerRotation.z {
                        NumberAnimation { duration: rootNode.duration }
                    }
                    materials: [
                        jUST_BLACK_0_material,
                        texture_Buttons_0_material,
                        primary_004_material,
                        movsteer_1_0_1_material,
                        movsteer_1_0_0_material,
                        putih_0_material,
                        plastic_0_material,
                        aluminium2_0_material,
                        dvorright_0_material,
                        glass_0_material,
                        primary_material,
                        primary_002_material
                    ]

                    Model {
                        id: door_lr_ok
                        source: "meshes/door_lr_ok.mesh"
                        materials: [
                            primary_material
                        ]
                    }
                }
            }

            Node {
                id: door_rf_dummy
                x: 1.00579
                y: 1.17528
                z: -0.0625812

                Model {
                    id: door_rf
                    source: "meshes/door_rf.mesh"
                    eulerRotation.z: rootNode.doorRightFront ? -doorOpenAngle : 0
                    Behavior on eulerRotation.z {
                        NumberAnimation { duration: rootNode.duration }
                    }
                    materials: [
                        jUST_BLACK_0_material,
                        texture_Buttons_0_material,
                        movsteer_1_0_1_material,
                        movsteer_1_0_0_material,
                        putih_0_material,
                        plastic_0_material,
                        aluminium2_0_material,
                        dvorright_0_material,
                        door_lf_0_material,
                        glass_0_material,
                        mirror_inside_0_material,
                        primary_material,
                        primary_002_material
                    ]

                    Model {
                        id: door_rf_ok
                        source: "meshes/door_rf_ok.mesh"
                        materials: [
                            primary_material
                        ]
                    }
                }
            }

            Node {
                id: door_rr_dummy
                x: 1.03309
                y: -0.13056
                z: -0.0625833

                Model {
                    id: door_rr
                    source: "meshes/door_rr.mesh"
                    eulerRotation.z: rootNode.doorRightRear ? -doorOpenAngle : 0
                    Behavior on eulerRotation.z {
                        NumberAnimation { duration: rootNode.duration }
                    }
                    materials: [
                        jUST_BLACK_0_material,
                        texture_Buttons_0_material,
                        movsteer_1_0_1_material,
                        movsteer_1_0_0_material,
                        putih_0_material,
                        plastic_0_material,
                        aluminium2_0_material,
                        dvorright_0_material,
                        glass_0_material,
                        primary_material,
                        primary_002_material
                    ]

                    Model {
                        id: door_rr_ok
                        source: "meshes/door_rr_ok.mesh"
                        materials: [
                            primary_002_material
                        ]
                    }
                }
            }

            Node {
                id: windscreen_dummy
                y: 0.729028
                z: 0.572526

                Model {
                    id: windscreen_ok
                    source: "meshes/windscreen_ok.mesh"
                    materials: [
                        glass_0_material
                    ]
                }
            }

            Node {
                id: bump_front_dummy
                x: 0.87334
                y: 1.93141
                z: 0.128491

                Model {
                    id: front_black
                    source: "meshes/front_black.mesh"
                    materials: [
                        front_black_0_material
                    ]

                    Model {
                        id: chrome_002
                        source: "meshes/chrome_002.mesh"
                        materials: [
                            back_chrome_light_0_material
                        ]
                    }

                    Model {
                        id: foglights_r
                        source: "meshes/foglights_r.mesh"
                        materials: [
                            foglight_r_material
                        ]
                    }

                    Model {
                        id: foglights_l
                        source: "meshes/foglights_l.mesh"
                        materials: [
                            foglight_l_material
                        ]
                    }

                    Model {
                        id: indicator_lights_r
                        source: "meshes/indicator_lights_r.mesh"
                        materials: [
                            indicator_rf_material
                        ]
                    }

                    Model {
                        id: indicator_lights_l
                        source: "meshes/indicator_lights_l.mesh"
                        materials: [
                            indicator_lf_material
                        ]
                    }

                    Model {
                        id: tembus_depan_ok
                        source: "meshes/tembus_depan_ok.mesh"
                        materials: [
                            tembus_red_0_material
                        ]
                    }
                }

                Model {
                    id: front_bumper_ok
                    source: "meshes/front_bumper_ok.mesh"
                    materials: [
                        primary_material
                    ]
                }


            }

            Node {
                id: bump_rear_dummy
                x: 0.87334
                y: -1.92876
                z: 0.281369

                Model {
                    id: rear_bumper
                    source: "meshes/rear_bumper.mesh"
                    materials: [
                        movsteer_1_0_1_material
                    ]

                    Model {
                        id: rear_bumper_ok
                        source: "meshes/rear_bumper_ok.mesh"
                        materials: [
                            primary_material
                        ]
                    }

                    Model {
                        id: light_pantulan
                        source: "meshes/light_pantulan.mesh"
                        materials: [
                            light_pantulan_0_material
                        ]
                    }

                    Model {
                        id: tembus_belakang
                        source: "meshes/tembus_belakang.mesh"
                        materials: [
                            tembus_red_0_material
                        ]
                    }
                }
            }

            Node {
                id: bonnet_dummy
                y: 1.32639
                z: 0.237391
                Model {
                    id: bonnet_ok
                    source: "meshes/bonnet_ok.mesh"
                    pickable: true
                    eulerRotation.x: rootNode.openTrunkFront ? openTruckAngle : 0
                    Behavior on eulerRotation.x {
                        NumberAnimation { duration: rootNode.duration }
                    }
                    materials: [
                        primary_material
                    ]
                    Model {
                        id: chrome_bonnet_ok
                        source: "meshes/chrome_bonnet_ok.mesh"
                        pickable: true
                        materials: [
                            movsteer_1_0_1_material
                        ]
                    }
                }
            }
        }

        Node {
            id: wheel_rf_dummy
            x: 0.925074
            y: 1.75662
            z: -0.37177

            Model {
                id: wheels
                source: "meshes/wheels.mesh"
                materials: [
                    wheels_2_material,
                    wheels_0_material,
                    wheels_1_material,
                    movsteer_1_0_1_material,
                    wheels_3_material,
                    wheels_4_material,
                    wheels_6_material
                ]
            }

            Model {
                id: wheels_001
                x: -7.22408e-05
                y: -3.20398
                z: 2.49147e-05
                scale.x: 1.01807
                scale.y: 1.01807
                scale.z: 1.01807
                source: "meshes/wheels_001.mesh"
                materials: [
                    wheels_2_material,
                    wheels_0_material,
                    wheels_1_material,
                    movsteer_1_0_1_material,
                    wheels_3_material,
                    wheels_4_material,
                    wheels_6_material
                ]
            }
        }

















    }

    Node {
        id: __materialLibrary__

        DefaultMaterial {
            id: hub_rb_0_material
            objectName: "hub_rb_0_material"
        }

        DefaultMaterial {
            id: hub_rf_0_material
            objectName: "hub_rf_0_material"
        }

        DefaultMaterial {
            id: hub_rf_1_material
            objectName: "hub_rf_1_material"
            diffuseColor: "#ffcccccc"
        }

        DefaultMaterial {
            id: dvorright_0_material
            objectName: "dvorright_0_material"
        }

        DefaultMaterial {
            id: movsteer_1_0_1_material
            objectName: "movsteer_1_0_1_material"
            diffuseColor: "#ffcccccc"
        }

        DefaultMaterial {
            id: movsteer_1_0_0_material
            objectName: "movsteer_1_0_0_material"
        }

        DefaultMaterial {
            id: chassis_0_material
            objectName: "chassis_0_material"
            diffuseColor: "#ffcccccc"
        }

        DefaultMaterial {
            id: jUST_BLACK_0_material
            objectName: "jUST_BLACK_0_material"
        }

        DefaultMaterial {
            id: primary_material
            objectName: "primary_material"
            diffuseColor: "#ff3cff00"
        }

        DefaultMaterial {
            id: primary_001_material
            objectName: "primary_001_material"
            diffuseColor: "#ff3cff00"
        }

        DefaultMaterial {
            id: black_lights_0_material
            objectName: "black_lights_0_material"
        }

        DefaultMaterial {
            id: back_chrome_light_0_material
            objectName: "back_chrome_light_0_material"
            diffuseColor: "#ffcccccc"
        }

        DefaultMaterial {
            id: pantulans_0_material
            objectName: "pantulans_0_material"
            diffuseColor: "#ffcccccc"
        }

        DefaultMaterial {
            id: right_rear_light_material
            objectName: "right_rear_light_material"
            diffuseColor: "#ffff3c00"
        }

        DefaultMaterial {
            id: breaklight_l_material
            objectName: "breaklight_l_material"
            diffuseColor: "#ffb8ff00"
        }

        DefaultMaterial {
            id: foglight_r_material
            objectName: "foglight_r_material"
            diffuseColor: "#ff00ffc7"
        }

        DefaultMaterial {
            id: foglight_l_material
            objectName: "foglight_l_material"
            diffuseColor: "#ffffae00"
        }

        DefaultMaterial {
            id: right_front_light_material
            objectName: "right_front_light_material"
            diffuseColor: "#ff00ffc8"
        }

        DefaultMaterial {
            id: left_front_light_material
            objectName: "left_front_light_material"
            diffuseColor: "#ffffaf00"
        }

        DefaultMaterial {
            id: aluminium_light_0_material
            objectName: "aluminium_light_0_material"
            diffuseColor: "#ffcccccc"
        }

        DefaultMaterial {
            id: tembus_red_0_material
            diffuseColor: "#ffcccccc"
            opacity: 0.747749
            objectName: "tembus_red_0_material"
        }

        DefaultMaterial {
            id: light_night_material
            objectName: "light_night_material"
            diffuseColor: "#ff0010ff"
        }

        DefaultMaterial {
            id: indicator_lf_material
            objectName: "indicator_lf_material"
            diffuseColor: "#ffb7ff00"
        }

        DefaultMaterial {
            id: indicator_rf_material
            objectName: "indicator_rf_material"
            diffuseColor: "#ffff3a00"
        }

        DefaultMaterial {
            id: hitam_0_material
            objectName: "hitam_0_material"
        }

        DefaultMaterial {
            id: plastic_0_material
            objectName: "plastic_0_material"
        }

        DefaultMaterial {
            id: belt_0_material
            objectName: "belt_0_material"
        }

        DefaultMaterial {
            id: satin_red_0_material
            objectName: "satin_red_0_material"
        }

        DefaultMaterial {
            id: suspensi_0_material
            objectName: "suspensi_0_material"
            diffuseColor: "#ffcccccc"
        }

        DefaultMaterial {
            id: suspensi_1_material
            objectName: "suspensi_1_material"
            diffuseColor: "#ffcccccc"
        }

        DefaultMaterial {
            id: aluminium2_0_material
            objectName: "aluminium2_0_material"
            diffuseColor: "#ffcccccc"
        }

        DefaultMaterial {
            id: putih_0_material
            objectName: "putih_0_material"
        }

        DefaultMaterial {
            id: carpet_0_material
            objectName: "carpet_0_material"
            diffuseColor: "#ff8e8e8e"
        }

        DefaultMaterial {
            id: carpet_Light_0_material
            objectName: "carpet_Light_0_material"
            diffuseColor: "#ff242424"
        }

        DefaultMaterial {
            id: texture_Buttons_0_material
            objectName: "texture_Buttons_0_material"
            diffuseColor: "#ffcccccc"
        }

        DefaultMaterial {
            id: lCDs_0_material
            objectName: "lCDs_0_material"
            diffuseColor: "#ff979797"
        }

        DefaultMaterial {
            id: seat_Leather_white_0_material
            objectName: "seat_Leather_white_0_material"
        }

        DefaultMaterial {
            id: mirror_inside_0_material
            objectName: "mirror_inside_0_material"
            diffuseColor: "#ffcccccc"
        }

        DefaultMaterial {
            id: glass_0_material
            diffuseColor: "#ffcccccc"
            opacity: 0.527273
            objectName: "glass_0_material"
        }

        DefaultMaterial {
            id: glass_1_material
            diffuseColor: "#ffcccccc"
            opacity: 0.663636
            objectName: "glass_1_material"
        }

        DefaultMaterial {
            id: platnomor_1_material
            objectName: "platnomor_1_material"
            diffuseColor: "#ffa3a3a3"
        }

        DefaultMaterial {
            id: platnomor_2_material
            objectName: "platnomor_2_material"
            diffuseColor: "#ffcccccc"
        }

        DefaultMaterial {
            id: indicator_rr_material
            objectName: "indicator_rr_material"
            diffuseColor: "#ffff3800"
        }

        DefaultMaterial {
            id: indicator_lr_material
            objectName: "indicator_lr_material"
            diffuseColor: "#ffb5ff00"
        }

        DefaultMaterial {
            id: left_rear_light_material
            objectName: "left_rear_light_material"
            diffuseColor: "#ffb9ff00"
        }

        DefaultMaterial {
            id: revlight_L_material
            objectName: "revlight_L_material"
            diffuseColor: "#ffffad00"
        }

        DefaultMaterial {
            id: door_lf_0_material
            objectName: "door_lf_0_material"
            diffuseColor: "#ff131313"
        }

        DefaultMaterial {
            id: door_lf_5_material
            objectName: "door_lf_5_material"
            diffuseColor: "#ff0b0b0b"
        }

        DefaultMaterial {
            id: primary_002_material
            objectName: "primary_002_material"
            diffuseColor: "#ff3cff00"
        }

        DefaultMaterial {
            id: primary_004_material
            objectName: "primary_004_material"
            diffuseColor: "#ff3cff00"
        }

        DefaultMaterial {
            id: front_black_0_material
            objectName: "front_black_0_material"
            diffuseColor: "#ffcccccc"
        }

        DefaultMaterial {
            id: light_pantulan_0_material
            objectName: "light_pantulan_0_material"
            diffuseColor: "#ffcccccc"
        }

        DefaultMaterial {
            id: wheels_2_material
            objectName: "wheels_2_material"
        }

        DefaultMaterial {
            id: wheels_0_material
            objectName: "wheels_0_material"
            diffuseColor: "#ff8f9496"
        }

        DefaultMaterial {
            id: wheels_1_material
            objectName: "wheels_1_material"
        }

        DefaultMaterial {
            id: wheels_3_material
            objectName: "wheels_3_material"
            diffuseColor: "#ffcccccc"
        }

        DefaultMaterial {
            id: wheels_4_material
            objectName: "wheels_4_material"
            diffuseColor: "#ffcccccc"
        }

        DefaultMaterial {
            id: wheels_6_material
            objectName: "wheels_6_material"
        }
    }
    states: [
        State {
            name: "State1"
        }
    ]
}
