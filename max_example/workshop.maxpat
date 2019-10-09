{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 79.0, 1563.0, 1048.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "Grid",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 94.5, 218.0, 79.0, 22.0 ],
					"text" : "clientwindow"
				}

			}
, 			{
				"box" : 				{
					"active1" : [ 0.305882, 0.717647, 0.67451, 1.0 ],
					"bubblesize" : 15,
					"emptycolor" : [ 0.32549, 0.345098, 0.372549, 0.99 ],
					"hint" : "Shift-click to store a preset. Click on a stored preset to recall it.",
					"id" : "obj-3",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 12.5, 262.5, 161.0, 64.0 ],
					"pattrstorage" : "vsynth",
					"stored1" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 51.5, 218.0, 36.0, 22.0 ],
					"text" : "write"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 12.5, 218.0, 35.0, 22.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"autorestore" : "workshop.json",
					"id" : "obj-13",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 12.5, 262.5, 149.0, 35.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 854, 172, 1208, 300 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 766, 44, 1220, 302 ]
					}
,
					"text" : "pattrstorage vsynth @greedy 1",
					"varname" : "vsynth"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 12.5, 262.5, 120.0, 22.0 ],
					"text" : "autopattr @greedy 1",
					"varname" : "u138001693"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1155.0, 315.0, 77.0, 22.0 ],
					"text" : "prepend freq"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1155.0, 280.5, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-25",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_wfg_2.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture", "jit_gl_texture" ],
					"patching_rect" : [ 933.0, 356.0, 301.0, 86.0 ],
					"varname" : "vs_wfg_2[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-15",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_wfg_2.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture", "jit_gl_texture" ],
					"patching_rect" : [ 673.0, 216.5, 301.0, 86.0 ],
					"varname" : "vs_wfg_2[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-14",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_colorizer.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 609.0, 451.0, 122.0, 63.0 ],
					"varname" : "vs_colorizer",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-11",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_wfg_2.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture", "jit_gl_texture" ],
					"patching_rect" : [ 609.0, 356.0, 301.0, 86.0 ],
					"varname" : "vs_wfg_2",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 12.5, 31.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 12.5, 61.5, 64.0, 22.0 ],
					"text" : "floating $1"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_modules.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 96.0, 10.5, 424.0, 34.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-2",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_render.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 12.5, 90.0, 76.0, 96.0 ],
					"varname" : "vs_render",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-8",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_output.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 357.0, 744.5, 136.0, 17.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-9",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_wfg_2.maxpat",
					"numinlets" : 4,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture", "jit_gl_texture" ],
					"patching_rect" : [ 357.0, 218.0, 301.0, 86.0 ],
					"varname" : "vs_wfg_2[3]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-10",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_colorizer.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 357.0, 379.0, 122.0, 63.0 ],
					"varname" : "vs_colorizer[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-12",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_mixer_3.maxpat",
					"numinlets" : 4,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 357.0, 579.0, 144.0, 105.0 ],
					"varname" : "vs_mixer_3",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-16",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_preview.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 980.0, 216.0, 128.0, 115.0 ],
					"varname" : "vs_preview[3]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-17",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_preview.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 219.0, 375.0, 128.0, 115.0 ],
					"varname" : "vs_preview[2]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-18",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_offset+rot.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 363.0, 126.0, 201.0, 66.0 ],
					"varname" : "vs_offset+rot",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-20",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_preview.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 566.0, 77.0, 128.0, 115.0 ],
					"varname" : "vs_preview[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-22",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_filter_temp.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture", "jit_gl_texture" ],
					"patching_rect" : [ 270.5, 126.0, 84.0, 62.0 ],
					"varname" : "vs_filter_temp",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-23",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_filter_lp2x.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 215.0, 126.0, 50.0, 60.0 ],
					"varname" : "vs_filter_lp2x",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-26",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "vs_preview.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "jit_gl_texture" ],
					"patching_rect" : [ 1242.0, 356.0, 128.0, 115.0 ],
					"varname" : "vs_preview",
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"order" : 2,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 366.5, 456.0, 584.0, 456.0, 584.0, 316.0, 668.0, 316.0, 668.0, 209.0, 682.5, 209.0 ],
					"order" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"midpoints" : [ 366.5, 455.0, 352.25, 455.0, 352.25, 368.0, 228.5, 368.0 ],
					"order" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 366.5, 694.0, 210.5, 694.0, 210.5, 102.0, 372.5, 102.0 ],
					"order" : 1,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"midpoints" : [ 618.5, 546.0, 408.166666666666686, 546.0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"midpoints" : [ 682.5, 342.75, 712.5, 342.75 ],
					"order" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 682.5, 340.75, 618.5, 340.75 ],
					"order" : 2,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 682.5, 312.5, 977.0, 312.5, 977.0, 209.5, 989.5, 209.5 ],
					"order" : 1,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 372.5, 202.0, 358.25, 202.0, 358.25, 115.0, 280.0, 115.0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.65, 0.65, 0.65, 0.0 ],
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 280.0, 198.0, 266.25, 198.0, 266.25, 115.0, 224.5, 115.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 224.5, 205.0, 196.0, 205.0, 196.0, 66.0, 575.5, 66.0 ],
					"order" : 1,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 224.5, 206.75, 366.5, 206.75 ],
					"order" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"midpoints" : [ 942.5, 452.0, 1239.5, 452.0, 1239.5, 196.5, 776.5, 196.5 ],
					"order" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 942.5, 452.0, 1240.0, 452.0, 1240.0, 345.0, 1251.5, 345.0 ],
					"order" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 3 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.65, 0.65, 0.65, 0.0 ],
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.65, 0.65, 0.65, 0.0 ],
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-10::obj-31" : [ "clrizer_hue", "hue", 0 ],
			"obj-18::obj-6" : [ "offrot_x", "x", 0 ],
			"obj-8::obj-1" : [ "toggle[1]", "toggle", 0 ],
			"obj-11::obj-10" : [ "wfg2_pm[1]", "pm", 0 ],
			"obj-15::obj-139" : [ "wfg2_sync_lock[2]", "sync_pos", 0 ],
			"obj-15::obj-10" : [ "wfg2_pm[2]", "pm", 0 ],
			"obj-11::obj-24" : [ "wfg2_pw[1]", "pw", 0 ],
			"obj-9::obj-25" : [ "wfg2_fm", "fm", 0 ],
			"obj-14::obj-31" : [ "clrizer_hue[1]", "hue", 0 ],
			"obj-25::obj-6" : [ "wfg2_fm_range[3]", "scale_freq_fm", 0 ],
			"obj-9::obj-24" : [ "wfg2_pw", "pw", 0 ],
			"obj-2::obj-23" : [ "dim_y", "dim_y", 0 ],
			"obj-1::obj-16" : [ "live.menu[2]", "live.menu", 0 ],
			"obj-25::obj-13" : [ "wfg2_freq_range[3]", "scale_freq", 0 ],
			"obj-1::obj-56" : [ "live.menu[6]", "live.menu", 0 ],
			"obj-11::obj-13" : [ "wfg2_freq_range[1]", "scale_freq", 0 ],
			"obj-9::obj-27" : [ "wfg2_wf", "waveform", 0 ],
			"obj-18::obj-67" : [ "offrot_anglemenu", "angle", 0 ],
			"obj-14::obj-60" : [ "clrizer_color[1]", "color", 0 ],
			"obj-20::obj-37" : [ "preview_size[1]", "umenu", 0 ],
			"obj-18::obj-11" : [ "offrot_y_range", "scale_freq_fm", 0 ],
			"obj-15::obj-12" : [ "wfg2_sync_dir[2]", "sync_invert", 0 ],
			"obj-17::obj-37" : [ "preview_size[2]", "umenu", 0 ],
			"obj-12::obj-2" : [ "mixer3_in_1", "IN1", 0 ],
			"obj-15::obj-24" : [ "wfg2_pw[2]", "pw", 0 ],
			"obj-11::obj-26" : [ "wfg2_freq[1]", "freq", 0 ],
			"obj-25::obj-24" : [ "wfg2_pw[3]", "pw", 0 ],
			"obj-22::obj-43" : [ "temp_freq", "freq", 0 ],
			"obj-9::obj-13" : [ "wfg2_freq_range", "scale_freq", 0 ],
			"obj-25::obj-139" : [ "wfg2_sync_lock[3]", "sync_pos", 0 ],
			"obj-11::obj-27" : [ "wfg2_wf[1]", "waveform", 0 ],
			"obj-9::obj-139" : [ "wfg2_sync_lock", "sync_pos", 0 ],
			"obj-11::obj-130" : [ "wfg2_time[1]", "time", 0 ],
			"obj-18::obj-14" : [ "offrot_x_range", "scale_freq", 0 ],
			"obj-15::obj-6" : [ "wfg2_fm_range[2]", "scale_freq_fm", 0 ],
			"obj-15::obj-13" : [ "wfg2_freq_range[2]", "scale_freq", 0 ],
			"obj-16::obj-37" : [ "preview_size[3]", "umenu", 0 ],
			"obj-12::obj-4" : [ "mixer3_in_3", "IN3", 0 ],
			"obj-23::obj-51" : [ "lpf_freq", "freq", 0 ],
			"obj-25::obj-27" : [ "wfg2_wf[3]", "waveform", 0 ],
			"obj-9::obj-6" : [ "wfg2_fm_range", "scale_freq_fm", 0 ],
			"obj-25::obj-26" : [ "wfg2_freq[3]", "freq", 0 ],
			"obj-25::obj-10" : [ "wfg2_pm[3]", "pm", 0 ],
			"obj-9::obj-23" : [ "wfg2_pwm", "pwm", 0 ],
			"obj-2::obj-18" : [ "on_off", "on_off", 0 ],
			"obj-11::obj-139" : [ "wfg2_sync_lock[1]", "sync_pos", 0 ],
			"obj-10::obj-60" : [ "clrizer_color", "color", 0 ],
			"obj-18::obj-96" : [ "offrot_boundmode", "live.menu", 0 ],
			"obj-8::obj-10" : [ "toggle[2]", "toggle[2]", 0 ],
			"obj-18::obj-35" : [ "offrot_zoom", "zoom", 0 ],
			"obj-15::obj-23" : [ "wfg2_pwm[2]", "pwm", 0 ],
			"obj-12::obj-3" : [ "mixer3_in_2", "IN2", 0 ],
			"obj-1::obj-36" : [ "live.menu[3]", "live.menu", 0 ],
			"obj-11::obj-25" : [ "wfg2_fm[1]", "fm", 0 ],
			"obj-15::obj-27" : [ "wfg2_wf[2]", "waveform", 0 ],
			"obj-25::obj-12" : [ "wfg2_sync_dir[3]", "sync_invert", 0 ],
			"obj-9::obj-10" : [ "wfg2_pm", "pm", 0 ],
			"obj-2::obj-19" : [ "dim_x", "dim_x", 0 ],
			"obj-1::obj-14" : [ "live.menu[1]", "live.menu", 0 ],
			"obj-25::obj-25" : [ "wfg2_fm[3]", "fm", 0 ],
			"obj-1::obj-52" : [ "live.menu[4]", "live.menu", 0 ],
			"obj-11::obj-12" : [ "wfg2_sync_dir[1]", "sync_invert", 0 ],
			"obj-26::obj-37" : [ "preview_size", "umenu", 0 ],
			"obj-9::obj-130" : [ "wfg2_time", "time", 0 ],
			"obj-18::obj-19" : [ "offrot_angle", "angle", 0 ],
			"obj-18::obj-8" : [ "offrot_y", "y", 0 ],
			"obj-1::obj-53" : [ "live.menu[5]", "live.menu", 0 ],
			"obj-15::obj-25" : [ "wfg2_fm[2]", "fm", 0 ],
			"obj-1::obj-2" : [ "live.menu", "live.menu", 0 ],
			"obj-15::obj-130" : [ "wfg2_time[2]", "time", 0 ],
			"obj-12::obj-18" : [ "mixer3_master", "MASTER", 0 ],
			"obj-25::obj-130" : [ "wfg2_time[3]", "time", 0 ],
			"obj-9::obj-26" : [ "wfg2_freq", "freq", 0 ],
			"obj-15::obj-26" : [ "wfg2_freq[2]", "freq", 0 ],
			"obj-25::obj-23" : [ "wfg2_pwm[3]", "pwm", 0 ],
			"obj-11::obj-6" : [ "wfg2_fm_range[1]", "scale_freq_fm", 0 ],
			"obj-9::obj-12" : [ "wfg2_sync_dir", "sync_invert", 0 ],
			"obj-11::obj-23" : [ "wfg2_pwm[1]", "pwm", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-18::obj-6" : 				{
					"parameter_range" : [ -0.1, 0.1 ]
				}
