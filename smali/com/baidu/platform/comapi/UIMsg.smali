.class public Lcom/baidu/platform/comapi/UIMsg;
.super Ljava/lang/Object;
.source "UIMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platform/comapi/UIMsg$NavMapMessage;,
        Lcom/baidu/platform/comapi/UIMsg$WalkNaviMsg;,
        Lcom/baidu/platform/comapi/UIMsg$UIGPSStatus;,
        Lcom/baidu/platform/comapi/UIMsg$UIHttpType;,
        Lcom/baidu/platform/comapi/UIMsg$UIOffType;,
        Lcom/baidu/platform/comapi/UIMsg$ResultType;,
        Lcom/baidu/platform/comapi/UIMsg$MsgDefine;,
        Lcom/baidu/platform/comapi/UIMsg$ErrorNo;,
        Lcom/baidu/platform/comapi/UIMsg$KFunc;,
        Lcom/baidu/platform/comapi/UIMsg$KEvent;
    }
.end annotation


# static fields
.field public static final MSG_MAP_PANO_DATA:I = 0x258

.field public static final MSG_MAP_PANO_ROUTE_DATA:I = 0x259

.field public static final UI_TIP_AR_ENTERING:Ljava/lang/String; = "\u6b63\u5728\u8fdb\u5165\u5b9e\u666f\u6a21\u5f0f..."

.field public static final UI_TIP_BIKE_ROUTE_NOT_SUPPORT:Ljava/lang/String; = "\u7531\u4e8e\u76ee\u7684\u5730\u5904\u5728\u7981\u884c\u8303\u56f4\u5185\uff0c\u9a91\u884c\u65e0\u6cd5\u524d\u5f80\uff0c\u8bf7\u9009\u7528\u5176\u4ed6\u4ea4\u901a\u65b9\u5f0f"

.field public static final UI_TIP_BUS_ACROSS_CITY_NOT_SUPPORT:Ljava/lang/String; = "\u62b1\u6b49\uff0c\u7531\u4e8e\u8de8\u57ce\u672a\u627e\u5230\u5408\u9002\u8def\u7ebf\n\u5efa\u8bae\u8c03\u6574\u8d77\u70b9\u540e\u91cd\u65b0\u89c4\u5212"

.field public static final UI_TIP_BUS_INTERNATIONAL_FAIL:Ljava/lang/String; = "\u62b1\u6b49\uff0c\u7531\u4e8e\u8de8\u6d77\u6216\u8de8\u5883\uff0c\u672a\u627e\u5230\u5408\u9002\u8def\u7ebf\n\u5efa\u8bae\u8c03\u6574\u8d77\u70b9\u540e\u91cd\u65b0\u89c4\u5212"

.field public static final UI_TIP_BUS_RESULT_NOT_FOUND:Ljava/lang/String; = "\u62b1\u6b49\uff0c\u8def\u7ebf\u89c4\u5212\u5931\u8d25\n\u8bf7\u91cd\u65b0\u9009\u62e9\u8d77\u7ec8\u70b9\u8fdb\u884c\u5c1d\u8bd5"

.field public static final UI_TIP_BUS_START_END_TOO_CLOSE:Ljava/lang/String; = "\u8ddd\u79bb\u8f83\u8fd1\uff0c\u5efa\u8bae\u6b65\u884c\u524d\u5f80"

.field public static final UI_TIP_BUS_SUBWAY_FILTER_NORESULT:Ljava/lang/String; = "\u62b1\u6b49\uff0c\u6ca1\u6709\u5730\u94c1\u4f18\u5148\u65b9\u6848\n\u8bf7\u9009\u62e9\u5176\u4ed6\u51fa\u884c\u65b9\u6848"

.field public static final UI_TIP_DATA_ANALYSIS_FAILD:Ljava/lang/String; = "\u6570\u636e\u89e3\u6790\u5931\u8d25"

.field public static final UI_TIP_DEFAULT_SERVER_ERROR:Ljava/lang/String; = "\u8def\u7ebf\u89c4\u5212\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

.field public static final UI_TIP_FAVORITE_OFF:Ljava/lang/String; = "\u6536\u85cf\u7684\u5730\u70b9\u5df2\u5173\u95ed"

.field public static final UI_TIP_FAVORITE_ON:Ljava/lang/String; = "\u6536\u85cf\u7684\u5730\u70b9\u5df2\u6253\u5f00"

