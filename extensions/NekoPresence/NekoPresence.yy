{
  "resourceType": "GMExtension",
  "resourceVersion": "1.2",
  "name": "NekoPresence",
  "androidactivityinject": "",
  "androidclassname": "",
  "androidcodeinjection": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidPermissions": [],
  "androidProps": false,
  "androidsourcedir": "",
  "author": "",
  "classname": "",
  "copyToTargets": 194,
  "date": "2020-11-11T19:13:31.2571444+09:00",
  "description": "",
  "exportToGame": true,
  "extensionVersion": "1.3.2",
  "files": [
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[],"copyToTargets":194,"filename":"NekoPresence.gml","final":"","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"np_get_avatar_url","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"np_get_avatar_url","help":"np_get_avatar_url(user_id,avatar_hash)","hidden":false,"kind":2,"returnType":1,},
      ],"init":"","kind":2,"order":[
        {"name":"np_get_avatar_url","path":"extensions/NekoPresence/NekoPresence.yy",},
      ],"origname":"","ProxyFiles":[],"uncompress":false,"usesRunnerInterface":false,},
    {"resourceType":"GMExtensionFile","resourceVersion":"1.0","name":"","constants":[
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"np_steam_app_id","hidden":false,"value":"string(steam_get_app_id())",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"np_steam_app_id_empty","hidden":false,"value":"\"0\"",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"DISCORD_REPLY_NO","hidden":false,"value":"0",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"DISCORD_REPLY_YES","hidden":false,"value":"1",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"DISCORD_REPLY_IGNORE","hidden":false,"value":"2",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"DISCORD_PARTY_PRIVACY_PRIVATE","hidden":false,"value":"0",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"DISCORD_PARTY_PRIVACY_PUBLIC","hidden":false,"value":"1",},
        {"resourceType":"GMExtensionConstant","resourceVersion":"1.0","name":"DISCORD_MAX_BUTTONS","hidden":false,"value":"2",},
      ],"copyToTargets":194,"filename":"NekoPresence.dll","final":"__np_shutdown","functions":[
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__np_initdll","argCount":0,"args":[],"documentation":"","externalName":"np_initdll","help":"__np_initdll()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__np_shutdown","argCount":0,"args":[],"documentation":"","externalName":"np_shutdown","help":"__np_shutdown()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"np_initdiscord","argCount":0,"args":[
            1,
            2,
            1,
          ],"documentation":"","externalName":"np_initdiscord","help":"np_initdiscord(client_id,autoRegister,steam_id)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"np_setpresence","argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"documentation":"","externalName":"np_setpresence","help":"np_setpresence(state,details,large_image_key,small_image_key)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"np_update","argCount":0,"args":[],"documentation":"","externalName":"np_update","help":"np_update()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"__np_registercallbacks_do_not_call","argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"documentation":"","externalName":"RegisterCallbacks","help":"__np_registercallbacks_do_not_call(arg1,arg2,arg3,arg4)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"np_setpresence_more","argCount":0,"args":[
            1,
            1,
            2,
          ],"documentation":"","externalName":"np_setpresence_more","help":"np_setpresence_more(small_image_text,large_image_text,instance)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"np_clearpresence","argCount":0,"args":[],"documentation":"","externalName":"np_clearpresence","help":"np_clearpresence()","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"np_registergame","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"np_registergame","help":"np_registergame(client_id,command)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"np_registergame_steam","argCount":0,"args":[
            1,
            1,
          ],"documentation":"","externalName":"np_registergame_steam","help":"np_registergame_steam(client_id,steam_app_id)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"np_setpresence_secrets","argCount":0,"args":[
            1,
            1,
            1,
          ],"documentation":"","externalName":"np_setpresence_secrets","help":"np_setpresence_secrets(matchSecret,spectateSecret,joinSecret)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"np_setpresence_partyparams","argCount":0,"args":[
            2,
            2,
            1,
            2,
          ],"documentation":"","externalName":"np_setpresence_partyparams","help":"np_setpresence_partyparams(partySize,partyMax,partyId,partyPrivacy)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"np_respond","argCount":0,"args":[
            1,
            2,
          ],"documentation":"","externalName":"np_respond","help":"np_respond(user_id,reply)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"np_setpresence_timestamps","argCount":0,"args":[
            2,
            2,
            2,
          ],"documentation":"","externalName":"np_setpresence_timestamps","help":"np_setpresence_timestamps(startTimestamp,endTimestamp,is_unix)","hidden":false,"kind":1,"returnType":2,},
        {"resourceType":"GMExtensionFunction","resourceVersion":"1.0","name":"np_setpresence_buttons","argCount":0,"args":[
            2,
            1,
            1,
          ],"documentation":"","externalName":"np_setpresence_buttons","help":"np_setpresence_buttons(btnId,btnName,btnUrl)","hidden":false,"kind":1,"returnType":2,},
      ],"init":"__np_initdll","kind":1,"order":[
        {"name":"__np_initdll","path":"extensions/NekoPresence/NekoPresence.yy",},
        {"name":"__np_shutdown","path":"extensions/NekoPresence/NekoPresence.yy",},
        {"name":"np_initdiscord","path":"extensions/NekoPresence/NekoPresence.yy",},
        {"name":"np_setpresence","path":"extensions/NekoPresence/NekoPresence.yy",},
        {"name":"np_update","path":"extensions/NekoPresence/NekoPresence.yy",},
        {"name":"__np_registercallbacks_do_not_call","path":"extensions/NekoPresence/NekoPresence.yy",},
        {"name":"np_setpresence_more","path":"extensions/NekoPresence/NekoPresence.yy",},
        {"name":"np_clearpresence","path":"extensions/NekoPresence/NekoPresence.yy",},
        {"name":"np_registergame","path":"extensions/NekoPresence/NekoPresence.yy",},
        {"name":"np_registergame_steam","path":"extensions/NekoPresence/NekoPresence.yy",},
        {"name":"np_setpresence_secrets","path":"extensions/NekoPresence/NekoPresence.yy",},
        {"name":"np_setpresence_partyparams","path":"extensions/NekoPresence/NekoPresence.yy",},
        {"name":"np_respond","path":"extensions/NekoPresence/NekoPresence.yy",},
        {"name":"np_setpresence_timestamps","path":"extensions/NekoPresence/NekoPresence.yy",},
        {"name":"np_setpresence_buttons","path":"extensions/NekoPresence/NekoPresence.yy",},
      ],"origname":"","ProxyFiles":[
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"libnekopresence.so","TargetMask":7,},
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"NekoPresence_x64.dll","TargetMask":6,},
        {"resourceType":"GMProxyFile","resourceVersion":"1.0","name":"libNekoPresence.dylib","TargetMask":1,},
      ],"uncompress":false,"usesRunnerInterface":false,},
  ],
  "gradleinject": "",
  "hasConvertedCodeInjection": true,
  "helpfile": "",
  "IncludedResources": [],
  "installdir": "",
  "iosCocoaPodDependencies": "",
  "iosCocoaPods": "",
  "ioscodeinjection": "",
  "iosdelegatename": "",
  "iosplistinject": "",
  "iosProps": false,
  "iosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "license": "",
  "maccompilerflags": "",
  "maclinkerflags": "",
  "macsourcedir": "",
  "options": [],
  "optionsFile": "options.json",
  "packageId": "",
  "parent": {
    "name": "DiscordPresence",
    "path": "folders/확장 기능/DiscordPresence.yy",
  },
  "productId": "",
  "sourcedir": "",
  "supportedTargets": -1,
  "tvosclassname": null,
  "tvosCocoaPodDependencies": "",
  "tvosCocoaPods": "",
  "tvoscodeinjection": "",
  "tvosdelegatename": null,
  "tvosmaccompilerflags": "",
  "tvosmaclinkerflags": "",
  "tvosplistinject": "",
  "tvosProps": false,
  "tvosSystemFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
}