,
				"obj-11::obj-10" : 				{
					"parameter_longname" : "wfg2_pm[1]"
				}
,
				"obj-15::obj-139" : 				{
					"parameter_longname" : "wfg2_sync_lock[2]"
				}
,
				"obj-15::obj-10" : 				{
					"parameter_longname" : "wfg2_pm[2]"
				}
,
				"obj-11::obj-24" : 				{
					"parameter_longname" : "wfg2_pw[1]"
				}
,
				"obj-9::obj-25" : 				{
					"parameter_range" : [ -1.0, 1.0 ]
				}
,
				"obj-14::obj-31" : 				{
					"parameter_longname" : "clrizer_hue[1]"
				}
,
				"obj-25::obj-6" : 				{
					"parameter_longname" : "wfg2_fm_range[3]"
				}
,
				"obj-25::obj-13" : 				{
					"parameter_longname" : "wfg2_freq_range[3]"
				}
,
				"obj-11::obj-13" : 				{
					"parameter_longname" : "wfg2_freq_range[1]"
				}
,
				"obj-20::obj-37" : 				{
					"parameter_longname" : "preview_size[1]"
				}
,
				"obj-17::obj-37" : 				{
					"parameter_longname" : "preview_size[2]"
				}
,
				"obj-15::obj-24" : 				{
					"parameter_longname" : "wfg2_pw[2]"
				}