.field public static final UI_TIP_FOOT_ROUTE_NOT_SUPPORT:Ljava/lang/String; = "\u7531\u4e8e\u76ee\u7684\u5730\u5904\u5728\u7981\u884c\u8303\u56f4\u5185\uff0c\u6b65\u884c\u65e0\u6cd5\u524d\u5f80\uff0c\u8bf7\u9009\u7528\u5176\u4ed6\u4ea4\u901a\u65b9\u5f0f"

.field public static final UI_TIP_FRIEND_OFF:Ljava/lang/String; = "\u597d\u53cb\u56fe\u5c42\u5df2\u5173\u95ed"

.field public static final UI_TIP_FRIEND_ON:Ljava/lang/String; = "\u597d\u53cb\u56fe\u5c42\u5df2\u6253\u5f00"

.field public static final UI_TIP_GEO_ERROR:Ljava/lang/String; = "\u6682\u65f6\u65e0\u6cd5\u83b7\u53d6\u8be5\u70b9\u4fe1\u606f"

.field public static final UI_TIP_GOALS_FAILURE:Ljava/lang/String; = "\u672a\u627e\u5230\u8be5\u7ec8\u70b9"

.field public static final UI_TIP_GOALS_INVALID:Ljava/lang/String; = "\u62b1\u6b49,\u672a\u627e\u5230\u8be5\u7ec8\u70b9"

.field public static final UI_TIP_HIDE_TO_FRIEND:Ljava/lang/String; = "\u5df2\u5411\u597d\u53cb\u9690\u85cf\u4e86\u60a8\u7684\u4f4d\u7f6e"

.field public static final UI_TIP_INDOOR_NOT_IN_BUILDING:Ljava/lang/String; = "\u60a8\u4e0d\u5728\u5f53\u524d\u5efa\u7b51\u5185\uff0c\u65e0\u6cd5\u5b9a\u4f4d"

.field public static final UI_TIP_INDOOR_NO_GPS:Ljava/lang/String; = "\u6682\u65f6\u65e0\u6cd5\u83b7\u53d6\u5f53\u524d\u4f4d\u7f6e\n\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\u540e\u91cd\u8bd5"

.field public static final UI_TIP_INOODR_ROUTE_NOT_SUPPORT:Ljava/lang/String; = "\u6b64\u5904\u4e0d\u652f\u6301\u5ba4\u5185\u8def\u7ebf\u89c4\u5212"

.field public static final UI_TIP_INPUT_GOALS:Ljava/lang/String; = "\u8f93\u5165\u7ec8\u70b9"

.field public static final UI_TIP_INPUT_START:Ljava/lang/String; = "\u8f93\u5165\u8d77\u70b9"

.field public static final UI_TIP_INPUT_START_EQUALS_GOAL:Ljava/lang/String; = "\u8d77\u70b9\u7ec8\u70b9\u76f8\u540c"

.field public static final UI_TIP_LOCATION:Ljava/lang/String; = "\u6b63\u5728\u83b7\u53d6\u60a8\u7684\u4f4d\u7f6e"

.field public static final UI_TIP_LOCATION_CHANGE:Ljava/lang/String; = "\u8bbe\u7f6e\u4e2d\u6211\u7684\u4f4d\u7f6e\u5df2\u5173\u95ed\uff0c\u8bf7\u6253\u5f00"

.field public static final UI_TIP_LOCATION_ERROR:Ljava/lang/String; = "\u6682\u65f6\u65e0\u6cd5\u83b7\u53d6\u60a8\u7684\u4f4d\u7f6e"

.field public static final UI_TIP_MAX_SCALE:Ljava/lang/String; = "\u5df2\u653e\u5927\u5230\u6700\u5927\u7ea7\u522b"

.field public static final UI_TIP_MIN_SCALE:Ljava/lang/String; = "\u5df2\u7f29\u5c0f\u5230\u6700\u5c0f\u7ea7\u522b"

.field public static final UI_TIP_NET_CONNECT_FAILD:Ljava/lang/String; = "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

.field public static final UI_TIP_NET_CORE_MEMORY_ALLOCATE_ERROR:Ljava/lang/String; = "\u5185\u6838\u5185\u5b58\u9519\u8bef"

.field public static final UI_TIP_NET_CORE_TRANS_CODE_ERROR:Ljava/lang/String; = "\u5185\u6838\u8f6c\u5316\u9519\u8bef"

.field public static final UI_TIP_NET_DATA_ERROR:Ljava/lang/String; = "\u7f51\u7edc\u6682\u65f6\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

