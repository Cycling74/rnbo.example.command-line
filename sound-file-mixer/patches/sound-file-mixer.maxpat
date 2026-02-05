{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 100.0, 546.0, 449.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [ "float", "int" ],
                    "patching_rect": [ 74.0, 87.0, 69.0, 5.0 ],
                    "slidercolor": [ 0.079348079365577, 0.07934804057877, 0.079348050547289, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 58.0, 120.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 110.0, 211.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 164.0, 56.0, 150.0, 47.0 ],
                    "text": "<- Dumb example, just mixes together the first second of two sound files"
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "id": "obj-1",
                    "inletInfo": {
                        "IOInfo": []
                    },
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "out1",
                                "comment": ""
                            }
                        ]
                    },
                    "outlettype": [ "signal", "list" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 1,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "rnbo",
                        "rect": [ 59.0, 119.0, 1000.0, 780.0 ],
                        "default_fontname": "Lato",
                        "title": "untitled",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 39.0, 338.0, 39.0, 23.0 ],
                                    "rnbo_classname": "*~",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "*~_obj-13",
                                    "text": "*~ 0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 39.0, 403.0, 43.0, 23.0 ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "out~_obj-12",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 1",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 39.0, 222.0, 75.0, 23.0 ],
                                    "rnbo_classname": "mstosamps~",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "mstosamps~_obj-10",
                                    "text": "mstosamps~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 39.0, 184.0, 50.0, 23.0 ],
                                    "rnbo_classname": "*~",
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "*~_obj-9",
                                    "text": "*~ 1000"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 39.0, 145.0, 61.0, 23.0 ],
                                    "rnbo_classname": "phasor~",
                                    "rnbo_extra_attributes": {
                                        "lock": 0.0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "phasor~_obj-8",
                                    "text": "phasor~ 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 125.0, 275.0, 67.0, 23.0 ],
                                    "rnbo_classname": "peek~",
                                    "rnbo_extra_attributes": {
                                        "boundmode": "ignore",
                                        "interp": "none",
                                        "channels": 1.0,
                                        "indexmode": "samples",
                                        "channelmode": "ignore"
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "peek~_obj-7",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "index": {
                                                "attrOrProp": 1,
                                                "digest": "Index to sample",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "offset": {
                                                "attrOrProp": 1,
                                                "digest": "Channel offset (zero-based)",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "Sampled value.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "outindex": {
                                                "attrOrProp": 1,
                                                "digest": "Index (in samples).",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "buffer": {
                                                "attrOrProp": 1,
                                                "digest": "If multiple buffer names are declared to be used, this sets the currently active buffer using an index [0 based].",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "buffername": {
                                                "attrOrProp": 2,
                                                "digest": "Buffer to use",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "mandatory": 1
                                            },
                                            "channels": {
                                                "attrOrProp": 2,
                                                "digest": "Number of channels",
                                                "defaultarg": 2,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "1"
                                            },
                                            "boundmode": {
                                                "attrOrProp": 2,
                                                "digest": "Set the bound mode for input sample values",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "fold", "clamp", "clip", "wrap", "mirror", "ignore" ],
                                                "type": "enum",
                                                "defaultValue": "ignore"
                                            },
                                            "channelmode": {
                                                "attrOrProp": 2,
                                                "digest": "Set the bound mode for input channel values",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "fold", "clamp", "clip", "wrap", "mirror", "ignore" ],
                                                "type": "enum",
                                                "defaultValue": "ignore"
                                            },
                                            "indexmode": {
                                                "attrOrProp": 2,
                                                "digest": "Set the lookup mode",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "phase", "samples", "signal", "lookup", "wave" ],
                                                "type": "enum",
                                                "defaultValue": "samples"
                                            },
                                            "interp": {
                                                "attrOrProp": 2,
                                                "digest": "Set interpolation type",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "linear", "cubic", "spline", "cosine", "step", "none", "fastcubic", "spline6" ],
                                                "type": "enum",
                                                "defaultValue": "none"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "index",
                                                "type": "auto",
                                                "digest": "Index to sample",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "offset",
                                                "type": "auto",
                                                "digest": "Channel offset (zero-based)",
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "Sampled value.",
                                                "docked": 0
                                            },
                                            {
                                                "name": "outindex",
                                                "type": "signal",
                                                "digest": "Index (in samples).",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "peek~",
                                        "aliasOf": {
                                            "name": "peek~"
                                        },
                                        "classname": "peek~",
                                        "operator": 0,
                                        "versionId": -2122242524,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "peek~ file2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "signal" ],
                                    "patching_rect": [ 39.0, 275.0, 67.0, 23.0 ],
                                    "rnbo_classname": "peek~",
                                    "rnbo_extra_attributes": {
                                        "boundmode": "ignore",
                                        "interp": "none",
                                        "channels": 1.0,
                                        "indexmode": "samples",
                                        "channelmode": "ignore"
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "peek~_obj-6",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "index": {
                                                "attrOrProp": 1,
                                                "digest": "Index to sample",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "offset": {
                                                "attrOrProp": 1,
                                                "digest": "Channel offset (zero-based)",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "Sampled value.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "outindex": {
                                                "attrOrProp": 1,
                                                "digest": "Index (in samples).",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "buffer": {
                                                "attrOrProp": 1,
                                                "digest": "If multiple buffer names are declared to be used, this sets the currently active buffer using an index [0 based].",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "buffername": {
                                                "attrOrProp": 2,
                                                "digest": "Buffer to use",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "mandatory": 1
                                            },
                                            "channels": {
                                                "attrOrProp": 2,
                                                "digest": "Number of channels",
                                                "defaultarg": 2,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "1"
                                            },
                                            "boundmode": {
                                                "attrOrProp": 2,
                                                "digest": "Set the bound mode for input sample values",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "fold", "clamp", "clip", "wrap", "mirror", "ignore" ],
                                                "type": "enum",
                                                "defaultValue": "ignore"
                                            },
                                            "channelmode": {
                                                "attrOrProp": 2,
                                                "digest": "Set the bound mode for input channel values",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "fold", "clamp", "clip", "wrap", "mirror", "ignore" ],
                                                "type": "enum",
                                                "defaultValue": "ignore"
                                            },
                                            "indexmode": {
                                                "attrOrProp": 2,
                                                "digest": "Set the lookup mode",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "phase", "samples", "signal", "lookup", "wave" ],
                                                "type": "enum",
                                                "defaultValue": "samples"
                                            },
                                            "interp": {
                                                "attrOrProp": 2,
                                                "digest": "Set interpolation type",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "enum": [ "linear", "cubic", "spline", "cosine", "step", "none", "fastcubic", "spline6" ],
                                                "type": "enum",
                                                "defaultValue": "none"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "index",
                                                "type": "auto",
                                                "digest": "Index to sample",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "offset",
                                                "type": "auto",
                                                "digest": "Channel offset (zero-based)",
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "Sampled value.",
                                                "docked": 0
                                            },
                                            {
                                                "name": "outindex",
                                                "type": "signal",
                                                "digest": "Index (in samples).",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "peek~",
                                        "aliasOf": {
                                            "name": "peek~"
                                        },
                                        "classname": "peek~",
                                        "operator": 0,
                                        "versionId": -2122242524,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "peek~ file1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 39.0, 75.0, 151.0, 23.0 ],
                                    "rnbo_classname": "buffer~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "fill": "",
                                        "preset": 0,
                                        "samplerate": 0.0,
                                        "type": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "buffer~_obj-2",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "info": {
                                                "attrOrProp": 1,
                                                "digest": "Bang to report buffer information.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "bang"
                                            },
                                            "sizeout": {
                                                "attrOrProp": 1,
                                                "digest": "Size in Samples",
                                                "defaultarg": 2,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "chanout": {
                                                "attrOrProp": 1,
                                                "digest": "Number of Channels",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "srout": {
                                                "attrOrProp": 1,
                                                "digest": "Sample rate",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "size": {
                                                "attrOrProp": 1,
                                                "digest": "Size in Samples. Take care when setting, allocation might block audio processing.",
                                                "defaultarg": 2,
                                                "isalias": 0,
                                                "aliases": [ "samples" ],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "samples": {
                                                "attrOrProp": 1,
                                                "digest": "Size in Samples. Take care when setting, allocation might block audio processing.",
                                                "defaultarg": 2,
                                                "isalias": 1,
                                                "aliasOf": "size",
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "sizems": {
                                                "attrOrProp": 1,
                                                "digest": "Size in Milliseconds. Take care when setting, allocation might block audio processing.",
                                                "isalias": 0,
                                                "aliases": [ "ms" ],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "ms": {
                                                "attrOrProp": 1,
                                                "digest": "Size in Milliseconds. Take care when setting, allocation might block audio processing.",
                                                "isalias": 1,
                                                "aliasOf": "sizems",
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "clear": {
                                                "attrOrProp": 1,
                                                "digest": "Clear the contents of the buffer",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bang"
                                            },
                                            "normalize": {
                                                "attrOrProp": 1,
                                                "digest": "Find Maximum and normalize to the value given.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0.995"
                                            },
                                            "channels": {
                                                "attrOrProp": 1,
                                                "digest": "Change channel count. Take care when setting, allocation might block audio processing.",
                                                "defaultarg": 3,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "1"
                                            },
                                            "name": {
                                                "attrOrProp": 2,
                                                "digest": "Name of the data buffer",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "mandatory": 1
                                            },
                                            "file": {
                                                "attrOrProp": 2,
                                                "digest": "File name/path or URL to load into buffer.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "type": {
                                                "attrOrProp": 2,
                                                "digest": "Type of Data (float32, float64)",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "samplerate": {
                                                "attrOrProp": 2,
                                                "digest": "Sample rate",
                                                "defaultarg": 4,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "fill": {
                                                "attrOrProp": 2,
                                                "digest": "Fill expression, this could be a value, or a simple function like sin(x), where x will run from 0 to 1 to fill the buffer.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "external": {
                                                "attrOrProp": 2,
                                                "digest": "Await data from the outside world.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "preset": {
                                                "attrOrProp": 2,
                                                "digest": "Add this value to the preset.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "false",
                                                "label": "Include In Preset",
                                                "category": "Preset"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "info",
                                                "type": "bang",
                                                "digest": "Bang to report buffer information.",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "sizeout",
                                                "type": "number",
                                                "digest": "Size in Samples",
                                                "defaultarg": 2,
                                                "docked": 0
                                            },
                                            {
                                                "name": "chanout",
                                                "type": "number",
                                                "digest": "Number of Channels",
                                                "docked": 0
                                            },
                                            {
                                                "name": "srout",
                                                "type": "number",
                                                "digest": "Sample rate",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "buffer~",
                                        "aliasOf": "data",
                                        "classname": "buffer~",
                                        "operator": 0,
                                        "versionId": 405570163,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "buffer~ file2 @file jongly.aif"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 39.0, 41.0, 151.0, 23.0 ],
                                    "rnbo_classname": "buffer~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "fill": "",
                                        "preset": 0,
                                        "samplerate": 0.0,
                                        "type": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "buffer~_obj-1",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "info": {
                                                "attrOrProp": 1,
                                                "digest": "Bang to report buffer information.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "bang"
                                            },
                                            "sizeout": {
                                                "attrOrProp": 1,
                                                "digest": "Size in Samples",
                                                "defaultarg": 2,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "chanout": {
                                                "attrOrProp": 1,
                                                "digest": "Number of Channels",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "srout": {
                                                "attrOrProp": 1,
                                                "digest": "Sample rate",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "size": {
                                                "attrOrProp": 1,
                                                "digest": "Size in Samples. Take care when setting, allocation might block audio processing.",
                                                "defaultarg": 2,
                                                "isalias": 0,
                                                "aliases": [ "samples" ],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "samples": {
                                                "attrOrProp": 1,
                                                "digest": "Size in Samples. Take care when setting, allocation might block audio processing.",
                                                "defaultarg": 2,
                                                "isalias": 1,
                                                "aliasOf": "size",
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "sizems": {
                                                "attrOrProp": 1,
                                                "digest": "Size in Milliseconds. Take care when setting, allocation might block audio processing.",
                                                "isalias": 0,
                                                "aliases": [ "ms" ],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "ms": {
                                                "attrOrProp": 1,
                                                "digest": "Size in Milliseconds. Take care when setting, allocation might block audio processing.",
                                                "isalias": 1,
                                                "aliasOf": "sizems",
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "clear": {
                                                "attrOrProp": 1,
                                                "digest": "Clear the contents of the buffer",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bang"
                                            },
                                            "normalize": {
                                                "attrOrProp": 1,
                                                "digest": "Find Maximum and normalize to the value given.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0.995"
                                            },
                                            "channels": {
                                                "attrOrProp": 1,
                                                "digest": "Change channel count. Take care when setting, allocation might block audio processing.",
                                                "defaultarg": 3,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "1"
                                            },
                                            "name": {
                                                "attrOrProp": 2,
                                                "digest": "Name of the data buffer",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "mandatory": 1
                                            },
                                            "file": {
                                                "attrOrProp": 2,
                                                "digest": "File name/path or URL to load into buffer.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "type": {
                                                "attrOrProp": 2,
                                                "digest": "Type of Data (float32, float64)",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "samplerate": {
                                                "attrOrProp": 2,
                                                "digest": "Sample rate",
                                                "defaultarg": 4,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "defaultValue": "0"
                                            },
                                            "fill": {
                                                "attrOrProp": 2,
                                                "digest": "Fill expression, this could be a value, or a simple function like sin(x), where x will run from 0 to 1 to fill the buffer.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "external": {
                                                "attrOrProp": 2,
                                                "digest": "Await data from the outside world.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "preset": {
                                                "attrOrProp": 2,
                                                "digest": "Add this value to the preset.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "false",
                                                "label": "Include In Preset",
                                                "category": "Preset"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "info",
                                                "type": "bang",
                                                "digest": "Bang to report buffer information.",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "sizeout",
                                                "type": "number",
                                                "digest": "Size in Samples",
                                                "defaultarg": 2,
                                                "docked": 0
                                            },
                                            {
                                                "name": "chanout",
                                                "type": "number",
                                                "digest": "Number of Channels",
                                                "docked": 0
                                            },
                                            {
                                                "name": "srout",
                                                "type": "number",
                                                "digest": "Sample rate",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "buffer~",
                                        "aliasOf": "data",
                                        "classname": "buffer~",
                                        "operator": 0,
                                        "versionId": 405570163,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "buffer~ file1 @file anton.aif"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "order": 1,
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 0,
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 58.0, 56.0, 85.0, 22.0 ],
                    "rnboattrcache": {                    },
                    "rnboversion": "1.4.3-control.2",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "rnbo~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "rnbo~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "optimization": "O1",
                        "parameter_enable": 1,
                        "uuid": "b48d6f57-02b2-11f1-af57-a2db61054e2f"
                    },
                    "snapshot": {
                        "filetype": "C74Snapshot",
                        "version": 2,
                        "minorversion": 0,
                        "name": "snapshotlist",
                        "origin": "rnbo~",
                        "type": "list",
                        "subtype": "Undefined",
                        "embed": 1,
                        "snapshot": {
                            "__presetid": "b48d6f57-02b2-11f1-af57-a2db61054e2f"
                        },
                        "snapshotlist": {
                            "current_snapshot": 0,
                            "entries": [
                                {
                                    "filetype": "C74Snapshot",
                                    "version": 2,
                                    "minorversion": 0,
                                    "name": "untitled",
                                    "origin": "b48d6f57-02b2-11f1-af57-a2db61054e2f",
                                    "type": "rnbo",
                                    "subtype": "",
                                    "embed": 1,
                                    "snapshot": {
                                        "__presetid": "b48d6f57-02b2-11f1-af57-a2db61054e2f"
                                    },
                                    "fileref": {
                                        "name": "untitled",
                                        "filename": "untitled_20260205_1.maxsnap",
                                        "filepath": "~/Documents/Max 9/Snapshots",
                                        "filepos": -1,
                                        "snapshotfileid": "7d64be576c36f52b32a07fe062cb49ea"
                                    }
                                }
                            ]
                        }
                    },
                    "text": "rnbo~ sfmixer",
                    "varname": "rnbo~"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "order": 0,
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 1 ],
                    "order": 0,
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 1,
                    "source": [ "obj-6", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-1": [ "rnbo~", "rnbo~", 0 ],
            "obj-6": [ "live.gain~", "live.gain~", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}