,
				"obj-11::obj-26" : 				{
					"parameter_range" : [ 0.0, 1000.0 ],
					"parameter_longname" : "wfg2_freq[1]"
				}
,
				"obj-25::obj-24" : 				{
					"parameter_longname" : "wfg2_pw[3]"
				}
,
				"obj-25::obj-139" : 				{
					"parameter_longname" : "wfg2_sync_lock[3]"
				}
,
				"obj-11::obj-27" : 				{
					"parameter_longname" : "wfg2_wf[1]"
				}
,
				"obj-11::obj-130" : 				{
					"parameter_longname" : "wfg2_time[1]"
				}
,
				"obj-15::obj-6" : 				{
					"parameter_longname" : "wfg2_fm_range[2]"
				}
,
				"obj-15::obj-13" : 				{
					"parameter_longname" : "wfg2_freq_range[2]"
				}
,
				"obj-16::obj-37" : 				{
					"parameter_longname" : "preview_size[3]"
				}
,
				"obj-25::obj-27" : 				{
					"parameter_longname" : "wfg2_wf[3]"
				}
,
				"obj-25::obj-26" : 				{
					"parameter_longname" : "wfg2_freq[3]",
					"parameter_range" : [ 0.0, 1000.0 ]
				}
,
				"obj-25::obj-10" : 				{
					"parameter_longname" : "wfg2_pm[3]"
				}