.field public static final UI_TIP_NET_NETWORK_CONNECT_ERROR:Ljava/lang/String; = "\u7f51\u7edc\u672a\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e\u540e\u91cd\u8bd5"

.field public static final UI_TIP_NET_NETWORK_DATA_ERROR:Ljava/lang/String; = "\u7f51\u7edc\u6682\u65f6\u65e0\u6cd5\u8fde\u63a5"

.field public static final UI_TIP_NET_NETWORK_ERROR_404:Ljava/lang/String; = "\u670d\u52a1\u5f02\u5e38,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

.field public static final UI_TIP_NET_NETWORK_GET_CITYID_ERROR:Ljava/lang/String; = "\u7f51\u7edc\u6682\u65f6\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u91cd\u8bd5"

.field public static final UI_TIP_NET_NETWORK_TIMEOUT_ERROR:Ljava/lang/String; = "\u7f51\u7edc\u6682\u65f6\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

.field public static final UI_TIP_NET_NOT_CONNECT:Ljava/lang/String; = "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5"

.field public static final UI_TIP_NET_RESULT_NOT_FOUND:Ljava/lang/String; = "\u672a\u641c\u7d22\u5230\u7ed3\u679c"

.field public static final UI_TIP_NET_RESULT_SEARCH_ERR:Ljava/lang/String; = "\u641c\u7d22\u51fa\u9519"

.field public static final UI_TIP_NET_RP_NOT_SUPPORT_BUS:Ljava/lang/String; = "\u8be5\u57ce\u5e02\u6682\u4e0d\u652f\u6301\u516c\u4ea4"

.field public static final UI_TIP_NET_RP_NOT_SUPPORT_BUS_2CITY:Ljava/lang/String; = "\u62b1\u6b49\uff0c\u6682\u4e0d\u652f\u6301\u8de8\u57ce\u5e02\u516c\u4ea4\u67e5\u8be2"

.field public static final UI_TIP_NET_RP_NO_BUS_RESULT:Ljava/lang/String; = "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u516c\u4ea4\u65b9\u6848\n\u8bf7\u9009\u62e9\u5176\u4ed6\u51fa\u884c\u65b9\u5f0f\u89c4\u5212\u8def\u7ebf"

.field public static final UI_TIP_NET_RP_ST_EN_TOO_NEAR:Ljava/lang/String; = "\u8ddd\u79bb\u592a\u8fd1\uff0c\u5efa\u8bae\u6b65\u884c\u524d\u5f80"

.field public static final UI_TIP_NET_STREET_NODATA_ERROR:Ljava/lang/String; = "\u83b7\u53d6\u8857\u666f\u6570\u636e\u5931\u8d25"

.field public static final UI_TIP_NET_TIMEOUT:Ljava/lang/String; = "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

.field public static final UI_TIP_NET_UNDEFINED_ERROR:Ljava/lang/String; = "\u672a\u5b9a\u4e49\u9519\u8bef"

.field public static final UI_TIP_NET_USER_CANCEL:Ljava/lang/String; = "\u7528\u6237\u8bf7\u6c42\u53d6\u6d88"

.field public static final UI_TIP_NEW_VERSION:Ljava/lang/String; = "\u60a8\u76ee\u524d\u7684\u7248\u672c\u5df2\u662f\u6700\u65b0\u7248\u672c"

.field public static final UI_TIP_POI_SEARCH_ERROR:Ljava/lang/String; = "\u672a\u627e\u5230\u76f8\u5173\u7ed3\u679c"

.field public static final UI_TIP_REQUEST_PARAMS_ERROR:Ljava/lang/String; = "\u8bf7\u6c42\u53c2\u6570\u9519\u8bef"

.field public static final UI_TIP_SATELLITE_NO:Ljava/lang/String; = "\u62b1\u6b49,\u5f53\u524d\u57ce\u5e02\u6682\u65e0\u536b\u661f\u56fe\u6570\u636e"

.field public static final UI_TIP_SATELLITE_OFF:Ljava/lang/String; = "\u536b\u661f\u56fe\u5c42\u5df2\u5173\u95ed"

.field public static final UI_TIP_SATELLITE_ON:Ljava/lang/String; = "\u536b\u661f\u56fe\u5c42\u5df2\u6253\u5f00"

