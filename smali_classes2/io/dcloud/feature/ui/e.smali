.class public Lio/dcloud/feature/ui/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/ui/e$e;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Lio/dcloud/common/DHInterface/AbsMgr;

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/feature/ui/a;",
            ">;"
        }
    .end annotation
.end field

.field final d:Z

.field e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/dcloud/common/DHInterface/AbsMgr;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/dcloud/feature/ui/e;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lio/dcloud/feature/ui/e;->c:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lio/dcloud/feature/ui/e;->d:Z

    .line 7
    iput-object v0, p0, Lio/dcloud/feature/ui/e;->e:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lio/dcloud/feature/ui/e;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    .line 11
    iput-object p2, p0, Lio/dcloud/feature/ui/e;->e:Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Lio/dcloud/feature/ui/e;->a()V

    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 1

    if-eqz p1, :cond_1

    .line 1178
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 1179
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    return p1

    .line 1180
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 1181
    invoke-static {p1}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lio/dcloud/feature/ui/e;Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/dcloud/feature/ui/e;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;
    .locals 2

    .line 1133
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    :try_start_0
    sget-object v0, Lio/dcloud/feature/ui/e;->a:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1136
    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1137
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 1138
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .line 1139
    instance-of v0, p0, Lio/dcloud/feature/ui/b;

    if-eqz v0, :cond_0

    .line 1140
    check-cast p0, Lio/dcloud/feature/ui/b;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1147
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 1148
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 1149
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;Z)Lio/dcloud/feature/ui/c;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    move-object/from16 v13, p9

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNWindow pUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    const-string v1, "directPage"

    const/4 v14, 0x0

    .line 969
    invoke-virtual {v12, v1, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "winType"

    .line 970
    invoke-virtual {v12, v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 971
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v9, v3, v10}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x5

    if-eqz v1, :cond_1

    const/4 v5, 0x5

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-eqz p10, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object v4, v3

    const/4 v3, 0x0

    .line 981
    :goto_2
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IApp;->obtainWebviewBaseUrl()Ljava/lang/String;

    .line 983
    invoke-direct {v0, v8, v9, v4}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V

    .line 985
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    .line 988
    invoke-static/range {p4 .. p4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x1

    xor-int/lit8 v16, v1, 0x1

    const/4 v1, 0x4

    if-ne v5, v1, :cond_3

    .line 990
    invoke-virtual {v7, v1}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v17

    goto :goto_3

    :cond_3
    if-ne v5, v6, :cond_4

    .line 992
    invoke-virtual {v7, v6}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v17

    goto :goto_3

    :cond_4
    const/16 v17, 0x0

    :goto_3
    if-nez v17, :cond_5

    .line 995
    new-instance v17, Lio/dcloud/feature/ui/c;

    move-object/from16 v1, v17

    move-object/from16 v18, v2

    move-object/from16 v2, p1

    move-object/from16 v19, v3

    move-object v3, v4

    move-object/from16 v20, v4

    move-object/from16 v4, p5

    move/from16 v21, v5

    move-object/from16 v5, p6

    const/4 v15, 0x5

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lio/dcloud/feature/ui/c;-><init>(Lio/dcloud/feature/ui/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_4

    :cond_5
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v21, v5

    const/4 v15, 0x5

    :goto_4
    move-object/from16 v1, p8

    move-object/from16 v6, v17

    .line 998
    iput-object v1, v6, Lio/dcloud/feature/ui/c;->y:Lorg/json/JSONObject;

    .line 1000
    iget-object v1, v0, Lio/dcloud/feature/ui/e;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v3, v15, [Ljava/lang/Object;

    .line 1002
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v14

    const/4 v4, 0x1

    aput-object v9, v3, v4

    const/4 v5, 0x3

    new-array v15, v5, [Ljava/lang/Object;

    aput-object v10, v15, v14

    aput-object v12, v15, v4

    const/4 v4, 0x2

    aput-object p6, v15, v4

    aput-object v15, v3, v4

    .line 1003
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v10, 0x4

    aput-object v6, v3, v10

    .line 1004
    invoke-interface {v1, v2, v5, v3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz p10, :cond_6

    .line 1010
    invoke-interface {v15}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    move-object/from16 v3, v19

    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/IWebview;->setOriginalUrl(Ljava/lang/String;)V

    :cond_6
    if-eqz v13, :cond_7

    .line 1013
    iput-object v13, v6, Lio/dcloud/feature/ui/c;->w:Lorg/json/JSONArray;

    .line 1014
    iput-object v8, v6, Lio/dcloud/feature/ui/c;->x:Lio/dcloud/common/DHInterface/IWebview;

    .line 1016
    :cond_7
    invoke-virtual {v6, v15, v11}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)V

    .line 1019
    iget-object v1, v6, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    const-string v2, "plusrequire"

    .line 1020
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1021
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v3, "replacewebapi"

    .line 1023
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "geolocation"

    if-eqz v4, :cond_9

    .line 1024
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 1025
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1026
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1029
    :cond_9
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1030
    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_5
    const-string v3, "injection"

    .line 1032
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1033
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 1034
    invoke-interface {v1, v3, v4}, Lio/dcloud/common/DHInterface/IWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v3, "overrideresource"

    .line 1036
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1037
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/IWebview;->setOverrideResourceRequest(Lorg/json/JSONArray;)V

    :cond_c
    const-string v3, "overrideurl"

    .line 1039
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1040
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/IWebview;->setOverrideUrlLoadingData(Lorg/json/JSONObject;)V

    .line 1043
    :cond_d
    invoke-static/range {v18 .. v18}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1044
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v3

    if-eq v3, v10, :cond_e

    .line 1045
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_11

    .line 1046
    :cond_e
    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "_www/__wap2app.js"

    const/4 v3, 0x0

    .line 1047
    invoke-interface {v9, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    const-string v2, "_www/__wap2appconfig.js"

    .line 1048
    invoke-interface {v9, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    const/4 v3, 0x0

    .line 1050
    :goto_6
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v2

    const-string v4, "_www/server_index_append.js"

    invoke-interface {v9, v2, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    .line 1051
    invoke-interface {v1, v2, v4}, Lio/dcloud/common/DHInterface/IWebview;->setPreloadJsFile(Ljava/lang/String;Z)V

    const-string v2, "_www/server_index_append.css"

    .line 1052
    invoke-interface {v9, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1053
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1055
    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    const-string v2, "_www/__wap2app.css"

    .line 1057
    invoke-interface {v9, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1058
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1060
    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_7
    const-string v2, "appendCss"

    .line 1067
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1068
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_12
    const-string v2, "preloadcss"

    .line 1070
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1071
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_13
    const/4 v3, 0x0

    .line 1073
    :goto_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x0

    .line 1074
    invoke-interface {v1, v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_14
    const/4 v2, 0x0

    :goto_9
    const-string v3, "appendJs"

    .line 1078
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1079
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2LocalFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_15
    const-string v3, "preloadjs"

    .line 1081
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1082
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->convert2LocalFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1084
    :cond_16
    :goto_a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 1085
    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    :cond_17
    if-eqz v16, :cond_19

    const/4 v1, 0x6

    move/from16 v2, v21

    if-ne v2, v1, :cond_18

    const-string v1, "additionalHttpHeaders"

    .line 1090
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1091
    iget-object v2, v6, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/JSONUtil;->toMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-interface {v2, v3, v1}, Lio/dcloud/common/DHInterface/IWebview;->setLoadURLHeads(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_b

    :cond_18
    move-object/from16 v3, v20

    .line 1093
    :goto_b
    iget-object v1, v6, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    .line 1095
    :cond_19
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v15}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    move-object v1, v6

    move-object/from16 v3, p1

    move-object/from16 v5, p6

    move-object v8, v6

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/ui/b;->a(Landroid/content/Context;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1101
    invoke-interface {v15}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1a

    .line 1104
    invoke-virtual {v7, v15}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/common/DHInterface/IFrameView;)V

    .line 1107
    :cond_1a
    invoke-virtual {v7, v8}, Lio/dcloud/feature/ui/a;->e(Lio/dcloud/feature/ui/c;)V

    .line 1108
    invoke-virtual {v8, v12, v14}, Lio/dcloud/feature/ui/c;->a(Lorg/json/JSONObject;Z)Z

    .line 1109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " createNWindow webview_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "View_Visible_Path"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method private a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p3

    .line 930
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    move-object v3, p1

    invoke-virtual {p1, v1}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/common/DHInterface/IFrameView;)Lio/dcloud/feature/ui/c;

    move-result-object v1

    const/4 v2, 0x0

    .line 931
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new -- JSNWindow="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UIWidgetMgr"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 933
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, 0x2

    .line 934
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v4, 0x4

    .line 936
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const/4 v4, 0x5

    .line 937
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v11

    if-nez v2, :cond_0

    .line 941
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "{}"

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    move-object v9, v0

    move-object v7, v2

    goto :goto_0

    :cond_0
    const-string v0, "name"

    .line 943
    invoke-static {v2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 945
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "webviewid"

    .line 946
    invoke-static {v2, v0}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v7, v0

    move-object v9, v2

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    move/from16 v12, p6

    .line 949
    invoke-direct/range {v2 .. v12}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONArray;Z)Lio/dcloud/feature/ui/c;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 953
    invoke-virtual {v1, v0}, Lio/dcloud/feature/ui/c;->b(Lio/dcloud/feature/ui/c;)V

    :cond_2
    if-eqz v13, :cond_3

    .line 956
    iget-object v1, v0, Lio/dcloud/feature/ui/b;->i:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewANID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    :cond_3
    iget-object v1, v0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 960
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getAnimOptions()Lio/dcloud/common/adapter/util/AnimOptions;

    move-result-object v1

    .line 962
    iget-object v2, v0, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    .line 963
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 964
    invoke-virtual {v2}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v3

    iput-boolean v3, v0, Lio/dcloud/feature/ui/c;->L:Z

    .line 965
    iget-object v3, v2, Lio/dcloud/common/adapter/util/ViewOptions;->transition:Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lio/dcloud/common/adapter/util/AnimOptions;->parseTransition(Lorg/json/JSONObject;)V

    .line 966
    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->transform:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lio/dcloud/common/adapter/util/AnimOptions;->parseTransform(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private a(Landroid/view/View;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/feature/ui/c;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;
    .locals 7

    .line 1151
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    new-array v0, v3, [I

    aput p2, v0, v2

    aput p3, v0, v1

    .line 1152
    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object p2

    goto :goto_0

    .line 1153
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    new-array v0, v3, [F

    int-to-float p2, p2

    aput p2, v0, v2

    int-to-float p2, p3

    aput p2, v0, v1

    .line 1154
    invoke-static {v0}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-wide/16 v0, 0xc8

    .line 1156
    invoke-virtual {p2, v0, v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    .line 1157
    new-instance p3, Lio/dcloud/feature/ui/e$b;

    invoke-direct {p3, p0, p1}, Lio/dcloud/feature/ui/e$b;-><init>(Lio/dcloud/feature/ui/e;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lio/dcloud/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1177
    new-instance p3, Lio/dcloud/feature/ui/e$c;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p7

    move-object v4, p5

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/dcloud/feature/ui/e$c;-><init>(Lio/dcloud/feature/ui/e;Landroid/view/View;Lio/dcloud/feature/ui/c;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lio/dcloud/nineoldandroids/animation/Animator;->addListener(Lio/dcloud/nineoldandroids/animation/Animator$AnimatorListener;)V

    return-object p2
.end method

.method private a()V
    .locals 4

    .line 1150
    iget-object v0, p0, Lio/dcloud/feature/ui/e;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v2, p0, Lio/dcloud/feature/ui/e;->e:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {v0, v1, v3, v2}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lio/dcloud/feature/ui/e;->a:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)V
    .locals 2

    .line 1110
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isBase(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1111
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http://"

    .line 1113
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    .line 1114
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1115
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1120
    :cond_0
    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1121
    invoke-static {p3}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getOriginalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1124
    invoke-interface {p2, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1125
    invoke-static {p1}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1127
    invoke-interface {p2, p3}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getHBuilderPrintUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .line 1131
    invoke-static {p1}, Lio/dcloud/feature/ui/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p2}, Lio/dcloud/feature/ui/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p3, p2

    const-string p1, "{\"open\": {\"opener\":\"%s\",\"opened\":\"%s\"}}"

    .line 1132
    invoke-static {p1, p3}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ".stream_json"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V
    .locals 10

    .line 916
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v6

    .line 917
    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 918
    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v2

    .line 919
    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v0

    .line 920
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object v8, v2

    .line 921
    :goto_0
    new-instance v9, Lio/dcloud/feature/ui/c;

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p2

    move-object v3, v8

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/ui/c;-><init>(Lio/dcloud/feature/ui/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 922
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IFrameView;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p2

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Lio/dcloud/feature/ui/b;->a(Landroid/content/Context;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    .line 923
    iput-boolean v0, v9, Lio/dcloud/feature/ui/c;->G:Z

    .line 924
    iput-boolean v0, v9, Lio/dcloud/feature/ui/c;->J:Z

    const/4 v1, 0x1

    .line 925
    invoke-virtual {v9, v1}, Lio/dcloud/feature/ui/c;->a(Z)V

    .line 926
    invoke-interface {p3, v9}, Lio/dcloud/common/DHInterface/IFrameViewStatus;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 927
    invoke-virtual {v9, p3, v8}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)V

    .line 928
    invoke-virtual {p2, v9}, Lio/dcloud/feature/ui/a;->e(Lio/dcloud/feature/ui/c;)V

    .line 929
    invoke-virtual {p2, p1, v9, v0}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "./"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "../"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, ".../"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method


# virtual methods
.method public a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 28

    move-object/from16 v9, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "WebviewGroup"

    const-string v1, "NWindow"

    const-string v2, "js"

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 2
    :try_start_0
    invoke-static {v11, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x1

    .line 3
    invoke-static {v11, v15}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    .line 4
    invoke-static {v11, v7}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v5

    .line 5
    invoke-static {v5, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-static {v5, v15}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v14

    .line 7
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14

    if-nez v7, :cond_0

    return-object v13

    .line 10
    :cond_0
    :try_start_1
    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v13

    .line 12
    iget-object v15, v9, Lio/dcloud/feature/ui/e;->c:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/dcloud/feature/ui/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13

    move-object/from16 v19, v2

    const-string v2, "Main_Path"

    if-eqz v15, :cond_5

    .line 13
    :try_start_2
    iget-object v11, v15, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    .line 14
    invoke-interface {v11}, Lio/dcloud/common/DHInterface/IApp;->obtainAppStatus()B

    move-result v11

    const/4 v10, 0x1

    if-ne v11, v10, :cond_1

    goto :goto_4

    .line 42
    :cond_1
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v10

    invoke-interface {v10}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 43
    iget-boolean v10, v15, Lio/dcloud/feature/ui/a;->i:Z

    if-nez v10, :cond_4

    .line 44
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v10

    invoke-virtual {v9, v13, v15, v10}, Lio/dcloud/feature/ui/e;->b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V

    const/4 v10, 0x1

    .line 45
    iput-boolean v10, v15, Lio/dcloud/feature/ui/a;->i:Z

    goto :goto_0

    .line 47
    :cond_2
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v10

    invoke-interface {v10}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 48
    iget-boolean v10, v15, Lio/dcloud/feature/ui/a;->h:Z

    if-nez v10, :cond_4

    .line 49
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v10

    invoke-virtual {v9, v13, v15, v10}, Lio/dcloud/feature/ui/e;->b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V

    const/4 v10, 0x1

    .line 50
    iput-boolean v10, v15, Lio/dcloud/feature/ui/a;->h:Z

    goto :goto_0

    .line 52
    :cond_3
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v10

    invoke-interface {v10}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_4

    .line 53
    iget-boolean v10, v15, Lio/dcloud/feature/ui/a;->j:Z

    if-nez v10, :cond_4

    .line 54
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v10

    invoke-direct {v9, v13, v15, v10}, Lio/dcloud/feature/ui/e;->a(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V

    const/4 v10, 0x1

    .line 55
    iput-boolean v10, v15, Lio/dcloud/feature/ui/a;->j:Z

    :cond_4
    :goto_0
    move-object/from16 v22, v7

    move-object/from16 v20, v12

    goto/16 :goto_9

    :catch_0
    move-exception v0

    :goto_1
    move-object/from16 v1, p2

    move-object/from16 v12, p3

    :goto_2
    move-object v2, v0

    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_2e

    :cond_5
    :goto_4
    if-eqz v15, :cond_6

    .line 56
    iget-object v10, v15, Lio/dcloud/feature/ui/a;->f:Lio/dcloud/common/DHInterface/IApp;

    .line 57
    invoke-interface {v10}, Lio/dcloud/common/DHInterface/IApp;->obtainAppStatus()B

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 58
    iget-object v10, v9, Lio/dcloud/feature/ui/e;->c:Ljava/util/HashMap;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    :cond_6
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "init AppWidgetMgr pAppid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v10, Lio/dcloud/feature/ui/a;

    iget-object v11, v9, Lio/dcloud/feature/ui/e;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    invoke-direct {v10, v11, v7}, Lio/dcloud/feature/ui/a;-><init>(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IApp;)V

    .line 62
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v11

    invoke-interface {v11}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v11

    const/4 v15, 0x3

    if-ne v11, v15, :cond_7

    const/4 v11, 0x1

    goto :goto_5

    :cond_7
    const/4 v11, 0x0

    :goto_5
    iput-boolean v11, v10, Lio/dcloud/feature/ui/a;->i:Z

    .line 63
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v11

    invoke-interface {v11}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v11

    const/4 v15, 0x2

    if-ne v11, v15, :cond_8

    const/4 v11, 0x1

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    :goto_6
    iput-boolean v11, v10, Lio/dcloud/feature/ui/a;->h:Z

    .line 64
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v11

    invoke-interface {v11}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v11

    const/4 v15, 0x7

    if-ne v11, v15, :cond_9

    const/4 v11, 0x1

    goto :goto_7

    :cond_9
    const/4 v11, 0x0

    :goto_7
    iput-boolean v11, v10, Lio/dcloud/feature/ui/a;->j:Z

    .line 65
    iget-object v11, v9, Lio/dcloud/feature/ui/e;->c:Ljava/util/HashMap;

    invoke-virtual {v11, v13, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v11

    .line 70
    iget-boolean v15, v10, Lio/dcloud/feature/ui/a;->j:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_12

    if-eqz v15, :cond_a

    .line 71
    :try_start_4
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v11

    invoke-direct {v9, v13, v10, v11}, Lio/dcloud/feature/ui/e;->a(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v22, v7

    move-object/from16 v20, v12

    goto :goto_8

    .line 73
    :cond_a
    :try_start_5
    invoke-virtual {v9, v13, v10, v11}, Lio/dcloud/feature/ui/e;->b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V

    .line 75
    iget-object v15, v9, Lio/dcloud/feature/ui/e;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    move-object/from16 v20, v12

    sget-object v12, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    move-object/from16 v22, v7

    const/16 v7, 0x9

    invoke-interface {v15, v12, v7, v13}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/dcloud/common/DHInterface/IFrameView;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_12

    if-eqz v7, :cond_b

    if-eq v11, v7, :cond_b

    const/4 v11, 0x1

    .line 77
    :try_start_6
    iput-boolean v11, v10, Lio/dcloud/feature/ui/a;->h:Z

    .line 78
    invoke-virtual {v9, v13, v10, v7}, Lio/dcloud/feature/ui/e;->b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_b
    :goto_8
    move-object v15, v10

    .line 102
    :goto_9
    :try_start_7
    invoke-static {v4}, Lio/dcloud/feature/ui/e$e;->valueOf(Ljava/lang/String;)Lio/dcloud/feature/ui/e$e;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_a

    :catch_1
    const/4 v7, 0x0

    :goto_a
    :try_start_8
    const-string v10, "UI"

    .line 107
    invoke-static {v10, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12

    const/4 v11, 0x5

    const/4 v12, 0x4

    if-eqz v10, :cond_23

    .line 108
    :try_start_9
    invoke-virtual {v15, v8}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 109
    sget-object v1, Lio/dcloud/feature/ui/e$d;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_21

    const/4 v4, 0x2

    if-eq v1, v4, :cond_20

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_16

    :pswitch_0
    const/4 v1, 0x0

    .line 328
    invoke-virtual {v14, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-virtual {v14, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 332
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/util/BaseInfo;->getUniNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_c
    const/4 v3, 0x0

    .line 334
    invoke-virtual {v15, v3, v3, v1}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 335
    iget-object v3, v4, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    if-eqz v3, :cond_d

    .line 336
    invoke-static {v3}, Lio/dcloud/common/util/BaseInfo;->getUniNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_b

    :cond_d
    const-string v3, ""

    .line 339
    :goto_b
    :try_start_a
    sget-object v4, Lio/dcloud/feature/ui/e$e;->t:Lio/dcloud/feature/ui/e$e;

    invoke-virtual {v7, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v5, "weex,io.dcloud.feature.weex.WeexFeature"

    const/16 v6, 0xa

    if-eqz v4, :cond_e

    .line 340
    :try_start_b
    iget-object v4, v9, Lio/dcloud/feature/ui/e;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v7, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v10, v12, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v10, v16

    const/4 v14, 0x1

    aput-object v5, v10, v14

    const-string v5, "callNativeModuleSync"

    const/16 v17, 0x2

    aput-object v5, v10, v17

    new-array v5, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v5, v11

    aput-object v3, v5, v14

    aput-object v1, v5, v17

    const/4 v1, 0x3

    aput-object v13, v5, v1

    aput-object v2, v5, v12

    aput-object v5, v10, v1

    invoke-interface {v4, v7, v6, v10}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_15

    .line 342
    :cond_e
    iget-object v4, v9, Lio/dcloud/feature/ui/e;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v7, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v10, v12, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v14

    const/16 v16, 0x0

    aput-object v14, v10, v16

    const/4 v14, 0x1

    aput-object v5, v10, v14

    const-string v5, "postMessageToUniNView"

    const/16 v17, 0x2

    aput-object v5, v10, v17

    new-array v5, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v5, v11

    aput-object v3, v5, v14

    aput-object v1, v5, v17

    const/4 v1, 0x3

    aput-object v13, v5, v1

    aput-object v2, v5, v12

    aput-object v5, v10, v1

    invoke-interface {v4, v7, v6, v10}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    .line 343
    :pswitch_1
    invoke-virtual {v15}, Lio/dcloud/feature/ui/a;->e()Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_15

    :pswitch_2
    const/4 v1, 0x0

    .line 344
    :try_start_c
    invoke-static {v14, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v1, 0x1

    .line 345
    invoke-static {v14, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v1, 0x2

    .line 346
    invoke-static {v14, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    .line 347
    invoke-static {v14, v4}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v10

    .line 349
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 351
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    if-nez v5, :cond_f

    .line 352
    :try_start_d
    invoke-virtual {v15, v1, v1, v1}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 354
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->r()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    move-object v11, v1

    goto :goto_c

    :cond_f
    const/4 v11, 0x0

    :goto_c
    const-string v1, "action"

    const-string v5, "view"

    const v6, 0x7fffffff

    if-eqz v2, :cond_15

    .line 363
    :try_start_e
    invoke-static {v2, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 364
    invoke-static {v2, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "styles"

    .line 365
    invoke-static {v2, v12}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v12, "fromLeft"

    .line 366
    invoke-static {v2, v12}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "toLeft"

    .line 367
    invoke-static {v2, v13}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-static {v12, v4, v6}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v12

    .line 369
    invoke-static {v2, v4, v6}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v2

    const/4 v13, 0x0

    .line 370
    invoke-virtual {v15, v13, v7, v7}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v7

    if-eq v6, v2, :cond_14

    if-eqz v7, :cond_14

    .line 373
    iget-object v13, v7, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v13}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v13

    .line 374
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_13

    if-eq v6, v12, :cond_10

    goto :goto_d

    .line 379
    :cond_10
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 380
    instance-of v14, v12, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v14, :cond_11

    .line 381
    check-cast v12, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v12, v12, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    goto :goto_d

    .line 382
    :cond_11
    instance-of v12, v12, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v12, :cond_12

    .line 383
    invoke-static {v13}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v12

    float-to-int v12, v12

    goto :goto_d

    :cond_12
    const/4 v12, 0x0

    .line 386
    :goto_d
    iget-object v14, v7, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v14}, Lio/dcloud/common/DHInterface/IFrameView;->pushToViewStack()V

    .line 387
    invoke-virtual {v7}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v14

    invoke-virtual {v14}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v14

    iput v2, v14, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 388
    invoke-virtual {v7}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v14

    invoke-virtual {v14}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v19

    const-string v20, "left"

    const/16 v23, 0x1

    const/16 v24, 0x1

    move/from16 v21, v2

    move/from16 v22, v4

    invoke-virtual/range {v19 .. v24}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const/4 v14, 0x1

    goto :goto_e

    :cond_13
    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_e
    move-object/from16 v27, v7

    move v7, v2

    move-object v2, v13

    move-object/from16 v13, v27

    goto :goto_f

    :cond_14
    move-object v13, v7

    const/4 v12, 0x0

    const/4 v14, 0x0

    move v7, v2

    const/4 v2, 0x0

    goto :goto_f

    :cond_15
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_f
    if-eqz v3, :cond_1a

    .line 395
    :try_start_f
    invoke-static {v3, v5}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 396
    invoke-static {v3, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "styles"

    .line 397
    invoke-static {v3, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "fromLeft"

    .line 398
    invoke-static {v3, v6}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v1

    const-string v1, "toLeft"

    .line 399
    invoke-static {v3, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7fffffff

    .line 400
    invoke-static {v6, v4, v3}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v6

    .line 401
    invoke-static {v1, v4, v3}, Lio/dcloud/common/util/PdrUtil;->parseInt(Ljava/lang/String;II)I

    move-result v1

    const/4 v3, 0x0

    .line 402
    invoke-virtual {v15, v3, v5, v5}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v5

    const v3, 0x7fffffff

    if-eq v3, v1, :cond_19

    if-eqz v5, :cond_19

    .line 405
    iget-object v3, v5, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v3

    .line 406
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_1b

    const v9, 0x7fffffff

    if-eq v9, v6, :cond_16

    goto :goto_10

    .line 411
    :cond_16
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 412
    instance-of v9, v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v9, :cond_17

    .line 413
    check-cast v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v6, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    goto :goto_10

    .line 414
    :cond_17
    instance-of v6, v6, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v6, :cond_18

    .line 415
    invoke-static {v3}, Lio/dcloud/nineoldandroids/view/ViewHelper;->getX(Landroid/view/View;)F

    move-result v6

    float-to-int v6, v6

    goto :goto_10

    :cond_18
    const/4 v6, 0x0

    .line 418
    :goto_10
    iget-object v9, v5, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-interface {v9}, Lio/dcloud/common/DHInterface/IFrameView;->pushToViewStack()V

    .line 419
    invoke-virtual {v5}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v9

    invoke-virtual {v9}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v9

    iput v1, v9, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 420
    invoke-virtual {v5}, Lio/dcloud/feature/ui/c;->d()Lio/dcloud/common/adapter/ui/AdaFrameItem;

    move-result-object v9

    invoke-virtual {v9}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v19

    const-string v20, "left"

    const/16 v23, 0x1

    const/16 v24, 0x1

    move/from16 v21, v1

    move/from16 v22, v4

    invoke-virtual/range {v19 .. v24}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    move-object v9, v3

    move-object/from16 v19, v5

    move/from16 v16, v6

    move-object/from16 v18, v17

    const/16 v20, 0x1

    goto :goto_12

    :cond_19
    const/4 v3, 0x0

    goto :goto_11

    :cond_1a
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    :cond_1b
    :goto_11
    move-object v9, v3

    move-object/from16 v19, v5

    move-object/from16 v18, v17

    const/16 v16, 0x0

    const/16 v20, 0x0

    :goto_12
    move/from16 v17, v1

    if-eqz v14, :cond_1c

    move-object/from16 v1, p0

    move v3, v12

    move v4, v7

    move-object v5, v8

    move-object v6, v11

    move-object v7, v10

    move-object v8, v13

    .line 429
    invoke-direct/range {v1 .. v8}, Lio/dcloud/feature/ui/e;->a(Landroid/view/View;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/feature/ui/c;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    :cond_1c
    if-eqz v20, :cond_1f

    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object v6, v11

    move-object v7, v10

    move-object/from16 v8, v19

    .line 432
    invoke-direct/range {v1 .. v8}, Lio/dcloud/feature/ui/e;->a(Landroid/view/View;IILjava/lang/String;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lio/dcloud/feature/ui/c;)Lio/dcloud/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/nineoldandroids/animation/ValueAnimator;->start()V

    goto/16 :goto_13

    .line 433
    :pswitch_3
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/adapter/util/MobilePhoneModel;->checkPhoneBanAcceleration(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lio/dcloud/common/util/JSUtil;->wrapJsVar(Z)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_14

    :pswitch_4
    const/4 v1, 0x0

    .line 434
    invoke-static {v5, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 435
    invoke-static {v5, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    :try_start_10
    const-string v3, "0"

    .line 437
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "save"

    .line 438
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 439
    move-object v2, v8

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2, v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->saveWebViewData(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_1d
    const-string v3, "update"

    .line 440
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 441
    move-object v2, v8

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2, v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->syncUpdateWebViewData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_14

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 446
    :try_start_11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_13

    :pswitch_5
    const/4 v1, 0x0

    .line 447
    invoke-static {v14, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 448
    invoke-virtual {v15, v6, v6, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 451
    iget-object v2, v3, Lio/dcloud/feature/ui/b;->i:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewANID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    :pswitch_6
    const/4 v1, 0x0

    .line 452
    invoke-static {v14, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 453
    invoke-static {v14, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    .line 454
    invoke-static {v1}, Lio/dcloud/feature/ui/e;->a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v1

    const/4 v7, 0x2

    .line 455
    invoke-static {v14, v7}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v2, 0x3

    .line 457
    invoke-static {v14, v2}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v2

    .line 459
    iget-object v3, v1, Lio/dcloud/feature/ui/b;->i:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewANID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-virtual {v15, v5, v1}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/b;)V

    .line 462
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v3, v15

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/ui/b;->a(Landroid/content/Context;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_13

    .line 463
    :pswitch_7
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    .line 464
    invoke-virtual {v15, v1}, Lio/dcloud/feature/ui/a;->a(Lio/dcloud/common/DHInterface/IFrameView;)Lio/dcloud/feature/ui/c;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 466
    invoke-virtual {v3}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 468
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ui.execute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found NWindow uuid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";frameView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    .line 469
    :pswitch_8
    invoke-virtual {v15, v12}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 471
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 472
    :pswitch_9
    invoke-virtual {v15}, Lio/dcloud/feature/ui/a;->c()Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 474
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 475
    :pswitch_a
    invoke-virtual {v15}, Lio/dcloud/feature/ui/a;->d()Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 477
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_1f
    :goto_13
    move-object/from16 v9, p0

    goto :goto_16

    .line 478
    :pswitch_b
    invoke-virtual {v15}, Lio/dcloud/feature/ui/a;->b()Ljava/lang/String;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    :goto_14
    move-object/from16 v9, p0

    :goto_15
    move-object v13, v1

    goto :goto_17

    :catch_3
    move-exception v0

    move-object/from16 v9, p0

    goto/16 :goto_1

    .line 479
    :cond_20
    :try_start_12
    iget-object v1, v9, Lio/dcloud/feature/ui/e;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0x2c

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IFrameView;

    .line 480
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 481
    invoke-virtual {v15, v1, v1, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 484
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_21
    const/4 v1, 0x0

    .line 485
    invoke-static {v14, v1}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 486
    invoke-virtual {v15, v2, v2, v1}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 489
    invoke-virtual {v1}, Lio/dcloud/feature/ui/c;->h()Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    goto :goto_15

    :cond_22
    :goto_16
    const/4 v13, 0x0

    .line 721
    :goto_17
    :try_start_13
    invoke-virtual {v15}, Lio/dcloud/feature/ui/a;->g()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    goto/16 :goto_2f

    :catch_4
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v12, p3

    goto/16 :goto_2d

    :cond_23
    const/4 v7, 0x2

    .line 722
    :try_start_14
    invoke-static {v1, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_12

    if-eqz v5, :cond_26

    .line 723
    :try_start_15
    invoke-virtual {v15, v8}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/common/DHInterface/IWebview;)V

    .line 724
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v4, v14

    move-object/from16 v5, v22

    .line 726
    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;

    goto :goto_18

    :cond_24
    const/4 v1, 0x0

    .line 729
    invoke-virtual {v15, v6, v6, v1}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 732
    invoke-virtual {v3, v8, v4, v14}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v13

    goto :goto_19

    .line 735
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " App not found NWindow ;uuid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";_action="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 738
    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    :goto_18
    const/4 v13, 0x0

    .line 743
    :goto_19
    :try_start_16
    invoke-virtual {v15}, Lio/dcloud/feature/ui/a;->g()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    goto/16 :goto_2f

    :cond_26
    move-object/from16 v10, v20

    .line 744
    :try_start_17
    invoke-static {v10, v3}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_12

    if-eqz v1, :cond_2a

    :try_start_18
    const-string v1, "createGroup"

    .line 745
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 746
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 747
    invoke-static {v14, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v1, 0x1

    .line 748
    invoke-static {v14, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_27

    .line 750
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "{}"

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_1a

    :cond_27
    move-object v3, v2

    :goto_1a
    const/4 v2, 0x0

    .line 752
    :goto_1b
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_28

    .line 753
    invoke-static {v4, v2}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v5, 0x1

    .line 754
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONArray(Lorg/json/JSONArray;I)Lorg/json/JSONArray;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v1, p0

    move/from16 v23, v2

    move-object v2, v15

    move-object v5, v3

    move-object/from16 v3, p1

    move-object/from16 v24, v4

    move-object/from16 v4, v19

    move-object v11, v5

    const/4 v12, 0x6

    move-object/from16 v5, v22

    move-object/from16 v25, v6

    move-object/from16 v26, v22

    move/from16 v7, v20

    .line 755
    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;

    move-result-object v1

    const/4 v2, 0x1

    .line 756
    invoke-virtual {v1, v2}, Lio/dcloud/feature/ui/c;->b(Z)V

    .line 757
    iget-object v1, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v23, 0x1

    move-object v3, v11

    move-object/from16 v4, v24

    move-object/from16 v6, v25

    move-object/from16 v22, v26

    const/4 v7, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x4

    goto :goto_1b

    :cond_28
    move-object v11, v3

    move-object/from16 v25, v6

    move-object/from16 v26, v22

    const/4 v12, 0x6

    .line 759
    new-instance v7, Lio/dcloud/feature/ui/d;

    invoke-direct {v7, v10, v13, v11}, Lio/dcloud/feature/ui/d;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lorg/json/JSONObject;)V

    .line 760
    iget-object v1, v9, Lio/dcloud/feature/ui/e;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v3, v12, [Ljava/lang/Object;

    const/4 v4, 0x1

    .line 762
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    move-object/from16 v5, v26

    aput-object v5, v3, v4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v11, v4, v6

    const/4 v10, 0x2

    aput-object v4, v3, v10

    .line 763
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v3, v6

    const/4 v4, 0x4

    aput-object v7, v3, v4

    const/4 v4, 0x5

    aput-object v13, v3, v4

    .line 764
    invoke-interface {v1, v2, v6, v3}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lio/dcloud/common/DHInterface/IFrameView;

    .line 769
    invoke-virtual {v7, v12}, Lio/dcloud/feature/ui/d;->a(Lio/dcloud/common/DHInterface/IFrameView;)V

    .line 770
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v1, v7

    move-object v3, v15

    move-object/from16 v4, p1

    move-object/from16 v5, v25

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Lio/dcloud/feature/ui/b;->a(Landroid/content/Context;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 772
    iget-object v1, v7, Lio/dcloud/feature/ui/b;->i:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewANID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v11, v25

    .line 773
    invoke-virtual {v15, v11, v7}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/b;)V

    .line 774
    sget v1, Lio/dcloud/common/adapter/util/DeviceInfo;->sDeviceSdkVer:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2b

    .line 775
    invoke-virtual {v15, v12}, Lio/dcloud/feature/ui/a;->b(Lio/dcloud/common/DHInterface/IFrameView;)V

    goto :goto_1d

    :cond_29
    move-object v11, v6

    .line 778
    invoke-virtual {v15, v11}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v1

    .line 779
    invoke-virtual {v1, v8, v4, v14}, Lio/dcloud/feature/ui/b;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    :goto_1c
    move-object v13, v1

    goto/16 :goto_2f

    :cond_2a
    move-object v11, v6

    move-object/from16 v5, v22

    const/4 v6, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x6

    :try_start_19
    const-string v1, "updateAppFrameViews"
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_12

    move-object/from16 v7, p2

    .line 781
    :try_start_1a
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_11

    if-eqz v1, :cond_2c

    .line 782
    :try_start_1b
    invoke-virtual {v15}, Lio/dcloud/feature/ui/a;->i()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5

    :cond_2b
    :goto_1d
    const/4 v3, 0x0

    goto/16 :goto_29

    :catch_5
    move-exception v0

    move-object/from16 v12, p3

    :goto_1e
    move-object v2, v0

    move-object v1, v7

    goto/16 :goto_3

    :cond_2c
    :try_start_1c
    const-string v1, "n_createDirectWebview"

    .line 783
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_11

    const-string v2, "winType"

    if-eqz v1, :cond_33

    .line 784
    :try_start_1d
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 785
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "direct_page"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 786
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 788
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    sget-object v3, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->DirectPageJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 790
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_2d
    const/4 v3, 0x5

    .line 792
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 793
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "backButtonAutoControl"

    const-string v3, "quit"

    .line 794
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "extras"

    .line 795
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_5

    const-string v2, "__wap2app_type"

    if-eqz v1, :cond_2f

    .line 797
    :try_start_1e
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "direct"

    .line 798
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2e
    :goto_1f
    const/4 v2, 0x4

    goto :goto_20

    .line 801
    :cond_2f
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "direct"

    .line 802
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1f

    .line 804
    :goto_20
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_5

    const/4 v12, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v6, v11

    move-object v8, v7

    move v7, v12

    .line 806
    :try_start_1f
    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-nez v11, :cond_30

    .line 808
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/dcloud/feature/ui/b;->l:Ljava/lang/String;

    :cond_30
    const/4 v2, 0x1

    .line 810
    iput-boolean v2, v1, Lio/dcloud/feature/ui/c;->G:Z

    .line 811
    iput-boolean v2, v1, Lio/dcloud/feature/ui/c;->J:Z

    const/4 v2, 0x4

    .line 812
    invoke-virtual {v15, v2}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 814
    iget-wide v2, v2, Lio/dcloud/feature/ui/c;->v:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, v1, Lio/dcloud/feature/ui/c;->v:J

    goto :goto_21

    .line 816
    :cond_31
    invoke-virtual {v15, v10}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 818
    iget-wide v2, v2, Lio/dcloud/feature/ui/c;->v:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, v1, Lio/dcloud/feature/ui/c;->v:J

    .line 821
    :cond_32
    :goto_21
    invoke-virtual {v15, v1}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/feature/ui/c;)I

    move-result v2

    .line 822
    invoke-virtual {v15, v13, v1, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    .line 823
    iget-object v2, v9, Lio/dcloud/feature/ui/e;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v1, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v5, v4}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_6

    goto/16 :goto_1d

    :catch_6
    move-exception v0

    move-object/from16 v12, p3

    :goto_22
    move-object v2, v0

    move-object v1, v8

    goto/16 :goto_3

    :cond_33
    :try_start_20
    const-string v1, "n_createHDWebview"

    .line 824
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_11

    const-string v3, "id"

    const-string v6, "name"

    if-eqz v1, :cond_35

    move-object/from16 v1, p3

    const/4 v10, 0x3

    .line 826
    :try_start_21
    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2b

    const-string v10, "url"

    const/4 v13, 0x0

    .line 829
    invoke-virtual {v4, v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 830
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v14, v19

    .line 831
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_8

    if-nez v17, :cond_34

    .line 832
    :try_start_22
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 833
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 834
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppTempPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 835
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/4 v1, 0x0

    invoke-static {v14, v1, v12}, Lio/dcloud/common/adapter/io/DHFile;->writeFile([BILjava/lang/String;)V

    const-string v1, "preloadjs"

    .line 836
    invoke-virtual {v4, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 838
    :cond_34
    invoke-virtual {v13, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "__hd"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x6

    .line 842
    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 843
    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_5

    const/4 v10, 0x0

    move-object/from16 v12, p3

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v4, v13

    move-object v6, v11

    move-object v8, v7

    move v7, v10

    .line 845
    :try_start_23
    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-nez v11, :cond_2b

    .line 847
    iget-object v2, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/dcloud/feature/ui/b;->l:Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_7

    goto/16 :goto_1d

    :catch_7
    move-exception v0

    goto/16 :goto_22

    :catch_8
    move-exception v0

    move-object v12, v1

    goto/16 :goto_1e

    :cond_35
    move-object/from16 v12, p3

    const/4 v10, 0x3

    :try_start_24
    const-string v1, "n_createSecondWebview"

    .line 850
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_10

    if-eqz v1, :cond_3e

    .line 852
    :try_start_25
    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v5, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2b

    const-string v4, "launch_path"
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_e

    const/4 v14, 0x0

    .line 855
    :try_start_26
    invoke-virtual {v1, v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_d

    :try_start_27
    const-string v14, "mode"

    const-string v10, "front"

    .line 856
    invoke-virtual {v1, v14, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 857
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 858
    invoke-virtual {v14, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 861
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_e

    :try_start_28
    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "__second"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "child"

    .line 862
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_c

    if-eqz v3, :cond_36

    :try_start_29
    const-string v3, "position"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string v3, "position"

    const-string v4, "absolute"

    .line 863
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_9

    goto :goto_23

    :catch_9
    move-exception v0

    move-object/from16 v1, p2

    goto/16 :goto_2

    :cond_36
    :goto_23
    const/4 v3, 0x4

    .line 865
    :try_start_2a
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 866
    invoke-virtual {v14, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 868
    invoke-virtual {v15, v3}, Lio/dcloud/feature/ui/a;->a(I)Lio/dcloud/feature/ui/c;

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_c

    if-eqz v1, :cond_37

    const/16 v17, 0x1

    goto :goto_24

    :cond_37
    const/16 v17, 0x0

    :goto_24
    if-nez v11, :cond_38

    .line 870
    :try_start_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "__second"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_9

    move-object v6, v1

    goto :goto_25

    :cond_38
    move-object v6, v11

    :goto_25
    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v4, v14

    move-object/from16 v11, p2

    .line 872
    :try_start_2c
    invoke-direct/range {v1 .. v7}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONArray;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Z)Lio/dcloud/feature/ui/c;

    move-result-object v1

    if-nez v17, :cond_2b

    const/4 v2, 0x1

    .line 875
    iput-boolean v2, v1, Lio/dcloud/feature/ui/c;->G:Z

    .line 876
    iput-boolean v2, v1, Lio/dcloud/feature/ui/c;->J:Z

    .line 877
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_b

    const/4 v3, 0x0

    :try_start_2d
    invoke-virtual {v15, v2, v3, v3}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/dcloud/feature/ui/c;

    move-result-object v2

    .line 878
    iget-object v4, v15, Lio/dcloud/feature/ui/a;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const-string v5, "behind"

    .line 879
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 881
    iget-wide v5, v2, Lio/dcloud/feature/ui/c;->v:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, v1, Lio/dcloud/feature/ui/c;->v:J

    if-gez v4, :cond_39

    const/4 v14, 0x0

    goto :goto_26

    :cond_39
    move v14, v4

    .line 882
    :goto_26
    invoke-virtual {v15, v13, v1, v14}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    goto/16 :goto_29

    :cond_3a
    const-string v5, "parent"

    .line 883
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 884
    invoke-virtual {v2}, Lio/dcloud/feature/ui/b;->f()V

    .line 885
    invoke-virtual {v1, v2}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/b;)V

    .line 886
    invoke-virtual {v15, v1}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/feature/ui/c;)I

    move-result v2

    .line 887
    invoke-virtual {v15, v13, v1, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    .line 888
    iget-object v2, v9, Lio/dcloud/feature/ui/e;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v1, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v7, 0x2

    aput-object v1, v5, v7

    invoke-interface {v2, v4, v6, v5}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_29

    :cond_3b
    const-string v5, "child"

    .line 889
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 890
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    .line 891
    iget-object v5, v4, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    if-nez v5, :cond_3c

    .line 892
    new-instance v5, Lorg/json/JSONObject;

    const-string v6, "{\"width\":\"100%\",\"height\":\"100%\"}"

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    .line 894
    :cond_3c
    invoke-virtual {v2, v1}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/feature/ui/b;)V

    .line 895
    invoke-virtual {v15, v1}, Lio/dcloud/feature/ui/a;->c(Lio/dcloud/feature/ui/c;)I

    move-result v2

    .line 896
    invoke-virtual {v15, v13, v1, v2}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    goto :goto_29

    .line 898
    :cond_3d
    iget-wide v5, v2, Lio/dcloud/feature/ui/c;->v:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v1, Lio/dcloud/feature/ui/c;->v:J

    const/4 v2, 0x1

    add-int/2addr v4, v2

    .line 900
    invoke-virtual {v15, v13, v1, v4}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    .line 901
    iget-object v2, v9, Lio/dcloud/feature/ui/e;->b:Lio/dcloud/common/DHInterface/AbsMgr;

    sget-object v4, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v1, v1, Lio/dcloud/feature/ui/c;->z:Lio/dcloud/common/DHInterface/IFrameView;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v7, 0x2

    aput-object v1, v5, v7

    invoke-interface {v2, v4, v6, v5}, Lio/dcloud/common/DHInterface/IMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_a

    goto :goto_29

    :catch_a
    move-exception v0

    goto :goto_27

    :catch_b
    move-exception v0

    const/4 v3, 0x0

    :goto_27
    move-object v2, v0

    move-object v13, v3

    move-object v1, v11

    goto :goto_2e

    :catch_c
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v1, p2

    goto :goto_2c

    :catch_d
    move-exception v0

    move-object v3, v14

    goto :goto_28

    :catch_e
    move-exception v0

    const/4 v3, 0x0

    :goto_28
    move-object v2, v0

    move-object v13, v3

    move-object v1, v7

    goto :goto_2e

    :cond_3e
    move-object v1, v7

    const/4 v3, 0x0

    .line 906
    :try_start_2e
    invoke-virtual {v15, v11}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;)Lio/dcloud/feature/ui/b;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 908
    invoke-virtual {v2, v8, v4, v14}, Lio/dcloud/feature/ui/b;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_f

    goto/16 :goto_1c

    :cond_3f
    :goto_29
    move-object v13, v3

    goto :goto_2f

    :catch_f
    move-exception v0

    goto :goto_2c

    :catch_10
    move-exception v0

    goto :goto_2a

    :catch_11
    move-exception v0

    move-object/from16 v12, p3

    :goto_2a
    move-object v1, v7

    goto :goto_2b

    :catch_12
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v12, p3

    goto :goto_2b

    :catch_13
    move-exception v0

    move-object v1, v10

    move-object v12, v11

    :goto_2b
    const/4 v3, 0x0

    :goto_2c
    move-object v2, v0

    move-object v13, v3

    goto :goto_2e

    :catch_14
    move-exception v0

    move-object v1, v10

    move-object v12, v11

    move-object v3, v13

    :goto_2d
    move-object v2, v0

    .line 913
    :goto_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pActionName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";pJsArgs="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UIWidgetMgr"

    invoke-static {v3, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2f
    return-object v13

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized b(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lio/dcloud/feature/ui/e;->a(Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 28
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    iget-object p1, p0, Lio/dcloud/feature/ui/e;->c:Ljava/util/HashMap;

    .line 30
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/ui/a;

    .line 32
    invoke-virtual {v0}, Lio/dcloud/feature/ui/a;->a()V

    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lio/dcloud/feature/ui/e;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    .line 36
    :cond_1
    iget-object v0, p0, Lio/dcloud/feature/ui/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/feature/ui/a;

    if-eqz v0, :cond_2

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIWidgetMgr.dispose pAppid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Main_Path"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lio/dcloud/feature/ui/a;->a()V

    .line 42
    :cond_2
    iget-object v0, p0, Lio/dcloud/feature/ui/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public b(Ljava/lang/String;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IFrameView;)V
    .locals 15

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 3
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainUrl()Ljava/lang/String;

    move-result-object v2

    .line 6
    move-object v9, v7

    check-cast v9, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 7
    invoke-virtual {v9}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v9}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object v11, v10

    .line 12
    :goto_0
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    const/4 v12, 0x2

    if-nez v1, :cond_1

    move-object v13, v0

    goto :goto_1

    :cond_1
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v0

    if-ne v0, v12, :cond_2

    move-object/from16 v13, p1

    goto :goto_1

    :cond_2
    move-object v13, v2

    .line 14
    :goto_1
    new-instance v14, Lio/dcloud/feature/ui/c;

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v3, v13

    move-object v4, v8

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lio/dcloud/feature/ui/c;-><init>(Lio/dcloud/feature/ui/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 17
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IFrameView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 18
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    move-object/from16 v2, p2

    .line 19
    invoke-virtual/range {v0 .. v5}, Lio/dcloud/feature/ui/b;->a(Landroid/content/Context;Lio/dcloud/feature/ui/a;Lio/dcloud/common/DHInterface/IWebview;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 21
    invoke-interface/range {p3 .. p3}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v12, :cond_4

    invoke-virtual {v9}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v14, Lio/dcloud/feature/ui/c;->G:Z

    .line 22
    iput-boolean v2, v14, Lio/dcloud/feature/ui/c;->J:Z

    .line 23
    invoke-virtual {v9, v14}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 24
    invoke-virtual {v14, v7, v13}, Lio/dcloud/feature/ui/c;->a(Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v6, v14}, Lio/dcloud/feature/ui/a;->e(Lio/dcloud/feature/ui/c;)V

    move-object/from16 v0, p1

    .line 26
    invoke-virtual {v6, v0, v14, v1}, Lio/dcloud/feature/ui/a;->a(Ljava/lang/String;Lio/dcloud/feature/ui/c;I)V

    .line 27
    new-instance v0, Lio/dcloud/feature/ui/e$a;

    move-object v1, p0

    invoke-direct {v0, p0, v6, v14}, Lio/dcloud/feature/ui/e$a;-><init>(Lio/dcloud/feature/ui/e;Lio/dcloud/feature/ui/a;Lio/dcloud/feature/ui/c;)V

    invoke-static {v0, v10}, Lio/dcloud/common/adapter/util/MessageHandler;->sendMessage(Lio/dcloud/common/adapter/util/MessageHandler$IMessages;Ljava/lang/Object;)V

    return-void
.end method