,
				"obj-11::obj-139" : 				{
					"parameter_longname" : "wfg2_sync_lock[1]"
				}
,
				"obj-15::obj-23" : 				{
					"parameter_longname" : "wfg2_pwm[2]"
				}
,
				"obj-11::obj-25" : 				{
					"parameter_range" : [ -1.0, 1.0 ],
					"parameter_longname" : "wfg2_fm[1]"
				}
,
				"obj-15::obj-27" : 				{
					"parameter_longname" : "wfg2_wf[2]"
				}
,
				"obj-25::obj-25" : 				{
					"parameter_longname" : "wfg2_fm[3]",
					"parameter_range" : [ -1.0, 1.0 ]
				}
,
				"obj-18::obj-19" : 				{
					"parameter_range" : [ -3.14, 3.14 ]
				}
,
				"obj-18::obj-8" : 				{
					"parameter_range" : [ -0.1, 0.1 ]
				}
,
				"obj-15::obj-25" : 				{
					"parameter_longname" : "wfg2_fm[2]",
					"parameter_range" : [ -1.0, 1.0 ]
				}
,
				"obj-15::obj-130" : 				{
					"parameter_longname" : "wfg2_time[2]"
				}
,
				"obj-25::obj-130" : 				{
					"parameter_longname" : "wfg2_time[3]"
				}