.field public static final UI_TIP_SDCARD_NO_SPACE:Ljava/lang/String; = "\u68c0\u6d4b\u5230\u5f53\u524d\u60a8\u7684SD\u5361\u7a7a\u95f4\u4e0d\u8db3\uff0c\u4e3a\u4fdd\u8bc1\u8f6f\u4ef6\u7684\u6b63\u5e38\u4f7f\u7528\uff0c\u5efa\u8bae\u60a8\u817e\u51fa\u7a7a\u95f4\u540e\u518d\u8fdb\u884c\u4e0b\u8f7d\u3002"

.field public static final UI_TIP_SEARCHING:Ljava/lang/String; = "\u6b63\u5728\u68c0\u7d22"

.field public static final UI_TIP_SEARCH_FAILD:Ljava/lang/String; = "\u641c\u7d22\u5931\u8d25"

.field public static final UI_TIP_SEND_EXCEPTION:Ljava/lang/String; = "\u7f51\u7edc\u4f20\u8f93\u5f02\u5e38"

.field public static final UI_TIP_SERVER_ERROR:Ljava/lang/String; = "\u670d\u52a1\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

.field public static final UI_TIP_SERVER_FAILD:Ljava/lang/String; = "\u8bf7\u6c42\u670d\u52a1\u5931\u8d25"

.field public static final UI_TIP_SERVER_NOT_SUPPORT_INTERNATIONAL:Ljava/lang/String; = "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u516c\u4ea4\u65b9\u6848\uff0c\u8bf7\u9009\u62e9\u5176\u4ed6\u51fa\u884c\u65b9\u5f0f\u89c4\u5212\u8def\u7ebf"

.field public static final UI_TIP_SHOW_TO_FRIEND:Ljava/lang/String; = "\u5df2\u5411\u597d\u53cb\u663e\u793a\u4e86\u60a8\u7684\u4f4d\u7f6e"

.field public static final UI_TIP_SIGN_ERROR:Ljava/lang/String; = "\u7b7e\u540d\u9519\u8bef"

.field public static final UI_TIP_START_FAILURE:Ljava/lang/String; = "\u672a\u627e\u5230\u8be5\u8d77\u70b9"

.field public static final UI_TIP_START_INVALID:Ljava/lang/String; = "\u62b1\u6b49,\u672a\u627e\u5230\u8be5\u8d77\u70b9"

.field public static final UI_TIP_THROUGH_FAILURE:Ljava/lang/String; = "\u672a\u627e\u5230\u8be5\u9014\u7ecf\u70b9"

.field public static final UI_TIP_TOO_FAR:Ljava/lang/String; = "\u8d77\u7ec8\u70b9\u8ddd\u79bb\u8fc7\u8fdc\uff0c\u5efa\u8bae\u9009\u62e9\u5176\u4ed6\u4ea4\u901a\u65b9\u5f0f"

.field public static final UI_TIP_TRAFFIC_CHINA_NO:Ljava/lang/String; = "\u8bf7\u653e\u5927\u5230\u57ce\u5e02\u67e5\u770b\u8def\u51b5"

.field public static final UI_TIP_TRAFFIC_NO:Ljava/lang/String; = "\u62b1\u6b49,\u5f53\u524d\u57ce\u5e02\u6682\u65e0\u5b9e\u65f6\u8def\u51b5\u6570\u636e"

.field public static final UI_TIP_TRAFFIC_OFF:Ljava/lang/String; = "\u5b9e\u65f6\u8def\u51b5\u5df2\u5173\u95ed"

.field public static final UI_TIP_TRAFFIC_ON:Ljava/lang/String; = "\u5b9e\u65f6\u8def\u51b5\u5df2\u6253\u5f00"

.field public static final UI_TIP_YOUR_SEARCH_GOALS:Ljava/lang/String; = "\u60a8\u8981\u627e\u7684\u7ec8\u70b9\u662f:"

.field public static final UI_TIP_YOUR_SEARCH_GOALS_IN_CITY:Ljava/lang/String; = "\u60a8\u8981\u627e\u7684\u7ec8\u70b9\u5728\u5982\u4e0b\u57ce\u5e02:"

.field public static final UI_TIP_YOUR_SEARCH_START:Ljava/lang/String; = "\u60a8\u8981\u627e\u7684\u8d77\u70b9\u662f:"

.field public static final UI_TIP_YOUR_SEARCH_START_IN_CITY:Ljava/lang/String; = "\u60a8\u8981\u627e\u7684\u8d77\u70b9\u5728\u5982\u4e0b\u57ce\u5e02:"

.field public static final UI_TIP_YOUR_SEARCH_THROUGH:Ljava/lang/String; = "\u60a8\u8981\u627e\u7684\u9014\u7ecf\u70b9\u662f:"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