,
				"obj-9::obj-26" : 				{
					"parameter_range" : [ 0.0, 1000.0 ]
				}
,
				"obj-15::obj-26" : 				{
					"parameter_longname" : "wfg2_freq[2]",
					"parameter_range" : [ 0.0, 1000.0 ]
				}
,
				"obj-25::obj-23" : 				{
					"parameter_longname" : "wfg2_pwm[3]"
				}
,
				"obj-11::obj-6" : 				{
					"parameter_longname" : "wfg2_fm_range[1]"
				}
,
				"obj-11::obj-23" : 				{
					"parameter_longname" : "wfg2_pwm[1]"
				}

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "vs_preview.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../../Packages/Vsynth/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_presize.js",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/javascript",
				"patcherrelativepath" : "../../Packages/Vsynth/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "vs_filter_lp2x.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../../Packages/Vsynth/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_filter_temp.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../../Packages/Vsynth/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "highcut.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "lowcut.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "vs_offset+rot.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../../Packages/Vsynth/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_mixer_3.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../../Packages/Vsynth/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_colorizer.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../../Packages/Vsynth/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_wfg_2.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../../Packages/Vsynth/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "timediv.txt",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../../Packages/Vsynth/patchers",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "sine.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "saw.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "down.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "up.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "square.svg",
				"bootpath" : "C74:/media/max/picts/m4l-picts",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "noise2.svg",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/media",
				"patcherrelativepath" : "../../Packages/Vsynth/media",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "vs_output.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../../Packages/Vsynth/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_render.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../../Packages/Vsynth/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "vs_modules.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/patchers",
				"patcherrelativepath" : "../../Packages/Vsynth/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "addmod.js",
				"bootpath" : "~/Documents/Max 8/Packages/Vsynth/javascript",
				"patcherrelativepath" : "../../Packages/Vsynth/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "workshop.json",
				"bootpath" : "~/Documents/Max 8/Performance/2019_10_05_Max_Workshop",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "minimal",
				"default" : 				{
					"accentcolor" : [ 0.32549, 0.345098, 0.372549, 1.0 ],
					"elementcolor" : [ 0.32549, 0.345098, 0.372549, 0.44 ],
					"bgcolor" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
					"selectioncolor" : [ 0.862745, 0.741176, 0.137255, 0.7 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patchlinecolor" : [ 0.65, 0.65, 0.65, 0.9 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.65098, 0.65098, 0.65098, 1.0 ],
						"color1" : [ 0.878431, 0.878431, 0.858824, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.99,
						"autogradient" : 0
					}
,
					"color" : [ 0.345098, 0.513725, 0.572549, 0.78 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
