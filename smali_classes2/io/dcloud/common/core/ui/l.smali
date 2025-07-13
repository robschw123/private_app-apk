.class public Lio/dcloud/common/core/ui/l;
.super Lio/dcloud/common/DHInterface/AbsMgr;

# interfaces
.implements Lio/dcloud/common/DHInterface/IMgr$WindowEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/common/core/ui/l$m;
    }
.end annotation


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lio/dcloud/common/core/ui/a;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/common/core/ui/l$m;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;

.field d:Ljava/lang/Runnable;

.field e:Ljava/lang/Runnable;

.field f:Z

.field g:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Lio/dcloud/common/DHInterface/ICore;)V
    .locals 2

    .line 1
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const-string v1, "windowmgr"

    invoke-direct {p0, p1, v1, v0}, Lio/dcloud/common/DHInterface/AbsMgr;-><init>(Lio/dcloud/common/DHInterface/ICore;Ljava/lang/String;Lio/dcloud/common/DHInterface/IMgr$MgrType;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    const/4 p1, 0x0

    .line 1220
    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    .line 1664
    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    .line 1779
    iput-boolean v0, p0, Lio/dcloud/common/core/ui/l;->f:Z

    .line 2394
    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->g:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private a()Lio/dcloud/common/core/ui/b;
    .locals 1

    .line 946
    invoke-direct {p0}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private a(ILio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;I)V
    .locals 2

    .line 419
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 422
    :cond_0
    new-instance v0, Lio/dcloud/common/core/ui/l$j;

    invoke-direct {v0, p0, p2, p3, p4}, Lio/dcloud/common/core/ui/l$j;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;I)V

    iput-object v0, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    .line 432
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    int-to-long v0, p1

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(ILio/dcloud/common/core/ui/a;Ljava/lang/String;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V
    .locals 20

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    move-object/from16 v4, p5

    move-object/from16 v11, p7

    .line 312
    invoke-interface/range {p5 .. p5}, Lio/dcloud/common/DHInterface/IApp;->obtainLaunchPageStateListener()Lio/dcloud/common/DHInterface/IWebviewStateListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    .line 314
    invoke-interface {v0, v3, v11}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v0, v2, v1}, Lio/dcloud/common/util/PdrUtil;->parseBoolean(Ljava/lang/String;ZZ)Z

    move-result v0

    .line 316
    invoke-interface/range {p5 .. p5}, Lio/dcloud/common/DHInterface/IApp;->obtainLaunchPageStateListener()Lio/dcloud/common/DHInterface/IWebviewStateListener;

    move-result-object v3

    invoke-interface {v11, v3}, Lio/dcloud/common/DHInterface/IWebview;->addStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V

    move/from16 v16, v0

    goto :goto_0

    :cond_0
    const/16 v16, 0x1

    :goto_0
    const-string v0, "delay"

    .line 318
    invoke-interface {v4, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "autoclose"

    .line 320
    invoke-interface {v4, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 326
    invoke-static/range {p3 .. p3}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "w2a_autoclose"

    invoke-interface {v4, v5}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 327
    :goto_1
    invoke-interface/range {p5 .. p5}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "target"

    .line 328
    invoke-interface {v4, v7}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 329
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v7, "default"

    :cond_2
    const/16 v8, 0x1770

    if-nez v3, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    const-string v2, "__from_stream_open_timeout__"

    .line 334
    invoke-virtual {v6, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v8, "__from_stream_open_autoclose__"

    .line 335
    invoke-virtual {v6, v8, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    const-string v1, "id:"

    .line 336
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v19, :cond_5

    const/16 v2, 0x2710

    const/16 v12, 0x2710

    goto :goto_2

    :cond_5
    move v12, v2

    :goto_2
    const-string v1, "w2a_delay"

    .line 340
    invoke-interface {v4, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v5, :cond_6

    move v10, v1

    goto :goto_3

    :cond_6
    move v10, v0

    .line 344
    :goto_3
    invoke-static/range {p3 .. p3}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static/range {p6 .. p6}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "rendering"

    .line 345
    iput-object v1, v13, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    goto :goto_4

    :cond_7
    const-string v1, "loaded"

    .line 347
    iput-object v1, v13, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    :goto_4
    const-string v1, "event"

    .line 350
    invoke-interface {v4, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 352
    iput-object v1, v13, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    .line 354
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_need_auto_close_splash = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ";_delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ";appid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";f_event="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v13, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Main_Path"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    new-instance v9, Lio/dcloud/common/core/ui/l$i;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v7

    move/from16 v3, v19

    move-object/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p1

    move-object v13, v9

    move-object/from16 v9, p4

    move/from16 p1, v10

    move-object v14, v11

    move v15, v12

    move-wide/from16 v11, v17

    invoke-direct/range {v0 .. v12}, Lio/dcloud/common/core/ui/l$i;-><init>(Lio/dcloud/common/core/ui/l;Ljava/lang/String;ZLio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;ILio/dcloud/common/core/ui/b;IJ)V

    invoke-interface {v14, v13}, Lio/dcloud/common/DHInterface/IWebview;->addStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V

    move-object/from16 v0, p0

    if-eqz v19, :cond_9

    move/from16 v3, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move v4, v15

    .line 413
    invoke-direct {v0, v4, v1, v2, v3}, Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;I)V

    goto :goto_5

    :cond_9
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    :goto_5
    if-eqz v16, :cond_a

    .line 417
    iget-boolean v3, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v3, :cond_a

    .line 418
    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    :cond_a
    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .locals 25

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    const-string v7, "arguments"

    const-string v1, "StreamSDK"

    const-string v2, "come into activeAppRootView"

    .line 33
    invoke-static {v1, v2}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_25

    .line 39
    move-object v10, v0

    check-cast v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 40
    aget-object v0, v10, v11

    move-object v12, v0

    check-cast v12, Lio/dcloud/common/DHInterface/IApp;

    const/4 v8, 0x0

    .line 42
    invoke-static {v8}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/dcloud/e/c/g;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    array-length v0, v10

    const/4 v13, 0x2

    const/4 v14, 0x3

    if-lt v0, v14, :cond_1

    aget-object v0, v10, v13

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v15, v0

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    .line 46
    :goto_0
    array-length v0, v10

    const/4 v6, 0x4

    if-lt v0, v6, :cond_2

    aget-object v0, v10, v14

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "default"

    :goto_1
    move-object v5, v0

    const/4 v4, 0x1

    .line 47
    aget-object v0, v10, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 48
    invoke-interface {v12}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    .line 49
    iget-object v0, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/dcloud/common/core/ui/a;

    const/16 v1, 0xa

    move/from16 v14, p1

    if-ne v1, v14, :cond_3

    const-string v0, "winmgr"

    const-string v1, "RESTART_APP_ROOT_VIEW"

    .line 52
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/a;->b()V

    .line 55
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/a;->k()V

    .line 56
    invoke-virtual {v2, v12}, Lio/dcloud/common/core/ui/a;->onAppStart(Lio/dcloud/common/DHInterface/IApp;)V

    .line 57
    invoke-direct {v9, v2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/a;)V

    .line 59
    :cond_3
    invoke-interface {v12}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "__from_stream_open_style__"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 63
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :try_start_1
    invoke-interface {v12}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 66
    :cond_4
    :try_start_2
    sget-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->LaunchWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v12, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v4, :cond_6

    .line 68
    :try_start_3
    invoke-direct {v9, v12}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    sget-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->DirectPageJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v12, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_2
    move-object v4, v0

    goto :goto_4

    :cond_5
    const-string v0, "{}"

    .line 71
    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v4, v8

    .line 76
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_6
    :goto_4
    move-object/from16 v19, v4

    .line 79
    sget-object v0, Lio/dcloud/common/util/BaseInfo;->sDefWebViewUserAgent:Ljava/lang/String;

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    invoke-interface {v12}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/adapter/ui/webview/WebViewFactory;->getDefWebViewUA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/dcloud/common/util/BaseInfo;->sDefWebViewUserAgent:Ljava/lang/String;

    .line 83
    :cond_7
    invoke-static {v12}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    const-string v4, "path"

    if-eqz v0, :cond_8

    invoke-static {v12}, Lio/dcloud/common/util/BaseInfo;->isWeexUniJs(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "uniapp_weex_js_service"

    invoke-interface {v12, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    .line 84
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_4
    const-string v0, "_www/app-service.js"

    .line 86
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 88
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5
    const-string v0, "__uniapp__service"

    const-string v20, "__uniapp__service"

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move-object/from16 v21, v2

    move-object v2, v12

    move-object v11, v3

    move-object/from16 v3, v21

    move-object v13, v4

    const/16 v22, 0x1

    move-object v4, v0

    move-object/from16 v23, v5

    move-object/from16 v5, v20

    move-object/from16 v6, v17

    .line 91
    invoke-virtual/range {v1 .. v6}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_6

    :cond_8
    move-object/from16 v21, v2

    move-object v11, v3

    move-object v13, v4

    move-object/from16 v23, v5

    const/16 v22, 0x1

    .line 93
    :goto_6
    invoke-virtual/range {v21 .. v21}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v9, v12, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Landroid/view/ViewGroup;)V

    move-object/from16 v6, v21

    .line 94
    invoke-direct {v9, v12, v6}, Lio/dcloud/common/core/ui/l;->b(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)Lio/dcloud/common/core/ui/c;

    move-result-object v1

    .line 95
    iget-object v0, v6, Lio/dcloud/common/core/ui/a;->f:Lio/dcloud/common/core/ui/b;

    const-string v2, "uni_restart_to_direct"

    .line 97
    invoke-interface {v12, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v3, "debugRefresh"

    .line 98
    invoke-interface {v12, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    sget-boolean v17, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz v17, :cond_9

    sget-object v17, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadDexDirectInfo:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 102
    sget-object v5, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadDexDirectInfo:Ljava/lang/String;

    .line 103
    sput-object v8, Lio/src/dcloud/adapter/DCloudBaseActivity;->loadDexDirectInfo:Ljava/lang/String;

    .line 104
    invoke-interface {v12, v3, v5}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 111
    :cond_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 113
    :try_start_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6

    .line 115
    :try_start_6
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    .line 117
    :catch_3
    :try_start_7
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_5

    move-object v3, v5

    .line 120
    :goto_7
    :try_start_8
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_9

    :catch_4
    move-object v5, v8

    goto :goto_9

    :catch_5
    move-object v3, v8

    goto :goto_8

    :catch_6
    :cond_a
    move-object v2, v8

    move-object v3, v2

    :goto_8
    move-object v5, v3

    :goto_9
    const-string v7, ""

    if-eqz v0, :cond_b

    .line 125
    invoke-direct {v9, v12}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 127
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    move-object v14, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 p2, v7

    const/4 v4, 0x0

    const/4 v13, 0x1

    goto/16 :goto_15

    :cond_b
    const-string v8, "id"

    if-eqz v4, :cond_f

    .line 131
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    :try_start_9
    const-string v0, "1"

    .line 133
    invoke-virtual {v14, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "render"
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_9

    move/from16 v20, v4

    :try_start_a
    const-string v4, "always"

    .line 134
    invoke-virtual {v14, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lio/dcloud/common/util/BaseInfo;->sCacheFsAppsPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v4, Lio/dcloud/common/adapter/util/DeviceInfo;->sSeparatorChar:C

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lio/dcloud/common/util/BaseInfo;->REAL_PRIVATE_WWW_DIR:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".js"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 139
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 140
    invoke-virtual {v4, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_8

    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    move-object/from16 v21, v5

    :try_start_b
    const-string v5, "query"

    .line 142
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_a

    :cond_c
    move-object/from16 v21, v5

    :cond_d
    :goto_a
    const-string v0, "uniNView"

    .line 147
    invoke-virtual {v14, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    goto :goto_c

    :cond_e
    move-object/from16 v21, v5

    goto :goto_d

    :catch_8
    move-exception v0

    goto :goto_b

    :catch_9
    move-exception v0

    move/from16 v20, v4

    :goto_b
    move-object/from16 v21, v5

    .line 151
    :goto_c
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_d

    :cond_f
    move/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v14, v19

    .line 154
    :goto_d
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x2

    .line 158
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v18, 0x0

    aput-object v13, v4, v18

    const/4 v13, 0x1

    aput-object v12, v4, v13

    new-array v3, v5, [Ljava/lang/Object;

    aget-object v19, v10, v13

    aput-object v19, v3, v18

    aput-object v14, v3, v13

    aput-object v3, v4, v5

    const/4 v3, 0x3

    aput-object v6, v4, v3

    .line 159
    invoke-virtual {v9, v0, v3, v4}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/b;

    .line 169
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->isUniWebView()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 170
    sget-object v3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    const/16 v19, 0x0

    aput-object v5, v4, v19

    const-string v5, "UI"

    aput-object v5, v4, v13

    const/4 v5, 0x2

    aput-object v7, v4, v5

    move-object/from16 p2, v7

    const/4 v5, 0x3

    const/4 v7, 0x0

    aput-object v7, v4, v5

    invoke-virtual {v9, v3, v13, v4}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_10
    move-object/from16 p2, v7

    const/4 v7, 0x0

    .line 173
    :goto_e
    invoke-virtual {v0}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    .line 175
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_12

    if-nez v15, :cond_11

    .line 177
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v13, v7}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_f

    .line 179
    :cond_11
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 182
    :cond_12
    :goto_f
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 183
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/dcloud/common/DHInterface/IWebview;->setFrameId(Ljava/lang/String;)V

    goto :goto_10

    .line 185
    :cond_13
    invoke-interface {v3, v11}, Lio/dcloud/common/DHInterface/IWebview;->setFrameId(Ljava/lang/String;)V

    :goto_10
    move-object/from16 v4, v23

    .line 187
    invoke-interface {v3, v4}, Lio/dcloud/common/DHInterface/IWebview;->setWebViewCacheMode(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    iput-object v11, v4, Lio/dcloud/common/adapter/util/ViewOptions;->name:Ljava/lang/String;

    .line 189
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    iput-boolean v15, v4, Lio/dcloud/common/adapter/util/ViewOptions;->mUseHardwave:Z

    .line 190
    invoke-static {v11}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "plusrequire"

    .line 191
    invoke-interface {v3, v4}, Lio/dcloud/common/DHInterface/IWebview;->getWebviewProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    const-string v4, "_www/__wap2app.js"

    const/4 v7, 0x0

    .line 192
    invoke-interface {v12, v7, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    const-string v4, "_www/__wap2appconfig.js"

    .line 193
    invoke-interface {v12, v7, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    goto :goto_11

    :cond_14
    const/4 v7, 0x0

    :goto_11
    const-string v4, "_www/server_index_append.js"

    .line 196
    invoke-interface {v12, v7, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v13}, Lio/dcloud/common/DHInterface/IWebview;->setPreloadJsFile(Ljava/lang/String;Z)V

    const-string v4, "_www/server_index_append.css"

    .line 198
    invoke-interface {v12, v7, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 200
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 202
    invoke-interface {v3, v4, v7}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 203
    :cond_15
    invoke-interface {v12}, Lio/dcloud/common/DHInterface/IApp;->obtainRunningAppMode()B

    move-result v5

    if-ne v5, v13, :cond_16

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 204
    invoke-interface {v3, v4, v7}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_16
    const-string v4, "_www/__wap2app.css"

    .line 206
    invoke-interface {v12, v7, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 207
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 209
    invoke-interface {v3, v4, v7}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_12
    const-string v4, "appendCss"

    .line 213
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 214
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v7, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_18
    const-string v4, "preloadcss"

    .line 216
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 217
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v7, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_19
    move-object v4, v7

    .line 219
    :goto_13
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 220
    invoke-interface {v3, v7, v4}, Lio/dcloud/common/DHInterface/IWebview;->setCssFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    const-string v4, "appendJs"

    .line 224
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 225
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v7, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_14

    :cond_1b
    const-string v4, "preloadjs"

    .line 227
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 228
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v7, v4}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_14

    :cond_1c
    move-object v8, v7

    .line 230
    :goto_14
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 231
    invoke-interface {v3, v8}, Lio/dcloud/common/DHInterface/IWebview;->appendPreloadJsFile(Ljava/lang/String;)V

    :cond_1d
    move-object v14, v3

    const/4 v4, 0x1

    :goto_15
    if-eqz v1, :cond_20

    if-eqz v20, :cond_1f

    if-eqz v2, :cond_1f

    const-string v3, "isTab"

    .line 237
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 238
    invoke-virtual {v1, v0}, Lio/dcloud/common/core/ui/c;->c(Lio/dcloud/common/core/ui/b;)V

    goto :goto_16

    .line 240
    :cond_1e
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    move-object/from16 v8, v21

    invoke-virtual {v1, v8}, Lio/dcloud/common/core/ui/c;->checkPagePathIsTab(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 241
    invoke-virtual {v1, v0}, Lio/dcloud/common/core/ui/c;->c(Lio/dcloud/common/core/ui/b;)V

    goto :goto_16

    .line 245
    :cond_1f
    invoke-virtual {v1, v0}, Lio/dcloud/common/core/ui/c;->c(Lio/dcloud/common/core/ui/b;)V

    .line 249
    :cond_20
    :goto_16
    invoke-direct {v9, v12}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v1

    if-eqz v1, :cond_21

    if-eqz v4, :cond_24

    goto :goto_17

    :cond_21
    invoke-interface {v12}, Lio/dcloud/common/DHInterface/IApp;->manifestBeParsed()Z

    move-result v1

    if-eqz v1, :cond_24

    :goto_17
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v6

    move-object v4, v11

    move-object v5, v0

    move-object v15, v6

    move-object v6, v12

    move-object/from16 v8, p2

    move-object/from16 v7, v16

    move-object/from16 v24, v8

    move-object v8, v14

    .line 250
    invoke-direct/range {v1 .. v8}, Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/core/ui/a;Ljava/lang/String;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " launchPage ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v10, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Main_Path"

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    aget-object v1, v10, v13

    const-string v2, "about:blank"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "<html><head><meta charset=\"utf-8\"></head><body></body><html>"

    const-string v2, "text/html"

    const-string v3, "utf-8"

    move-object/from16 v4, v24

    .line 253
    invoke-interface {v14, v4, v1, v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->loadContentData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 255
    :cond_22
    aget-object v1, v10, v13

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    :goto_18
    const-string v1, "splashscreen"

    .line 257
    invoke-interface {v12, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 259
    iput-byte v13, v0, Lio/dcloud/common/core/ui/b;->s:B

    goto :goto_19

    :cond_23
    const/4 v1, 0x0

    .line 261
    iput-byte v1, v0, Lio/dcloud/common/core/ui/b;->s:B

    goto :goto_19

    :cond_24
    move-object v15, v6

    .line 264
    :goto_19
    invoke-virtual {v9, v12, v14}, Lio/dcloud/common/core/ui/l;->b(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 265
    iget-object v0, v15, Lio/dcloud/common/core/ui/a;->e:Lio/dcloud/common/core/ui/b;

    if-nez v0, :cond_26

    .line 266
    invoke-virtual {v9, v12, v14}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_1a

    .line 268
    :cond_25
    instance-of v0, v0, Ljava/lang/String;

    :cond_26
    :goto_1a
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Landroid/view/ViewGroup;)V
    .locals 6

    .line 299
    invoke-static {}, Lio/dcloud/common/util/BaseInfo;->isUniNViewBackgroud()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/dcloud/common/util/BaseInfo;->isWeexUniJs(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 302
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "template"

    .line 304
    :try_start_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "path"

    .line 305
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "nvue_service.js"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 307
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const/4 v1, 0x2

    aput-object p2, v2, v1

    const/4 p2, 0x3

    const-string v5, "__uniapp__nvue"

    aput-object v5, v2, p2

    .line 310
    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "weex,io.dcloud.feature.weex.WeexFeature"

    aput-object p1, v0, v4

    const-string p1, "createServiceUniNView"

    aput-object p1, v0, v1

    aput-object v2, v0, p2

    const/16 p1, 0xa

    invoke-virtual {p0, v5, p1, v0}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 452
    iget-boolean v0, p2, Lio/dcloud/common/core/ui/a;->q:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    invoke-virtual {p2}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 459
    :cond_1
    new-instance v1, Lio/dcloud/common/core/ui/l$k;

    invoke-direct {v1, p0, v0, p2, p1}, Lio/dcloud/common/core/ui/l$k;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/DHInterface/IApp;)V

    .line 484
    iget-object p1, p0, Lio/dcloud/common/core/ui/l;->e:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 485
    iput-boolean p2, p0, Lio/dcloud/common/core/ui/l;->f:Z

    .line 486
    invoke-static {p1}, Lio/dcloud/common/adapter/util/MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    const-wide/16 p1, 0x64

    .line 488
    invoke-static {v1, p1, p2}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/DHInterface/IApp;)V
    .locals 6

    .line 899
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    .line 900
    iget-boolean v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    if-nez v1, :cond_0

    return-void

    .line 903
    :cond_0
    iget-object v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    invoke-static {v1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 904
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v1

    iget-boolean v1, v1, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    if-nez v1, :cond_1

    return-void

    .line 908
    :cond_1
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/adapter/util/DeviceInfo;->getStatusHeight(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v2, v1, :cond_7

    .line 910
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 911
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/common/util/AppStatusBarManager;->getStatusBarDefaultColor()I

    move-result p2

    .line 912
    iget-object v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 915
    :try_start_0
    iget-object v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 917
    :catch_0
    iget-object v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v3

    .line 919
    :goto_0
    invoke-static {v3}, Lio/dcloud/common/util/PdrUtil;->checkStatusbarColor(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move p2, v3

    .line 923
    :cond_2
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 924
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    return-void

    .line 927
    :cond_3
    iget v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-nez v4, :cond_4

    return-void

    .line 930
    :cond_4
    new-instance v4, Lcom/dcloud/android/widget/StatusBarView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/dcloud/android/widget/StatusBarView;-><init>(Landroid/content/Context;)V

    .line 931
    invoke-virtual {v4, v1}, Lcom/dcloud/android/widget/StatusBarView;->setStatusBarHeight(I)V

    .line 932
    invoke-virtual {v4, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 933
    invoke-virtual {v4, v2}, Landroid/view/View;->setId(I)V

    .line 935
    move-object p2, p1

    check-cast p2, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 936
    iget-boolean v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbarDodifyHeight:Z

    if-eqz v1, :cond_5

    .line 937
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    sget v5, Lio/dcloud/common/adapter/util/DeviceInfo;->sStatusBarHeight:I

    add-int/2addr v2, v5

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 938
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 940
    :cond_5
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 942
    :goto_1
    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lio/dcloud/common/util/TitleNViewUtil;->isTitleTypeForDef(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 945
    :cond_6
    new-instance v0, Lio/dcloud/common/core/ui/l$c;

    invoke-direct {v0, p0, p1}, Lio/dcloud/common/core/ui/l$c;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/a;)V
    .locals 1

    .line 433
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 434
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 435
    iput-object p1, p0, Lio/dcloud/common/core/ui/l;->d:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V
    .locals 32

    move-object/from16 v15, p1

    const-string v1, "titlesize"

    const-string v2, "titlecolor"

    const-string v3, "titleSize"

    const-string v4, "titleColor"

    const-string v5, "titleText"

    const-string v6, "titletext"

    .line 1071
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v0, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v0, :cond_14

    .line 1072
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    iget-object v14, v0, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    .line 1073
    invoke-static/range {p1 .. p1}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNViewId(Lio/dcloud/common/DHInterface/IFrameView;)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    const-string v13, "type"

    const/16 v16, 0x0

    const-string v0, ""

    if-eqz v14, :cond_e

    .line 1075
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 1077
    :try_start_0
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "undefined"

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1078
    :cond_0
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1079
    :cond_1
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 1082
    :cond_2
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1083
    :cond_3
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1084
    :cond_4
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "#000000"

    .line 1085
    invoke-virtual {v14, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1087
    :cond_5
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1088
    :cond_6
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1089
    :cond_7
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "17px"

    .line 1090
    invoke-virtual {v14, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1093
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1097
    :cond_8
    :goto_0
    :try_start_2
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1098
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1099
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 1100
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v8, v0

    goto :goto_2

    .line 1102
    :cond_9
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1103
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1104
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_a

    .line 1105
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 1109
    :cond_a
    :goto_2
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1111
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_b
    move-object v2, v0

    .line 1113
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1115
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_c
    move-object v1, v0

    .line 1117
    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "transparent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1118
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    .line 1120
    :try_start_3
    invoke-static {v2, v0}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 1122
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_3
    const-string v0, "titleOverflow"

    .line 1126
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "titleAlign"

    .line 1127
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "titleIcon"

    .line 1128
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "titleIconRadius"

    .line 1129
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "subtitleText"

    .line 1130
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "subtitleColor"

    .line 1131
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "subtitleSize"

    .line 1132
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "subtitleOverflow"

    .line 1133
    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "titleIconWidth"

    .line 1134
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object v11, v9

    move-object v12, v10

    move-object v9, v5

    move-object v10, v6

    move-object v6, v0

    move-object v5, v1

    move-object v0, v3

    move-object v3, v8

    move-object v8, v4

    move-object v4, v2

    goto :goto_4

    :cond_e
    move-object v9, v0

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object/from16 v17, v12

    move-object/from16 v18, v17

    move-object v3, v8

    move-object/from16 v4, v16

    move-object v5, v4

    move-object v6, v5

    move-object/from16 v8, v18

    .line 1137
    :goto_4
    iget-object v1, v15, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    move-object/from16 v19, v13

    const/4 v13, 0x4

    move-object/from16 v20, v14

    new-array v14, v13, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v14, v22

    const/4 v13, 0x1

    const-string v23, "nativeobj"

    aput-object v23, v14, v13

    const-string v24, "show"

    const/4 v13, 0x2

    aput-object v24, v14, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v12

    const-string v12, "[\'"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\',\'"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\']"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1138
    invoke-static {v12}, Lio/dcloud/common/util/JSONUtil;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v14, v13

    const/4 v12, 0x1

    .line 1139
    invoke-virtual {v1, v2, v12, v14}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1142
    iget-object v1, v15, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    .line 1143
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v21

    aput-object v21, v14, v22

    aput-object v23, v14, v12

    const-string v21, "addNativeView"

    const/4 v13, 0x2

    aput-object v21, v14, v13

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v15, v13, v22

    aput-object v7, v13, v12

    const/4 v12, 0x3

    aput-object v13, v14, v12

    const/16 v12, 0xa

    .line 1144
    invoke-virtual {v1, v2, v12, v14}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1147
    iget-object v1, v15, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-static {v1, v2, v15, v7}, Lio/dcloud/common/util/TitleNViewUtil;->getTitleNView(Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IFrameView;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1148
    instance-of v2, v1, Lio/dcloud/common/DHInterface/ITitleNView;

    if-eqz v2, :cond_14

    .line 1149
    move-object v14, v1

    check-cast v14, Lio/dcloud/common/DHInterface/ITitleNView;

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v7, v0

    move-object/from16 v12, v25

    move-object/from16 v15, v19

    move-object/from16 v13, v17

    move-object v0, v14

    move-object/from16 v15, v20

    move-object/from16 v14, v18

    .line 1153
    invoke-static/range {v1 .. v14}, Lio/dcloud/common/util/TitleNViewUtil;->drawTitle(Lio/dcloud/common/DHInterface/IFrameView;Lio/dcloud/common/DHInterface/ITitleNView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/TitleNViewUtil;->setTitleNViewPadding(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V

    .line 1159
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz p2, :cond_f

    invoke-virtual/range {p2 .. p2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    goto :goto_5

    :cond_f
    move-object/from16 v2, v16

    :goto_5
    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/TitleNViewUtil;->setButtons(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 1162
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/TitleNViewUtil;->setBackButton(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;I)V

    const-string v1, "splitLine"

    .line 1165
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1166
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v27

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v29

    move-object/from16 v1, v19

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/16 v28, 0x0

    const/16 v30, 0x1

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v31}, Lio/dcloud/common/util/TitleNViewUtil;->setSplitLine(Lio/dcloud/common/DHInterface/ITitleNView;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 1170
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lio/dcloud/common/util/TitleNViewUtil;->setProgress(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    .line 1173
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/TitleNViewUtil;->setHomeButton(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;I)V

    .line 1176
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lio/dcloud/common/util/TitleNViewUtil;->setCapsuleButtonStyle(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    const-string v1, "searchInput"

    .line 1178
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1179
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz p2, :cond_11

    invoke-virtual/range {p2 .. p2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v16

    :cond_11
    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lio/dcloud/common/util/TitleNViewUtil;->setSearchInput(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    :cond_12
    const-string v1, "backgroundRepeat"

    .line 1182
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    if-eqz v0, :cond_13

    .line 1184
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/ITitleNView;->setBackgroundRepeat(Ljava/lang/String;)V

    :cond_13
    const-string v1, "shadow"

    .line 1187
    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 1188
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lio/dcloud/common/util/TitleNViewUtil;->setShadow(Lio/dcloud/common/DHInterface/ITitleNView;Lorg/json/JSONObject;)V

    :cond_14
    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/b;Z)V
    .locals 21

    move-object/from16 v0, p1

    .line 843
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v1

    .line 844
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v3

    .line 845
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v5

    .line 846
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v12

    .line 847
    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    .line 848
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Lio/dcloud/common/core/ui/a;

    .line 849
    invoke-virtual {v13}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v7

    .line 850
    invoke-virtual {v6, v7}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 851
    invoke-virtual {v6, v12}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 852
    iput v2, v12, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 853
    iput v2, v12, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 854
    iput v2, v12, Lio/dcloud/common/adapter/util/ViewRect;->anim_top:I

    .line 855
    iput v2, v12, Lio/dcloud/common/adapter/util/ViewRect;->anim_left:I

    .line 856
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setY(Landroid/view/View;F)V

    .line 857
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v9}, Lio/dcloud/nineoldandroids/view/ViewHelper;->setX(Landroid/view/View;F)V

    .line 858
    iput v1, v12, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 859
    iput v3, v12, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 860
    iget v15, v6, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    .line 861
    iget v14, v6, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    .line 862
    iget v11, v6, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 863
    iget v10, v6, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 864
    invoke-static {v6, v7, v6}, Lio/dcloud/common/adapter/util/ViewOptions;->createViewOptionsData(Lio/dcloud/common/adapter/util/ViewOptions;Lio/dcloud/common/adapter/util/ViewRect;Lio/dcloud/common/adapter/util/ViewRect;)Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v7

    invoke-virtual {v5, v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setFrameOptions_Birth(Lio/dcloud/common/adapter/util/ViewOptions;)V

    .line 865
    iput-boolean v2, v6, Lio/dcloud/common/adapter/util/ViewRect;->allowUpdate:Z

    .line 866
    iget v2, v12, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    iput v2, v6, Lio/dcloud/common/adapter/util/ViewOptions;->maskColor:I

    .line 867
    iput-boolean v4, v5, Lio/dcloud/common/adapter/ui/AdaFrameItem;->mNeedOrientationUpdate:Z

    const-string v7, "left"

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v2, 0x0

    move-object v6, v12

    move v5, v10

    move v10, v2

    move v2, v11

    move v11, v4

    .line 868
    invoke-virtual/range {v6 .. v11}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    const-string v7, "top"

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 869
    invoke-virtual/range {v6 .. v11}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    const-string v7, "width"

    .line 870
    invoke-virtual/range {v6 .. v11}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    const-string v7, "height"

    .line 871
    invoke-virtual/range {v6 .. v11}, Lio/dcloud/common/adapter/util/ViewRect;->checkValueIsPercentage(Ljava/lang/String;IIZZ)V

    .line 874
    invoke-virtual {v13}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    iget v4, v4, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 875
    invoke-virtual {v13}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    iget v6, v6, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move v7, v14

    move-object/from16 v14, p0

    move v8, v15

    move/from16 v16, v7

    move/from16 v17, v2

    move/from16 v18, v5

    move/from16 v19, v4

    move/from16 v20, v6

    .line 876
    invoke-direct/range {v14 .. v20}, Lio/dcloud/common/core/ui/l;->a(IIIIII)Z

    move-result v4

    const-string v6, "winmgr"

    if-eqz v4, :cond_0

    const-string v1, "createWindow use LayoutParams.MATCH_PARENT !"

    .line 879
    invoke-static {v6, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 881
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 883
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v4

    invoke-static {v8, v7, v2, v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->createLayoutParams(IIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_1

    .line 886
    invoke-virtual {v0, v1, v3}, Lio/dcloud/common/core/ui/b;->a(II)V

    goto :goto_0

    :cond_1
    add-int v15, v8, v2

    if-gt v15, v1, :cond_2

    add-int v14, v7, v5

    if-le v14, v3, :cond_3

    .line 888
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLayoutParams allW="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";pdrW="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";pdrH="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";allH="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v14, v7, v5

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/dcloud/common/core/ui/b;->a(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/b;ZLorg/json/JSONObject;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "backgroundColor"

    const-string v4, "backgroundcolor"

    if-eqz v2, :cond_e

    .line 1011
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1013
    :try_start_0
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1014
    :cond_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1015
    :cond_1
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "#F8F8F8"

    .line 1016
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1019
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1021
    :cond_2
    :goto_0
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1022
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1023
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v3, v0

    const-string v0, "type"

    .line 1027
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "transparent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "absolute"

    if-eqz v4, :cond_4

    .line 1029
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 1031
    :try_start_1
    invoke-static {v3, v0}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    .line 1033
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1036
    :cond_4
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "float"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    :goto_1
    move-object v0, v3

    goto :goto_2

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1040
    invoke-static {v3, v0}, Lio/dcloud/common/util/TitleNViewUtil;->changeColorAlpha(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const-string v5, "dock"

    .line 1044
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lio/dcloud/common/adapter/util/DeviceInfo;->getStatusHeight(Landroid/content/Context;)I

    move-result v4

    .line 1045
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    iget-boolean v6, v6, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    const/4 v7, 0x0

    if-eqz p2, :cond_7

    if-nez v6, :cond_7

    const/4 v6, -0x1

    if-eq v6, v4, :cond_7

    int-to-float v4, v4

    .line 1048
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v6

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v6

    div-float/2addr v4, v6

    float-to-int v4, v4

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    .line 1051
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v6

    sget-object v8, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v6, v8}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1052
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v9, v8, :cond_8

    if-eqz v6, :cond_8

    const-string v8, "mode"

    .line 1053
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "parent"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v4, 0x0

    :cond_8
    const/4 v6, 0x0

    const-string v8, "tags"

    .line 1058
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1059
    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1064
    :cond_9
    iget-object v8, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->mWindowMgr:Lio/dcloud/common/core/ui/l;

    sget-object v10, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v11, 0xa

    const/4 v12, 0x4

    new-array v13, v12, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "nativeobj"

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string v14, "View"

    aput-object v14, v13, v9

    const/4 v14, 0x7

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v1, v14, v7

    .line 1065
    invoke-virtual/range {p1 .. p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    aput-object v1, v14, v15

    aput-object p4, v14, v9

    const/4 v1, 0x3

    aput-object p4, v14, v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "{\'top\':\'0px\',\'left\':\'0px\',\'height\':\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x2c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "px\',\'width\':\'100%\',"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ""

    if-lez v4, :cond_a

    .line 1066
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\'statusbar\':{\'background\':\'"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\',\'backgroundnoalpha\':\'"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'},"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_a
    move-object v3, v9

    :goto_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "blurEffect"

    .line 1067
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\'blurEffect\':\'"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\',"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_b
    move-object v3, v9

    :goto_5
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'backgroundColor\':\'"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',\'position\':\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\',\'dock\':\'top\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "backgroundImage"

    .line 1068
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "\'"

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",\'backgroundImage\':\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_c
    move-object v0, v9

    :goto_6
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "redDotColor"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ",\'redDotColor\':\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_d
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1069
    invoke-static {v0}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    aput-object v0, v14, v12

    const/4 v0, 0x5

    aput-object v6, v14, v0

    const/4 v0, 0x6

    const-string v2, "TitleNView"

    aput-object v2, v14, v0

    aput-object v14, v13, v1

    .line 1070
    invoke-virtual {v8, v10, v11, v13}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_e
    return-void
.end method

.method private a(Lio/dcloud/common/core/ui/b;[Ljava/lang/Object;)V
    .locals 8

    .line 960
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v0

    iget-boolean v0, v0, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    .line 964
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 965
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p2

    sget-object v1, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->TitleNViewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {p2, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v2

    .line 966
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    .line 969
    :cond_0
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v1

    const/4 v4, 0x4

    const-string v5, "navigationbar"

    const-string v6, "titleNView"

    if-ne v1, v4, :cond_2

    .line 970
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object p2

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 971
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    sget-object v3, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v1, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 973
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 974
    invoke-static {v1, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_2

    .line 975
    :cond_1
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 976
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto/16 :goto_2

    .line 981
    :cond_2
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v1

    const/4 v4, 0x5

    const/4 v7, 0x1

    if-ne v1, v4, :cond_5

    .line 982
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 983
    array-length v3, p2

    if-le v3, v7, :cond_4

    .line 984
    aget-object p2, p2, v7

    check-cast p2, Lorg/json/JSONObject;

    if-eqz p2, :cond_4

    .line 986
    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 987
    invoke-static {p2, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_0

    .line 988
    :cond_3
    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 989
    invoke-static {p2, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :cond_4
    :goto_0
    move-object p2, v1

    goto :goto_2

    .line 996
    :cond_5
    array-length v1, p2

    if-le v1, v7, :cond_9

    .line 997
    aget-object v1, p2, v7

    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_7

    .line 999
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1000
    invoke-static {v1, v6}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    .line 1001
    :cond_6
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1002
    invoke-static {v1, v5}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    :cond_7
    move-object v1, v2

    .line 1005
    :goto_1
    array-length v4, p2

    if-le v4, v3, :cond_8

    .line 1006
    aget-object p2, p2, v3

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    :cond_8
    move-object p2, v2

    move-object v2, v1

    goto :goto_2

    :cond_9
    move-object p2, v2

    .line 1010
    :cond_a
    :goto_2
    invoke-direct {p0, p1, v0, v2, p2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;ZLorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V

    return-void
.end method

.method private a(IIIIII)Z
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-ne p3, p5, :cond_0

    if-ne p4, p6, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 892
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "id:"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x3

    .line 893
    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 894
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_0
    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 898
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "second"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_1
    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    if-eqz p4, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lio/dcloud/common/DHInterface/IApp;)Z
    .locals 1

    .line 311
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getOriginalDirectPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "direct_page"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b()Lio/dcloud/common/core/ui/a;
    .locals 3

    .line 57
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    return-object v0
.end method

.method private b(Lio/dcloud/common/DHInterface/IApp;)Lio/dcloud/common/core/ui/b;
    .locals 0

    .line 55
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/core/ui/a;

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private b(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)Lio/dcloud/common/core/ui/c;
    .locals 9

    .line 62
    sget-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->Tabbar:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v0, 0x0

    if-eqz v7, :cond_1

    .line 64
    new-instance v8, Lio/dcloud/common/core/ui/c;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v6, 0x8

    move-object v1, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lio/dcloud/common/core/ui/c;-><init>(Landroid/content/Context;Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;ILorg/json/JSONObject;)V

    const/4 v1, 0x0

    .line 65
    invoke-interface {p1, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    .line 66
    invoke-interface {p1, v3}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v4

    .line 67
    invoke-virtual {v8}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v5

    .line 68
    invoke-virtual {p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v6

    .line 69
    iget v7, v6, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-le v7, v4, :cond_0

    .line 70
    iget-object v7, v6, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v6, v7, v2, v4}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;II)Z

    .line 72
    :cond_0
    invoke-virtual {v5, v6}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 73
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getPopGesture()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v5, Lio/dcloud/common/adapter/util/ViewOptions;->popGesture:Ljava/lang/String;

    .line 74
    invoke-virtual {v8}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p1

    const/4 v2, -0x1

    .line 75
    iput v2, v5, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 76
    iput v2, v5, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    .line 77
    iget v4, v5, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v5, v5, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    invoke-static {p1, v4, v5, v2, v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    .line 78
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 80
    invoke-virtual {p2, v8, p1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object p1, v8, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {p1, v8}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    .line 82
    sget-object p1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v8}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    aput-object v2, p2, v1

    const-string v1, "UI"

    aput-object v1, p2, v3

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, p2, v1

    const/4 v1, 0x3

    aput-object v0, p2, v1

    invoke-virtual {p0, p1, v3, p2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-object v8

    :cond_1
    return-object v0
.end method

.method private b(ILjava/lang/Object;)V
    .locals 13

    .line 1
    instance-of p1, p2, [Ljava/lang/Object;

    if-eqz p1, :cond_6

    .line 2
    check-cast p2, [Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    aget-object v0, p2, p1

    check-cast v0, Lio/dcloud/common/DHInterface/IApp;

    .line 4
    array-length v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-lt v1, v3, :cond_0

    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v5, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/common/core/ui/a;

    .line 7
    iget-object v6, v5, Lio/dcloud/common/core/ui/a;->d:Lio/dcloud/common/core/ui/b;

    const/4 v7, 0x1

    if-nez v6, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x0

    if-nez v6, :cond_3

    .line 10
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v10, "__from_stream_open_style__"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 13
    :try_start_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 14
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    :try_start_1
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    goto :goto_2

    :cond_2
    :try_start_2
    const-string v6, "{}"

    .line 17
    invoke-static {v6}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v6

    move-object v11, v9

    .line 20
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 22
    :goto_3
    sget-object v6, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, p1

    aput-object v0, v10, v7

    new-array v0, v2, [Ljava/lang/Object;

    aget-object v12, p2, v7

    aput-object v12, v0, p1

    aput-object v11, v0, v7

    aput-object v0, v10, v2

    aput-object v5, v10, v3

    .line 27
    invoke-virtual {p0, v6, v3, v10}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lio/dcloud/common/core/ui/b;

    .line 36
    iput-object v6, v5, Lio/dcloud/common/core/ui/a;->d:Lio/dcloud/common/core/ui/b;

    .line 38
    :cond_3
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    .line 40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_5

    if-nez v1, :cond_4

    .line 42
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v7, v9}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_4

    .line 44
    :cond_4
    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1, v9}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 47
    :cond_5
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " launchPage ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, v7

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Main_Path"

    invoke-static {v1, p1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    aget-object p1, p2, v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    if-eqz v8, :cond_6

    .line 51
    invoke-virtual {v5, v6}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    :cond_6
    return-void
.end method


# virtual methods
.method a(ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IEventCallback;[Ljava/lang/Object;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/core/ui/b;
    .locals 29

    move-object/from16 v10, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    const-string v13, "createFrameView"

    .line 514
    invoke-static {v13, v13}, Lio/dcloud/common/util/TestUtil;->record(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 517
    aget-object v0, v11, v14

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const-string v0, "Layout_Path"

    const-string v1, "WindowMgr createWindow"

    .line 520
    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-interface {v8, v14}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v6

    const/4 v5, 0x1

    .line 522
    invoke-interface {v8, v5}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v4

    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x2

    if-ne v7, v0, :cond_0

    .line 527
    iget-object v0, v9, Lio/dcloud/common/core/ui/a;->f:Lio/dcloud/common/core/ui/b;

    goto :goto_0

    :cond_0
    if-ne v7, v2, :cond_1

    .line 529
    iget-object v0, v9, Lio/dcloud/common/core/ui/a;->g:Lio/dcloud/common/core/ui/b;

    goto :goto_0

    :cond_1
    if-ne v7, v3, :cond_2

    .line 531
    iget-object v0, v9, Lio/dcloud/common/core/ui/a;->e:Lio/dcloud/common/core/ui/b;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_6

    .line 534
    new-instance v0, Lio/dcloud/common/core/ui/b;

    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v18, v0

    const/4 v14, 0x2

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v20, v4

    move-object/from16 v4, p3

    move/from16 v5, p1

    move/from16 v21, v6

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lio/dcloud/common/core/ui/b;-><init>(Landroid/content/Context;Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;ILjava/lang/Object;)V

    if-ne v7, v14, :cond_4

    move-object/from16 v0, v18

    .line 536
    iput-object v0, v9, Lio/dcloud/common/core/ui/a;->f:Lio/dcloud/common/core/ui/b;

    const/4 v1, 0x4

    :cond_3
    :goto_1
    const/4 v2, 0x5

    goto :goto_2

    :cond_4
    move-object/from16 v0, v18

    const/4 v1, 0x4

    if-ne v7, v1, :cond_5

    .line 538
    iput-object v0, v9, Lio/dcloud/common/core/ui/a;->g:Lio/dcloud/common/core/ui/b;

    .line 539
    iget-object v2, v9, Lio/dcloud/common/core/ui/a;->e:Lio/dcloud/common/core/ui/b;

    if-eqz v2, :cond_3

    .line 540
    iget-wide v3, v0, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    goto :goto_1

    :cond_5
    const/4 v2, 0x5

    if-ne v7, v2, :cond_7

    .line 544
    iput-object v0, v9, Lio/dcloud/common/core/ui/a;->e:Lio/dcloud/common/core/ui/b;

    move-object v6, v0

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    move/from16 v20, v4

    move/from16 v21, v6

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v14, 0x2

    if-ne v7, v14, :cond_7

    .line 547
    invoke-direct {v10, v8}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v3

    if-eqz v3, :cond_7

    return-object v0

    :cond_7
    :goto_2
    move-object v6, v0

    const/4 v5, 0x0

    .line 553
    :goto_3
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    .line 554
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/DHInterface/AbsMgr;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mWebviewScale:F

    .line 555
    invoke-virtual/range {p3 .. p3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    .line 556
    iget v4, v3, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move/from16 v1, v20

    if-le v4, v1, :cond_8

    .line 557
    iget-object v4, v3, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    move/from16 v2, v21

    invoke-virtual {v3, v4, v2, v1}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;II)Z

    goto :goto_4

    :cond_8
    move/from16 v2, v21

    .line 559
    :goto_4
    invoke-virtual {v0, v3}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 560
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IApp;->getPopGesture()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lio/dcloud/common/adapter/util/ViewOptions;->popGesture:Ljava/lang/String;

    .line 562
    array-length v3, v11

    const-string v4, ""

    const/4 v14, 0x1

    if-le v3, v14, :cond_e

    .line 563
    aget-object v3, v11, v14

    check-cast v3, Lorg/json/JSONObject;

    .line 564
    invoke-virtual {v0, v3}, Lio/dcloud/common/adapter/util/ViewOptions;->updateViewData(Lorg/json/JSONObject;)Z

    if-eqz v3, :cond_b

    const-string v14, "render"

    .line 566
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v17, v4

    const-string v4, "onscreen"

    .line 568
    invoke-virtual {v3, v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v14, "always"

    .line 570
    invoke-static {v4, v14}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 572
    invoke-virtual {v6, v4}, Lio/dcloud/common/core/ui/b;->setNeedRender(Z)V

    goto :goto_5

    :cond_9
    move-object/from16 v17, v4

    :goto_5
    const-string v4, "name"

    .line 575
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 576
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_a
    const-string v4, "id"

    .line 577
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 578
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_b
    move-object/from16 v17, v4

    :cond_c
    move-object/from16 v4, v17

    .line 581
    :goto_6
    array-length v14, v11

    move-object/from16 v18, v3

    const/4 v3, 0x2

    if-le v14, v3, :cond_d

    .line 582
    aget-object v14, v11, v3

    check-cast v14, Ljava/lang/String;

    move-object/from16 v17, v14

    :cond_d
    move-object v14, v4

    move-object/from16 v4, v18

    goto :goto_7

    :cond_e
    move-object/from16 v17, v4

    const/4 v3, 0x2

    .line 585
    iput v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    .line 586
    iput v1, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move-object/from16 v14, v17

    const/4 v4, 0x0

    :goto_7
    if-ne v7, v3, :cond_f

    .line 595
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 596
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v17

    :cond_f
    move-object/from16 v3, v17

    .line 602
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v17

    if-eqz v17, :cond_10

    .line 603
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v12

    check-cast v12, Lio/dcloud/common/adapter/ui/AdaWebview;

    move/from16 v17, v5

    goto :goto_8

    .line 605
    :cond_10
    iget-object v9, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mUniNViewJson:Lorg/json/JSONObject;

    move/from16 v17, v5

    if-eqz v9, :cond_12

    const-string v5, "path"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 607
    iget-object v9, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mUniNViewJson:Lorg/json/JSONObject;

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 608
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11

    const-string v9, ".js"

    invoke-virtual {v5, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_11

    const-string v12, ".js?"

    invoke-virtual {v5, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 609
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_11
    move-object/from16 v25, v5

    .line 611
    new-instance v12, Lio/dcloud/common/core/ui/d;

    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v23

    iget-object v5, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mUniNViewJson:Lorg/json/JSONObject;

    const/16 v28, 0x0

    move-object/from16 v22, v12

    move-object/from16 v24, v6

    move-object/from16 v26, v3

    move-object/from16 v27, v5

    invoke-direct/range {v22 .. v28}, Lio/dcloud/common/core/ui/d;-><init>(Landroid/content/Context;Lio/dcloud/common/core/ui/b;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    goto :goto_8

    :cond_12
    if-eqz v12, :cond_13

    .line 613
    new-instance v5, Lio/dcloud/common/core/ui/e;

    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v5, v9, v10, v6, v12}, Lio/dcloud/common/core/ui/e;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)V

    move-object v12, v5

    goto :goto_8

    .line 615
    :cond_13
    new-instance v12, Lio/dcloud/common/core/ui/e;

    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v12, v5, v10, v6}, Lio/dcloud/common/core/ui/e;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/AbsMgr;Lio/dcloud/common/core/ui/b;)V

    .line 618
    :goto_8
    invoke-virtual {v12, v15}, Lio/dcloud/common/adapter/ui/AdaWebview;->setOriginalUrl(Ljava/lang/String;)V

    .line 619
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 620
    invoke-virtual {v12, v3}, Lio/dcloud/common/adapter/ui/AdaWebview;->initWebviewUUID(Ljava/lang/String;)V

    .line 625
    :cond_14
    invoke-static/range {p2 .. p2}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x0

    .line 626
    invoke-virtual {v12, v3}, Lio/dcloud/common/adapter/ui/AdaWebview;->setIWebViewFocusable(Z)V

    .line 628
    :cond_15
    iget-object v3, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mPullToRefresh:Lorg/json/JSONObject;

    if-eqz v3, :cond_16

    const-string v5, "pull_down_refresh"

    .line 629
    invoke-virtual {v12, v5, v3}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebViewEvent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createWindow before _url="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    .line 632
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IApp;->manifestBeParsed()Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x2

    if-ne v7, v3, :cond_17

    .line 633
    invoke-direct {v10, v8}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_9

    :cond_17
    const/4 v3, 0x5

    if-eq v7, v3, :cond_18

    const-string v0, "createWindow not manifestBeParsed"

    .line 636
    invoke-static {v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    return-object v6

    .line 640
    :cond_18
    :goto_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createWindow after _url="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_19

    const-string v3, "launch_is_statusbar"

    .line 644
    invoke-interface {v8, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    const-string v3, "launch_statusbar_color"

    .line 645
    invoke-interface {v8, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    goto :goto_a

    .line 646
    :cond_19
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1a

    const-string v3, "second_is_statusbar"

    .line 647
    invoke-interface {v8, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->isStatusbar:Z

    const-string v3, "second_statusbar_color"

    .line 648
    invoke-interface {v8, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lio/dcloud/common/adapter/util/ViewRect;->mStatusbarColor:Ljava/lang/String;

    .line 651
    :cond_1a
    :goto_a
    invoke-direct {v10, v6, v11}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;[Ljava/lang/Object;)V

    .line 653
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-le v3, v5, :cond_1c

    .line 654
    iget-boolean v3, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mUseHardwave:Z

    if-nez v3, :cond_1b

    .line 655
    invoke-virtual {v12}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-virtual {v3, v9, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_b

    :cond_1b
    const/4 v5, 0x0

    .line 657
    invoke-virtual {v12}, Lio/dcloud/common/adapter/ui/AdaWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v5}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_b

    :cond_1c
    const/4 v5, 0x0

    .line 660
    :goto_b
    iget-object v3, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mCacheMode:Ljava/lang/String;

    invoke-virtual {v12, v3}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebViewCacheMode(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v12}, Lio/dcloud/common/adapter/ui/AdaWebview;->init()V

    move-object/from16 v3, p5

    .line 662
    invoke-virtual {v6, v3}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 664
    invoke-virtual/range {p3 .. p3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    invoke-static {v0, v3}, Lio/dcloud/common/adapter/util/ViewOptions;->createViewOptionsData(Lio/dcloud/common/adapter/util/ViewOptions;Lio/dcloud/common/adapter/util/ViewRect;)Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    invoke-virtual {v6, v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->setFrameOptions_Birth(Lio/dcloud/common/adapter/util/ViewOptions;)V

    .line 666
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v3

    const-string v9, "blockNetworkImage"

    .line 668
    invoke-static {v4, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 669
    invoke-virtual {v12, v9, v11}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "shareable"

    .line 671
    invoke-static {v4, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "shareable"

    .line 672
    invoke-virtual {v12, v11, v9}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1e

    const-string v9, "visible"

    const/4 v11, 0x1

    .line 674
    invoke-virtual {v4, v9, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 675
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v11

    if-eqz v9, :cond_1d

    const/4 v9, 0x0

    goto :goto_c

    :cond_1d
    const/16 v9, 0x8

    :goto_c
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_1e
    const-string v9, "injection"

    .line 678
    invoke-static {v4, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "injection"

    .line 679
    invoke-virtual {v12, v11, v9}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "videoFullscreen"

    .line 682
    invoke-static {v4, v9}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "videoFullscreen"

    .line 683
    invoke-virtual {v12, v11, v9}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v9

    const-string v11, "all"

    const-string v5, "horizontal"

    const-string v7, "vertical"

    move-object/from16 v18, v14

    const-string v14, "bounce"

    move-object/from16 v19, v13

    const-string v13, "additionalHttpHeaders"

    const/4 v8, 0x2

    if-ne v9, v8, :cond_23

    .line 690
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    sget-object v8, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->TitleNViewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v4, v8}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4, v12}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 692
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    sget-object v8, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->LaunchWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v4, v8}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 695
    invoke-virtual {v0, v4}, Lio/dcloud/common/adapter/util/ViewOptions;->setBackButtonAutoControl(Lorg/json/JSONObject;)V

    .line 696
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 697
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    goto :goto_d

    :cond_1f
    const/4 v8, 0x0

    .line 700
    :goto_d
    invoke-static {v4, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 701
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_21

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_21

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_e

    :cond_20
    const/4 v5, 0x0

    .line 704
    iput-boolean v5, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    goto :goto_f

    :cond_21
    :goto_e
    const/4 v5, 0x1

    .line 705
    iput-boolean v5, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    .line 709
    :goto_f
    iget-object v5, v0, Lio/dcloud/common/adapter/util/ViewOptions;->historyBack:Ljava/lang/String;

    const-string v7, "historyBack"

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lio/dcloud/common/adapter/util/ViewOptions;->historyBack:Ljava/lang/String;

    move/from16 v20, v1

    move/from16 v21, v2

    move-object v1, v8

    goto/16 :goto_15

    :cond_22
    move/from16 v20, v1

    move/from16 v21, v2

    goto/16 :goto_14

    .line 713
    :cond_23
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getFrameType()I

    move-result v8

    const-string v9, "navigationbar"

    move/from16 v20, v1

    const-string v1, "titleNView"

    move/from16 v21, v2

    const/4 v2, 0x4

    if-ne v8, v2, :cond_2a

    .line 714
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    sget-object v4, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v2, v4}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 717
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 718
    invoke-static {v2, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_10

    .line 720
    :cond_24
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 721
    invoke-static {v2, v9}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 724
    :cond_25
    :goto_10
    invoke-virtual {v0, v2}, Lio/dcloud/common/adapter/util/ViewOptions;->setBackButtonAutoControl(Lorg/json/JSONObject;)V

    .line 725
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 726
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_11

    :cond_26
    const/4 v1, 0x0

    .line 729
    :goto_11
    invoke-static {v2, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 730
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_12

    :cond_27
    const/4 v4, 0x0

    .line 733
    iput-boolean v4, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    goto :goto_13

    :cond_28
    :goto_12
    const/4 v4, 0x1

    .line 734
    iput-boolean v4, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    .line 738
    :goto_13
    iget-object v4, v0, Lio/dcloud/common/adapter/util/ViewOptions;->historyBack:Ljava/lang/String;

    const-string v5, "historyBack"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lio/dcloud/common/adapter/util/ViewOptions;->historyBack:Ljava/lang/String;

    goto :goto_15

    :cond_29
    :goto_14
    const-string v9, "none"

    const/4 v1, 0x0

    :goto_15
    const/4 v2, 0x1

    goto :goto_19

    .line 744
    :cond_2a
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 745
    invoke-static {v4, v1}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    goto :goto_16

    .line 746
    :cond_2b
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 747
    invoke-static {v4, v9}, Lio/dcloud/common/util/JSONUtil;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lio/dcloud/common/adapter/util/ViewOptions;->setTitleNView(Lorg/json/JSONObject;Lio/dcloud/common/DHInterface/IWebview;)V

    .line 749
    :cond_2c
    :goto_16
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 750
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_17

    :cond_2d
    const/4 v1, 0x0

    .line 753
    :goto_17
    invoke-virtual {v0, v4}, Lio/dcloud/common/adapter/util/ViewOptions;->setBackButtonAutoControl(Lorg/json/JSONObject;)V

    .line 755
    invoke-static {v4, v14}, Lio/dcloud/common/util/JSONUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 756
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_18

    :cond_2e
    const/4 v2, 0x0

    .line 759
    iput-boolean v2, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    goto :goto_15

    :cond_2f
    :goto_18
    const/4 v2, 0x1

    .line 760
    iput-boolean v2, v0, Lio/dcloud/common/adapter/util/ViewOptions;->mBounce:Z

    :goto_19
    if-eqz v1, :cond_31

    .line 765
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_31

    .line 766
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 767
    new-instance v5, Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 768
    :goto_1a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_30

    .line 769
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 770
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 772
    :cond_30
    invoke-virtual {v12, v15, v5}, Lio/dcloud/common/adapter/ui/AdaWebview;->setLoadURLHeads(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 775
    :cond_31
    invoke-virtual {v12, v14, v9}, Lio/dcloud/common/adapter/ui/AdaWebview;->setWebviewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-virtual {v6, v0, v6, v3, v12}, Lio/dcloud/common/core/ui/b;->a(Lio/dcloud/common/adapter/util/ViewOptions;Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    .line 778
    invoke-virtual {v0}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x0

    .line 779
    invoke-direct {v10, v6, v1}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;Z)V

    :goto_1b
    move-object/from16 v3, p2

    goto :goto_1c

    :cond_32
    const/4 v1, 0x0

    .line 781
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v3

    .line 782
    iget v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const/4 v5, -0x1

    move/from16 v7, v21

    if-ne v4, v7, :cond_33

    const/4 v4, -0x1

    .line 783
    :cond_33
    iget v7, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    move/from16 v8, v20

    if-ne v7, v8, :cond_34

    const/4 v7, -0x1

    .line 784
    :cond_34
    iget v8, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    invoke-static {v3, v8, v0, v4, v7}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    .line 785
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 791
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v3

    invoke-virtual {v6, v3, v0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1b

    .line 793
    :goto_1c
    invoke-direct {v10, v6, v3}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/DHInterface/IApp;)V

    move-object/from16 v0, p4

    .line 796
    invoke-direct {v10, v6, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V

    .line 798
    invoke-static {v6}, Lio/dcloud/common/util/SubNViewsUtil;->initFrameSubNViews(Lio/dcloud/common/adapter/ui/AdaFrameView;)V

    const-string v0, "winmgr"

    const-string v4, "createWindow end !"

    .line 801
    invoke-static {v0, v4}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "createFrameView\u8017\u65f6\uff1a"

    move-object/from16 v4, v19

    .line 802
    invoke-static {v4, v0}, Lio/dcloud/common/util/TestUtil;->print(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "target"

    .line 803
    invoke-interface {v3, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move/from16 v4, p1

    move/from16 v7, v17

    move-object/from16 v5, v18

    .line 804
    invoke-direct {v10, v4, v5, v0, v7}, Lio/dcloud/common/core/ui/l;->a(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 806
    invoke-interface/range {p2 .. p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v4

    .line 807
    invoke-static {v4}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-static {v15}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    const-string v5, "rendering"

    .line 808
    iput-object v5, v10, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    goto :goto_1d

    :cond_35
    const-string v5, "loaded"

    .line 810
    iput-object v5, v10, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    :goto_1d
    const-string v5, "event"

    .line 812
    invoke-interface {v3, v5}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 813
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_36

    .line 814
    iput-object v5, v10, Lio/dcloud/common/core/ui/l;->c:Ljava/lang/String;

    :cond_36
    const-string v5, "autoclose"

    .line 816
    invoke-interface {v3, v5}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 817
    invoke-static {v4}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    const-string v4, "w2a_autoclose"

    invoke-interface {v3, v4}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    const/4 v4, 0x1

    goto :goto_1e

    :cond_37
    const/4 v4, 0x0

    .line 819
    :goto_1e
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_39

    if-eqz v4, :cond_38

    goto :goto_1f

    :cond_38
    const/4 v5, 0x0

    goto :goto_20

    :cond_39
    :goto_1f
    const/4 v5, 0x1

    :goto_20
    const-string v1, "delay"

    .line 822
    invoke-interface {v3, v1}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 823
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "w2a_delay"

    .line 824
    invoke-interface {v3, v2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v4, :cond_3a

    move v9, v2

    goto :goto_21

    :cond_3a
    move v9, v1

    :goto_21
    const-string v1, "id:"

    .line 827
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    const-string v1, "id:*"

    .line 828
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 830
    new-instance v0, Lio/dcloud/common/core/ui/l$a;

    move-object/from16 v8, p3

    invoke-direct {v0, v10, v6, v3, v8}, Lio/dcloud/common/core/ui/l$a;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;)V

    invoke-virtual {v6, v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    goto :goto_22

    :cond_3b
    move-object/from16 v8, p3

    .line 842
    :goto_22
    new-instance v11, Lio/dcloud/common/core/ui/l$b;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v6

    move v4, v5

    move v5, v7

    move-object v13, v6

    move-object v6, v15

    move-object v7, v12

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v9}, Lio/dcloud/common/core/ui/l$b;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/b;ZZLjava/lang/String;Lio/dcloud/common/adapter/ui/AdaWebview;Lio/dcloud/common/core/ui/a;I)V

    invoke-virtual {v12, v11}, Lio/dcloud/common/adapter/ui/AdaWebview;->addStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V

    goto :goto_23

    :cond_3c
    move-object v13, v6

    :goto_23
    return-object v13
.end method

.method a(Landroid/view/ViewGroup;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 4
    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z

    .line 5
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/dcloud/common/core/ui/a;

    .line 6
    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p3

    check-cast p3, Lio/dcloud/common/core/ui/b;

    .line 7
    iput-object p2, p3, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    .line 9
    invoke-virtual {p3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 13
    :cond_0
    invoke-virtual {p1, p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)V
    .locals 3

    .line 450
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainWebAppIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "direct_page"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 451
    sget-object p1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "UI"

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 p2, 0x2

    const-string v2, "n_createDirectWebview"

    aput-object v2, v0, p2

    const/4 p2, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, p2

    invoke-virtual {p0, p1, v1, v0}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V
    .locals 6

    .line 436
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 438
    :try_start_0
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 439
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 440
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 442
    invoke-virtual {v5, v4, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 444
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 445
    invoke-virtual {p1, v0, p3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 447
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    .line 449
    :goto_0
    sget-object p3, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    const-string p2, "UI"

    aput-object p2, v3, v2

    const-string p2, "n_createHDWebview"

    aput-object p2, v3, v1

    aput-object p1, v3, v0

    invoke-virtual {p0, p3, v2, v3}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 17

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    const-string v0, "path"

    .line 269
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    :cond_0
    move-object v10, v9

    .line 272
    :goto_0
    invoke-static {v10}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v11, 0x1

    .line 275
    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "uniapp_weex_js_service"

    invoke-interface {v7, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 276
    invoke-interface {v7, v12}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v13

    .line 277
    invoke-interface {v7, v11}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v14

    .line 278
    new-instance v15, Lio/dcloud/common/core/ui/b;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lio/dcloud/common/core/ui/b;-><init>(Landroid/content/Context;Lio/dcloud/common/core/ui/l;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;ILjava/lang/Object;)V

    .line 279
    new-instance v6, Lio/dcloud/common/core/ui/d;

    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v16, 0x1

    move-object v0, v6

    move-object v2, v15

    move-object v3, v10

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object v8, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lio/dcloud/common/core/ui/d;-><init>(Landroid/content/Context;Lio/dcloud/common/core/ui/b;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V

    move-object/from16 v0, p3

    .line 280
    invoke-virtual {v8, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->initWebviewUUID(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v15}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v0

    .line 282
    invoke-virtual/range {p2 .. p2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    .line 283
    iget v2, v1, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-le v2, v14, :cond_2

    .line 284
    iget-object v2, v1, Lio/dcloud/common/adapter/util/ViewRect;->mJsonViewOption:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v13, v14}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;II)Z

    .line 286
    :cond_2
    invoke-virtual {v0, v1}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 287
    invoke-interface/range {p1 .. p1}, Lio/dcloud/common/DHInterface/IApp;->getPopGesture()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/dcloud/common/adapter/util/ViewOptions;->popGesture:Ljava/lang/String;

    .line 288
    invoke-virtual {v15}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    .line 289
    iget v2, v0, Lio/dcloud/common/adapter/util/ViewRect;->width:I

    const/4 v3, -0x1

    if-ne v2, v13, :cond_3

    const/4 v2, -0x1

    .line 290
    :cond_3
    iget v4, v0, Lio/dcloud/common/adapter/util/ViewRect;->height:I

    if-ne v4, v14, :cond_4

    const/4 v4, -0x1

    .line 291
    :cond_4
    iget v5, v0, Lio/dcloud/common/adapter/util/ViewRect;->left:I

    iget v0, v0, Lio/dcloud/common/adapter/util/ViewRect;->top:I

    invoke-static {v1, v5, v0, v2, v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem$LayoutParamsUtil;->setViewLayoutParams(Landroid/view/View;IIII)V

    .line 292
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 293
    invoke-virtual {v15}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v1

    invoke-virtual {v15, v1, v0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-virtual {v15, v12, v12}, Lio/dcloud/common/core/ui/b;->setVisible(ZZ)V

    move-object/from16 v1, p2

    .line 295
    invoke-virtual {v1, v15, v0}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->addFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p4

    .line 296
    invoke-virtual {v8, v0}, Lio/dcloud/common/adapter/ui/AdaWebview;->setFrameId(Ljava/lang/String;)V

    .line 297
    iget-object v0, v15, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0, v15}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    .line 298
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v8, v1, v12

    const-string v2, "UI"

    aput-object v2, v1, v11

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v9, v1, v2

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v11, v1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;ZLio/dcloud/common/core/ui/a;ILio/dcloud/common/core/ui/b;II)V
    .locals 11

    .line 489
    new-instance v10, Lio/dcloud/common/core/ui/l$l;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p4

    move v3, p3

    move-object/from16 v4, p6

    move-object v5, p1

    move-object v6, p2

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lio/dcloud/common/core/ui/l$l;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/a;ZLio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IWebview;Lio/dcloud/common/DHInterface/IApp;III)V

    move-object v0, p0

    iput-object v10, v0, Lio/dcloud/common/core/ui/l;->e:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    .line 513
    invoke-static {v10, v1, v2}, Lio/dcloud/common/adapter/util/MessageHandler;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Lio/dcloud/common/core/ui/b;)V
    .locals 3

    .line 948
    sget v0, Lio/dcloud/common/core/ui/b;->e:I

    invoke-virtual {p1, v0}, Lio/dcloud/common/core/ui/b;->a(I)V

    .line 949
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->q()V

    .line 950
    iget-object v0, p1, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 951
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v1, p1, Lio/dcloud/common/core/ui/b;->g:Ljava/util/ArrayList;

    const/16 v2, 0x1c

    invoke-virtual {p0, v0, v2, v1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 953
    iput-object v0, p1, Lio/dcloud/common/core/ui/b;->g:Ljava/util/ArrayList;

    .line 955
    :cond_0
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->s()V

    .line 956
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->j()V

    const/4 v0, 0x0

    .line 957
    iput-boolean v0, p1, Lio/dcloud/common/core/ui/b;->n:Z

    .line 958
    iput-boolean v0, p1, Lio/dcloud/common/core/ui/b;->m:Z

    .line 959
    iput-boolean v0, p1, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    return-void
.end method

.method public declared-synchronized a(Lio/dcloud/common/core/ui/l$m;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z
    .locals 6

    monitor-enter p0

    .line 14
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "come into createAppRootView pAppid==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "streamsdk"

    invoke-static {v1, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/core/ui/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 17
    iget-boolean v3, v0, Lio/dcloud/common/core/ui/a;->h:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 18
    iget-boolean v0, v0, Lio/dcloud/common/core/ui/a;->h:Z

    if-nez v0, :cond_2

    .line 19
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "come into createAppRootView and new le rootview  pAppid==="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "streamsdk"

    invoke-static {v3, v0}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AppRootView"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Main_Path"

    invoke-static {v3, v0}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lio/dcloud/common/core/ui/a;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, p1, v4}, Lio/dcloud/common/core/ui/a;-><init>(Landroid/content/Context;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/b;)V

    .line 25
    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/a;->onAppStart(Lio/dcloud/common/DHInterface/IApp;)V

    .line 26
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->getAppViewRect()Lio/dcloud/common/adapter/util/ViewRect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/dcloud/common/adapter/util/ViewRect;->setParentViewRect(Lio/dcloud/common/adapter/util/ViewRect;)V

    .line 27
    invoke-interface {p1, v2}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v2

    .line 28
    invoke-interface {p1, v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getInt(I)I

    move-result v3

    .line 29
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    const-string v5, "{}"

    invoke-static {v5}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Lio/dcloud/common/adapter/util/ViewRect;->updateViewData(Lorg/json/JSONObject;II)Z

    .line 31
    iget-object v2, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method b(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;)V
    .locals 3

    .line 52
    sget-object v0, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->SecondWebviewJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/BaseInfo;->isWap2AppAppid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->getOriginalDirectPage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 54
    :cond_0
    sget-object p1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "UI"

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 p2, 0x2

    const-string v2, "n_createSecondWebview"

    aput-object v2, v0, p2

    const/4 p2, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, p2

    invoke-virtual {p0, p1, v1, v0}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public b(Lio/dcloud/common/core/ui/b;)V
    .locals 1

    .line 59
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const/4 v0, 0x0

    .line 60
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IAppInfo;->setMaskLayer(Z)V

    .line 61
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected declared-synchronized c()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/core/ui/l$m;

    .line 7
    invoke-interface {v2}, Lio/dcloud/common/core/ui/l$m;->onAnimationEnd()V

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 11
    iget-object v1, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 13
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public c(Lio/dcloud/common/core/ui/b;)V
    .locals 3

    .line 14
    sget v0, Lio/dcloud/common/core/ui/b;->d:I

    invoke-virtual {p1, v0}, Lio/dcloud/common/core/ui/b;->a(I)V

    .line 15
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->q()V

    .line 16
    iget-object v0, p1, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v0, p1}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 17
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v1, p1, Lio/dcloud/common/core/ui/b;->g:Ljava/util/ArrayList;

    const/16 v2, 0x1c

    invoke-virtual {p0, v0, v2, v1}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 19
    iput-object v0, p1, Lio/dcloud/common/core/ui/b;->g:Ljava/util/ArrayList;

    .line 21
    :cond_0
    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 22
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->m()V

    .line 23
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->l()V

    return-void
.end method

.method public d(Lio/dcloud/common/core/ui/b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, v0}, Lio/dcloud/common/DHInterface/IAppInfo;->setMaskLayer(Z)V

    .line 3
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebAppRootView;->obtainMainView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public dispose()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    :cond_0
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    .line 7
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->dispose()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 10
    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->ISDEBUG:Z

    if-eqz v0, :cond_2

    .line 11
    invoke-static {}, Lio/dcloud/common/core/ui/f;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v9, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "event"

    const-string v4, "auto_pop "

    const-string v5, "quitModel"

    const-string v6, "auto_push "

    const-string v7, "query"

    const/4 v10, 0x0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lio/dcloud/common/DHInterface/AbsMgr;->checkMgrId(Lio/dcloud/common/DHInterface/IMgr$MgrType;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2
    iget-object v3, v9, Lio/dcloud/common/DHInterface/AbsMgr;->mCore:Lio/dcloud/common/DHInterface/ICore;

    move-object/from16 v4, p1

    invoke-interface {v3, v4, v1, v2}, Lio/dcloud/common/DHInterface/ICore;->dispatchEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :cond_0
    const/4 v8, -0x1

    if-eq v1, v8, :cond_48

    const/16 v11, 0x34

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eq v1, v11, :cond_47

    const-string v11, "View_Visible_Path"

    const-string v15, "Animation_Path"

    const/4 v14, 0x2

    const/4 v8, 0x3

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const-string v8, "Auto_Pop_Push_Path"

    const-string v14, "appid"

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    goto/16 :goto_15

    .line 5013
    :pswitch_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/a;->reload(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 5014
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v1

    invoke-virtual {v1, v12}, Lio/dcloud/common/core/ui/a;->reload(Z)V

    goto/16 :goto_15

    .line 5018
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v1

    invoke-virtual {v1, v13}, Lio/dcloud/common/core/ui/a;->reload(Z)V

    goto/16 :goto_15

    .line 5019
    :pswitch_3
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 5020
    iget-object v1, v1, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1, v1, v8}, Lio/dcloud/common/core/ui/a;->a(Lio/dcloud/common/core/ui/a;I)V

    goto/16 :goto_15

    .line 5560
    :pswitch_4
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5561
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    if-eqz v1, :cond_49

    .line 5563
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    .line 5564
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->firstElement()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 5565
    :pswitch_5
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/b;

    if-eqz v1, :cond_1

    .line 5566
    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    .line 5567
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5569
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->i()V

    .line 5570
    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2, v1}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    .line 5571
    iget-boolean v2, v1, Lio/dcloud/common/core/ui/b;->l:Z

    if-eqz v2, :cond_1

    .line 5572
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    .line 5573
    iput-boolean v13, v1, Lio/dcloud/common/core/ui/b;->l:Z

    .line 5576
    :cond_1
    iput-boolean v12, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    .line 5577
    iput-boolean v13, v1, Lio/dcloud/common/core/ui/b;->n:Z

    goto/16 :goto_15

    .line 5606
    :pswitch_6
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 5607
    aget-object v2, v1, v13

    check-cast v2, Lio/dcloud/common/core/ui/b;

    .line 5608
    aget-object v3, v1, v12

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 5609
    aget-object v4, v1, v14

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 5610
    aget-object v1, v1, v8

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 5611
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setStyle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    const-string v6, "\u53d1\u751f\u4f4d\u7f6e\u533a\u57df\u53d8\u5316"

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    const-string v6, "zindex\u53d1\u751f\u4e86\u53d8\u5316"

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const-string v6, "\u8bbe\u7f6e\u900f\u660e\u5ea6\u53d8\u5316"

    goto :goto_0

    :cond_4
    const-string v6, ""

    :goto_0
    :try_start_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5612
    iput-boolean v1, v2, Lio/dcloud/common/core/ui/b;->i:Z

    .line 5613
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->q()V

    .line 5614
    iget-object v5, v2, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v5}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v12

    iput-boolean v5, v2, Lio/dcloud/common/core/ui/b;->l:Z

    .line 5615
    iget-boolean v5, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    const/16 v6, 0x14

    const/16 v7, 0x1c

    if-eqz v5, :cond_8

    if-eqz v3, :cond_8

    .line 5617
    iget-boolean v1, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v1, :cond_6

    .line 5618
    iget-object v1, v2, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 5619
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5620
    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v3, v2, Lio/dcloud/common/core/ui/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v9, v1, v7, v3}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5621
    iput-object v10, v2, Lio/dcloud/common/core/ui/b;->g:Ljava/util/ArrayList;

    .line 5623
    :cond_5
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->t()V

    .line 5624
    invoke-virtual {v2, v13}, Lio/dcloud/common/core/ui/b;->startAnimator(I)V

    goto/16 :goto_15

    .line 5626
    :cond_6
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 5627
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->p()V

    if-eqz v3, :cond_49

    .line 5629
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    sget-object v3, Lio/dcloud/common/adapter/util/AndroidResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5630
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v6, :cond_7

    .line 5631
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 5633
    :cond_7
    iget-object v1, v2, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    goto/16 :goto_15

    :cond_8
    if-nez v4, :cond_a

    if-nez v1, :cond_a

    if-eqz v3, :cond_9

    goto :goto_1

    :cond_9
    const/4 v12, 0x0

    .line 5637
    :cond_a
    :goto_1
    iput-boolean v12, v2, Lio/dcloud/common/core/ui/b;->A:Z

    .line 5638
    iget-boolean v1, v2, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v1, :cond_b

    if-eqz v12, :cond_b

    .line 5640
    iget-object v1, v2, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/a;->b(Lio/dcloud/common/core/ui/b;)V

    .line 5641
    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    iget-object v4, v2, Lio/dcloud/common/core/ui/b;->g:Ljava/util/ArrayList;

    invoke-virtual {v9, v1, v7, v4}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5642
    iput-object v10, v2, Lio/dcloud/common/core/ui/b;->g:Ljava/util/ArrayList;

    .line 5645
    :cond_b
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->makeViewOptions_animate()V

    .line 5646
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->p()V

    if-eqz v3, :cond_49

    .line 5648
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    sget-object v3, Lio/dcloud/common/adapter/util/AndroidResources;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5649
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v6, :cond_49

    .line 5650
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_15

    .line 5651
    :pswitch_7
    instance-of v1, v2, Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 5652
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 5653
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_2

    .line 5655
    :cond_c
    invoke-direct/range {p0 .. p0}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/ArrayList;

    move-result-object v1

    :goto_2
    move-object v10, v1

    goto/16 :goto_15

    .line 5656
    :pswitch_8
    invoke-direct {v9, v1, v2}, Lio/dcloud/common/core/ui/l;->a(ILjava/lang/Object;)V

    goto/16 :goto_15

    .line 5665
    :pswitch_9
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 5666
    aget-object v2, v1, v13

    check-cast v2, Lio/dcloud/common/DHInterface/IApp;

    aget-object v1, v1, v12

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v2, v1}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    .line 5691
    :pswitch_a
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 5692
    aget-object v2, v1, v13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5693
    aget-object v3, v1, v12

    check-cast v3, Lio/dcloud/common/DHInterface/IApp;

    .line 5694
    aget-object v4, v1, v14

    move-object v7, v4

    check-cast v7, [Ljava/lang/Object;

    .line 5696
    array-length v4, v1

    const/4 v5, 0x4

    if-le v4, v5, :cond_d

    .line 5697
    aget-object v4, v1, v5

    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    aget-object v4, v1, v5

    instance-of v4, v4, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    if-eqz v4, :cond_d

    .line 5698
    aget-object v4, v1, v5

    check-cast v4, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    move-object v11, v4

    goto :goto_3

    :cond_d
    move-object v11, v10

    .line 5703
    :goto_3
    array-length v4, v1

    const/4 v5, 0x4

    if-lt v4, v5, :cond_f

    .line 5704
    aget-object v4, v1, v8

    instance-of v4, v4, Lio/dcloud/common/core/ui/a;

    if-eqz v4, :cond_e

    .line 5705
    aget-object v4, v1, v8

    check-cast v4, Lio/dcloud/common/core/ui/a;

    move-object v5, v10

    goto :goto_4

    .line 5706
    :cond_e
    aget-object v4, v1, v8

    instance-of v4, v4, Lio/dcloud/common/core/ui/b;

    if-eqz v4, :cond_f

    .line 5707
    aget-object v4, v1, v8

    check-cast v4, Lio/dcloud/common/core/ui/b;

    move-object v5, v4

    move-object v4, v10

    goto :goto_4

    :cond_f
    move-object v4, v10

    move-object v5, v4

    .line 5711
    :goto_4
    array-length v6, v1

    const/4 v8, 0x5

    if-lt v6, v8, :cond_10

    const/4 v6, 0x4

    .line 5712
    aget-object v8, v1, v6

    instance-of v8, v8, Lio/dcloud/common/DHInterface/IEventCallback;

    if-eqz v8, :cond_10

    .line 5713
    aget-object v6, v1, v6

    check-cast v6, Lio/dcloud/common/DHInterface/IEventCallback;

    goto :goto_5

    :cond_10
    move-object v6, v10

    :goto_5
    if-nez v4, :cond_11

    .line 5716
    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/core/ui/a;

    :cond_11
    if-nez v5, :cond_13

    if-nez v4, :cond_12

    move-object v5, v10

    goto :goto_6

    .line 5719
    :cond_12
    invoke-virtual {v4}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v5

    .line 5723
    :cond_13
    :goto_6
    array-length v8, v1

    const/4 v13, 0x6

    if-ne v8, v13, :cond_14

    const/4 v8, 0x5

    .line 5724
    aget-object v1, v1, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_14
    if-ne v2, v12, :cond_15

    goto/16 :goto_15

    :cond_15
    move-object/from16 v1, p0

    move-object v8, v11

    .line 5731
    :try_start_3
    invoke-virtual/range {v1 .. v8}, Lio/dcloud/common/core/ui/l;->a(ILio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/core/ui/a;Lio/dcloud/common/core/ui/b;Lio/dcloud/common/DHInterface/IEventCallback;[Ljava/lang/Object;Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;)Lio/dcloud/common/core/ui/b;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 5735
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v2, "winmgr"

    .line 5736
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 5968
    :pswitch_b
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 5969
    aget-object v2, v1, v13

    instance-of v2, v2, Lio/dcloud/common/core/ui/b;

    if-eqz v2, :cond_49

    .line 5970
    aget-object v2, v1, v13

    check-cast v2, Lio/dcloud/common/core/ui/b;

    .line 5971
    array-length v3, v1

    if-ge v3, v8, :cond_16

    goto :goto_7

    :cond_16
    aget-object v3, v1, v14

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    :goto_7
    if-eqz v12, :cond_17

    .line 5973
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    .line 5975
    :cond_17
    sget v3, Lio/dcloud/common/core/ui/b;->c:I

    invoke-virtual {v2, v3}, Lio/dcloud/common/core/ui/b;->a(I)V

    .line 5979
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showWindow"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5980
    iget-object v3, v2, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lio/dcloud/common/core/ui/l$d;

    invoke-direct {v5, v9, v2, v1}, Lio/dcloud/common/core/ui/l$d;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;[Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/View;Lio/dcloud/common/DHInterface/ICallBack;)Ljava/lang/Object;

    goto/16 :goto_15

    .line 4266
    :pswitch_c
    invoke-direct/range {p0 .. p0}, Lio/dcloud/common/core/ui/l;->a()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    goto/16 :goto_2

    .line 4267
    :pswitch_d
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 4268
    aget-object v2, v1, v13

    check-cast v2, Lio/dcloud/common/DHInterface/IApp;

    .line 4269
    aget-object v3, v1, v12

    check-cast v3, Ljava/lang/String;

    .line 4270
    aget-object v4, v1, v14

    check-cast v4, Lio/dcloud/common/DHInterface/IWebviewStateListener;

    .line 4272
    array-length v5, v1

    if-le v5, v8, :cond_18

    .line 4273
    aget-object v5, v1, v8

    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 4274
    aget-object v1, v1, v8

    check-cast v1, Lio/dcloud/common/DHInterface/IDCloudWebviewClientListener;

    goto :goto_8

    :cond_18
    move-object v1, v10

    .line 4278
    :goto_8
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v2, v5}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Ljava/lang/String;)Z

    .line 4279
    iget-object v5, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    .line 4280
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v6

    .line 4281
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/common/core/ui/a;

    .line 4283
    sget-object v6, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    .line 4285
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v13

    aput-object v2, v7, v12

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v3, v2, v13

    aput-object v2, v7, v14

    aput-object v5, v7, v8

    const/4 v2, 0x4

    aput-object v1, v7, v2

    .line 4286
    invoke-virtual {v9, v6, v8, v7}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/DHInterface/IFrameView;

    .line 4290
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v4, :cond_19

    .line 4292
    invoke-interface {v2, v4}, Lio/dcloud/common/DHInterface/IWebview;->addStateListener(Lio/dcloud/common/DHInterface/IWebviewStateListener;)V

    const/4 v5, -0x1

    .line 4293
    invoke-interface {v4, v5, v2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4295
    :cond_19
    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IWebview;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4300
    :pswitch_e
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 4301
    aget-object v2, v1, v13

    check-cast v2, Landroid/view/ViewGroup;

    .line 4302
    aget-object v3, v1, v12

    check-cast v3, Lio/dcloud/common/DHInterface/IApp;

    .line 4303
    aget-object v4, v1, v14

    check-cast v4, Lio/dcloud/common/DHInterface/IWebview;

    .line 4304
    aget-object v1, v1, v8

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 4305
    invoke-virtual {v9, v2, v3, v4, v1}, Lio/dcloud/common/core/ui/l;->a(Landroid/view/ViewGroup;Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_15

    .line 2707
    :pswitch_f
    instance-of v1, v2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v1, :cond_1a

    .line 2708
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    .line 2709
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 2710
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 2711
    :cond_1a
    instance-of v1, v2, [Ljava/lang/Object;

    if-eqz v1, :cond_1b

    .line 2712
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 2713
    aget-object v2, v1, v13

    check-cast v2, Landroid/app/Activity;

    .line 2714
    aget-object v1, v1, v12

    check-cast v1, Ljava/lang/String;

    goto :goto_9

    :cond_1b
    move-object v1, v10

    move-object v2, v1

    .line 2716
    :goto_9
    iget-object v3, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2717
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2718
    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 2719
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2720
    invoke-static {v4, v1}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 2721
    iget-object v5, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/core/ui/a;

    .line 2722
    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-ne v2, v4, :cond_1c

    .line 2723
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_15

    .line 3299
    :pswitch_10
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IFrameView;

    .line 3300
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainMainView()Landroid/view/View;

    move-result-object v2

    .line 3302
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lio/src/dcloud/adapter/DCloudAdapterUtil;->getIActivityHandler(Landroid/app/Activity;)Lio/dcloud/common/DHInterface/IActivityHandler;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 3304
    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IActivityHandler;->setWebViewIntoPreloadView(Landroid/view/View;)V

    goto/16 :goto_15

    .line 3418
    :pswitch_11
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 3419
    invoke-virtual {v9, v1}, Lio/dcloud/common/core/ui/l;->b(Lio/dcloud/common/core/ui/b;)V

    goto/16 :goto_15

    .line 3420
    :pswitch_12
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 3421
    invoke-virtual {v9, v1}, Lio/dcloud/common/core/ui/l;->d(Lio/dcloud/common/core/ui/b;)V

    goto/16 :goto_15

    :pswitch_13
    if-eqz v2, :cond_49

    .line 3422
    move-object v1, v2

    check-cast v1, Ljava/util/ArrayList;

    .line 3425
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_49

    .line 3427
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v12

    move-object v4, v10

    move-object v5, v4

    const/4 v3, 0x0

    :goto_a
    if-ltz v2, :cond_21

    .line 3428
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/dcloud/common/core/ui/b;

    if-eqz v7, :cond_20

    if-nez v4, :cond_1d

    .line 3431
    iget-object v4, v7, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    :cond_1d
    if-nez v5, :cond_1e

    .line 3434
    invoke-virtual {v7}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    .line 3436
    :cond_1e
    invoke-virtual {v4}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1f

    .line 3437
    invoke-virtual {v7, v12}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->onPushToStack(Z)V

    .line 3438
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3439
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3440
    iget-boolean v11, v7, Lio/dcloud/common/core/ui/b;->l:Z

    or-int/2addr v3, v11

    .line 3441
    iput-boolean v13, v7, Lio/dcloud/common/core/ui/b;->l:Z

    .line 3442
    iget-object v11, v7, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v11, v7}, Lio/dcloud/common/core/ui/a;->e(Lio/dcloud/common/core/ui/b;)I

    .line 3444
    :cond_1f
    iput-boolean v12, v7, Lio/dcloud/common/core/ui/b;->n:Z

    .line 3445
    iput-boolean v13, v7, Lio/dcloud/common/core/ui/b;->m:Z

    .line 3446
    iput-boolean v12, v7, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_21
    if-eqz v3, :cond_49

    .line 3451
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/b;

    iget-object v1, v1, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->resize()V

    goto/16 :goto_15

    .line 3458
    :pswitch_14
    move-object v1, v2

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_49

    .line 3462
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v12

    move-object v3, v10

    move-object v5, v3

    :goto_b
    if-ltz v2, :cond_28

    .line 3463
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/dcloud/common/core/ui/b;

    if-eqz v6, :cond_27

    if-nez v3, :cond_22

    .line 3466
    iget-object v3, v6, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    :cond_22
    if-nez v5, :cond_23

    .line 3469
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v5

    .line 3471
    :cond_23
    iget-object v7, v6, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v7}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    .line 3472
    invoke-virtual {v6}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->checkITypeofAble()Z

    move-result v7

    if-nez v7, :cond_24

    iget-boolean v7, v6, Lio/dcloud/common/core/ui/b;->f:Z

    if-nez v7, :cond_27

    .line 3473
    :cond_24
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v7

    invoke-interface {v7}, Lio/dcloud/common/DHInterface/IWebview;->isUniService()Z

    move-result v7

    if-eqz v7, :cond_25

    goto :goto_c

    .line 3476
    :cond_25
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v7

    invoke-static {v7}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v7

    if-eqz v7, :cond_26

    .line 3477
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v7

    invoke-interface {v7, v13}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    .line 3479
    :cond_26
    invoke-virtual {v6}, Lio/dcloud/common/core/ui/b;->h()Z

    move-result v7

    invoke-virtual {v6, v7}, Lio/dcloud/common/core/ui/b;->onPopFromStack(Z)V

    .line 3480
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3481
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3482
    iget-object v7, v6, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v7, v6}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    .line 3483
    iget-object v7, v6, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v7}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 3484
    iput-boolean v13, v6, Lio/dcloud/common/core/ui/b;->n:Z

    .line 3485
    iput-boolean v12, v6, Lio/dcloud/common/core/ui/b;->m:Z

    .line 3486
    iput-boolean v13, v6, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    :cond_27
    :goto_c
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_b

    :cond_28
    if-eqz v3, :cond_49

    if-eqz v5, :cond_49

    .line 3491
    invoke-static {v5}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 3492
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    const/4 v4, 0x1

    :goto_d
    if-ltz v2, :cond_49

    .line 3495
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/dcloud/common/core/ui/b;

    if-eqz v5, :cond_2b

    .line 3496
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v6

    if-eqz v6, :cond_2b

    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2b

    sub-int v6, v1, v4

    if-ne v2, v6, :cond_2a

    .line 3500
    invoke-virtual {v5}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainMainView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_29

    .line 3501
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->d()I

    move-result v6

    sget v7, Lio/dcloud/common/core/ui/b;->d:I

    if-eq v6, v7, :cond_29

    .line 3502
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->d()I

    move-result v6

    sget v7, Lio/dcloud/common/core/ui/b;->e:I

    if-eq v6, v7, :cond_29

    .line 3503
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    invoke-interface {v5, v12}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    goto :goto_e

    .line 3505
    :cond_29
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    invoke-interface {v5, v13}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 3509
    :cond_2a
    invoke-virtual {v5}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    invoke-interface {v5, v13}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    :cond_2b
    :goto_e
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 3510
    :pswitch_15
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/a;

    if-eqz v1, :cond_49

    .line 3512
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->l()V

    .line 3513
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->m()V

    goto/16 :goto_15

    .line 3514
    :pswitch_16
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    .line 3515
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    .line 3516
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->dispose()V

    .line 3517
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    iget-object v1, v1, Lio/dcloud/common/core/ui/a;->i:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15

    .line 3746
    :pswitch_17
    instance-of v1, v2, Lio/dcloud/common/core/ui/b;

    if-eqz v1, :cond_2c

    .line 3747
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/b;

    goto :goto_f

    :cond_2c
    move-object v1, v10

    :goto_f
    if-nez v1, :cond_2d

    return-object v10

    .line 3751
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideShowWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3752
    sget v2, Lio/dcloud/common/core/ui/b;->c:I

    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/b;->a(I)V

    .line 3756
    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Lio/dcloud/common/core/ui/l$e;

    invoke-direct {v4, v9, v1}, Lio/dcloud/common/core/ui/l$e;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {v2, v3, v4}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/View;Lio/dcloud/common/DHInterface/ICallBack;)Ljava/lang/Object;

    goto/16 :goto_15

    .line 3822
    :pswitch_18
    instance-of v1, v2, Lio/dcloud/common/core/ui/b;

    if-eqz v1, :cond_2e

    .line 3823
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/b;

    goto :goto_10

    :cond_2e
    move-object v1, v10

    :goto_10
    if-nez v1, :cond_2f

    return-object v10

    .line 3826
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3828
    sget v2, Lio/dcloud/common/core/ui/b;->d:I

    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/b;->a(I)V

    .line 3829
    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Lio/dcloud/common/core/ui/l$f;

    invoke-direct {v4, v9, v1}, Lio/dcloud/common/core/ui/l$f;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {v2, v3, v4}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/View;Lio/dcloud/common/DHInterface/ICallBack;)Ljava/lang/Object;

    goto/16 :goto_15

    :pswitch_19
    if-eqz v2, :cond_49

    .line 4068
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 4069
    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    .line 4070
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Stack;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->isUniService()Z

    move-result v2

    if-nez v2, :cond_30

    .line 4071
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUnParent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4072
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/b;->onPopFromStack(Z)V

    .line 4073
    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2, v1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->removeFrameItem(Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    .line 4074
    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 4076
    :cond_30
    iput-boolean v13, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->inStack:Z

    .line 4077
    iput-boolean v13, v1, Lio/dcloud/common/core/ui/b;->m:Z

    goto/16 :goto_15

    .line 5958
    :pswitch_1a
    instance-of v3, v2, Lio/dcloud/common/core/ui/b;

    if-eqz v3, :cond_31

    .line 5959
    check-cast v2, Lio/dcloud/common/core/ui/b;

    goto :goto_11

    :cond_31
    move-object v2, v10

    :goto_11
    if-nez v2, :cond_32

    return-object v10

    .line 5965
    :cond_32
    sget v3, Lio/dcloud/common/core/ui/b;->e:I

    invoke-virtual {v2, v3}, Lio/dcloud/common/core/ui/b;->a(I)V

    .line 5966
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeWindow"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Lio/dcloud/common/adapter/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5967
    iget-object v3, v2, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Lio/dcloud/common/core/ui/l$g;

    invoke-direct {v5, v9, v2, v1}, Lio/dcloud/common/core/ui/l$g;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;I)V

    invoke-virtual {v3, v4, v5}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/View;Lio/dcloud/common/DHInterface/ICallBack;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_2

    .line 4078
    :pswitch_1b
    sget-boolean v1, Lio/dcloud/feature/internal/sdk/SDK;->isEnableBackground:Z

    xor-int/2addr v1, v12

    .line 4079
    instance-of v3, v2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v3, :cond_33

    .line 4080
    move-object v3, v2

    check-cast v3, Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/core/ui/a;

    goto :goto_12

    .line 4081
    :cond_33
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_34

    .line 4082
    iget-object v3, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/core/ui/a;

    goto :goto_12

    .line 4083
    :cond_34
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_37

    .line 4084
    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    .line 4085
    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4086
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_35

    return-object v10

    .line 4089
    :cond_35
    iget-object v4, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/core/ui/a;

    const-string v4, "isStopApp"

    .line 4090
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 4091
    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    if-eqz v4, :cond_36

    .line 4092
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4093
    iget-object v5, v3, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v5, v1}, Lio/dcloud/common/DHInterface/IApp;->setQuitModel(I)V

    :cond_36
    move v1, v4

    goto :goto_12

    :cond_37
    move-object v3, v10

    .line 4098
    :goto_12
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v4

    if-eqz v4, :cond_39

    if-nez v1, :cond_39

    if-eqz v3, :cond_38

    .line 4100
    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_38
    return-object v10

    :cond_39
    if-eqz v3, :cond_3a

    .line 4106
    iget-object v1, v3, Lio/dcloud/common/core/ui/a;->j:Lio/dcloud/common/DHInterface/IApp;

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Lio/dcloud/common/DHInterface/IApp;->setStatus(B)V

    .line 4107
    iput-boolean v13, v3, Lio/dcloud/common/core/ui/a;->h:Z

    .line 4110
    :cond_3a
    sget-object v1, Lio/dcloud/common/DHInterface/IMgr$MgrType;->AppMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0xa

    invoke-virtual {v9, v1, v3, v2}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15

    .line 1787
    :pswitch_1c
    instance-of v1, v2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v1, :cond_49

    .line 1788
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    if-eqz v1, :cond_49

    .line 1791
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->f()Lio/dcloud/common/core/ui/b;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 1792
    check-cast v2, Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {v9, v2}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 1793
    invoke-virtual {v3}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkPreLoadJsContent()V

    :cond_3b
    const/4 v2, 0x5

    .line 1797
    invoke-virtual {v1, v2}, Lio/dcloud/common/core/ui/a;->a(I)Lio/dcloud/common/core/ui/b;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 1798
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 1799
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkPreLoadJsContent()V

    goto/16 :goto_15

    .line 1809
    :pswitch_1d
    instance-of v1, v2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v1, :cond_49

    .line 1810
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    .line 1812
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->f()Lio/dcloud/common/core/ui/b;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 1813
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 1814
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkInjectSitemap()V

    .line 1818
    :cond_3c
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->g()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 1819
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 1820
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaWebview;

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaWebview;->checkInjectSitemap()V

    goto/16 :goto_15

    .line 1829
    :pswitch_1e
    instance-of v1, v2, Lio/dcloud/common/DHInterface/IApp;

    if-eqz v1, :cond_49

    .line 1830
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    .line 1831
    move-object v3, v2

    check-cast v3, Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {v9, v3}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1832
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->f()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    goto :goto_13

    :cond_3d
    const/4 v3, 0x5

    .line 1834
    invoke-virtual {v1, v3}, Lio/dcloud/common/core/ui/a;->a(I)Lio/dcloud/common/core/ui/b;

    move-result-object v1

    .line 1836
    :goto_13
    check-cast v2, Lio/dcloud/common/DHInterface/IApp;

    sget-object v3, Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;->DirectPageJsonData:Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IApp;->obtainThridInfo(Lio/dcloud/common/DHInterface/IApp$ConfigProperty$ThridInfo;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1837
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v4, "NWindow"

    .line 1839
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v4, "setStyle"

    .line 1840
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1842
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1843
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1845
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1846
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1847
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1849
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1852
    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v1

    aput-object v1, v4, v13

    const-string v1, "UI"

    aput-object v1, v4, v12

    const-string v1, "execMethod"

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v1, 0x3

    aput-object v3, v4, v1

    invoke-virtual {v9, v2, v12, v4}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15

    .line 2569
    :pswitch_1f
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2570
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    if-eqz v1, :cond_49

    .line 2572
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->g()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    goto/16 :goto_2

    .line 2573
    :pswitch_20
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2574
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    if-eqz v1, :cond_49

    .line 2576
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->f()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    goto/16 :goto_2

    .line 2675
    :pswitch_21
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 2676
    aget-object v2, v1, v13

    check-cast v2, Lio/dcloud/common/core/ui/b;

    .line 2677
    aget-object v1, v1, v12

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 2678
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-static {v3}, Lio/dcloud/common/util/BaseInfo;->isUniAppAppid(Lio/dcloud/common/DHInterface/IApp;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2679
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v12}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    .line 2680
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3, v12}, Lio/dcloud/common/DHInterface/IWebview;->setIWebViewFocusable(Z)V

    .line 2682
    :cond_3e
    iget-wide v3, v1, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lio/dcloud/common/adapter/ui/AdaFrameItem;->lastShowTime:J

    .line 2683
    iget-object v3, v2, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v3}, Lio/dcloud/common/core/ui/a;->e()Ljava/util/Stack;

    move-result-object v3

    .line 2684
    iget-object v4, v2, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v4}, Lio/dcloud/common/core/ui/a;->d()Ljava/util/ArrayList;

    move-result-object v4

    .line 2685
    invoke-virtual {v3, v2}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 2686
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2687
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2688
    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2689
    iget-object v1, v2, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainWindowView()Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Lio/dcloud/common/core/ui/l$h;

    invoke-direct {v4, v9, v2}, Lio/dcloud/common/core/ui/l$h;-><init>(Lio/dcloud/common/core/ui/l;Lio/dcloud/common/core/ui/b;)V

    invoke-virtual {v1, v3, v4}, Lio/dcloud/common/core/ui/a;->a(Landroid/view/View;Lio/dcloud/common/DHInterface/ICallBack;)Ljava/lang/Object;

    goto/16 :goto_15

    .line 2690
    :pswitch_22
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    .line 2691
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    .line 2692
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    goto/16 :goto_2

    .line 2693
    :pswitch_23
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    .line 2694
    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IAppInfo;->obtainWebAppRootView()Lio/dcloud/common/DHInterface/IWebAppRootView;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    iget-object v1, v1, Lio/dcloud/common/core/ui/a;->d:Lio/dcloud/common/core/ui/b;

    goto/16 :goto_2

    .line 2698
    :pswitch_24
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 2699
    iget-object v2, v1, Lio/dcloud/common/core/ui/b;->p:Lio/dcloud/common/core/ui/a;

    iget-object v3, v2, Lio/dcloud/common/core/ui/a;->d:Lio/dcloud/common/core/ui/b;

    if-ne v1, v3, :cond_49

    .line 2700
    iput-object v10, v2, Lio/dcloud/common/core/ui/a;->d:Lio/dcloud/common/core/ui/b;

    goto/16 :goto_15

    .line 2706
    :pswitch_25
    invoke-direct {v9, v1, v2}, Lio/dcloud/common/core/ui/l;->b(ILjava/lang/Object;)V

    goto/16 :goto_15

    .line 237
    :pswitch_26
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    .line 238
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    .line 239
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 240
    instance-of v2, v1, Lio/dcloud/common/core/ui/c;

    if-eqz v2, :cond_3f

    .line 241
    check-cast v1, Lio/dcloud/common/core/ui/c;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/c;->v()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    :cond_3f
    if-eqz v1, :cond_40

    .line 243
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mDebugRefresh:Lorg/json/JSONObject;

    if-eqz v2, :cond_40

    .line 244
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mDebugRefresh:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_40
    if-nez v10, :cond_49

    if-eqz v1, :cond_49

    .line 247
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mUniPageUrl:Lorg/json/JSONObject;

    if-eqz v2, :cond_49

    .line 248
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->mUniPageUrl:Lorg/json/JSONObject;

    .line 249
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v3, "arguments"

    .line 250
    :try_start_6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 965
    :pswitch_27
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 966
    aget-object v2, v1, v13

    check-cast v2, Lio/dcloud/common/DHInterface/IWebview;

    .line 967
    aget-object v1, v1, v12

    check-cast v1, Landroid/os/Bundle;

    .line 968
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v3, :cond_49

    .line 969
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/DHInterface/IActivityHandler;

    const-string v3, "unimp_capsule_button_click"

    invoke-interface {v2, v3, v1}, Lio/dcloud/common/DHInterface/IActivityHandler;->callBack(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_15

    :pswitch_28
    if-eqz v2, :cond_49

    .line 1000
    move-object v1, v2

    check-cast v1, Landroid/os/Bundle;

    .line 1002
    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1003
    iget-object v4, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/core/ui/a;

    if-eqz v4, :cond_49

    .line 1005
    invoke-virtual {v4}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 1008
    sget-object v5, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    .line 1009
    invoke-virtual {v4}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v4

    aput-object v4, v6, v13

    const-string v4, "ui"

    aput-object v4, v6, v12

    const-string v4, "findWebview"

    const/4 v7, 0x2

    aput-object v4, v6, v7

    new-array v4, v7, [Ljava/lang/String;

    aput-object v2, v4, v13

    const-string v2, "__uniapp__service"

    aput-object v2, v4, v12

    const/4 v2, 0x3

    aput-object v4, v6, v2

    const/16 v2, 0xa

    .line 1010
    invoke-virtual {v9, v5, v2, v6}, Lio/dcloud/common/core/ui/l;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 1012
    instance-of v4, v2, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz v4, :cond_49

    .line 1013
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "dataType"

    .line 1014
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "JSON"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v6, "data"

    if-eqz v5, :cond_41

    .line 1015
    :try_start_7
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1016
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 1018
    :cond_41
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    :goto_14
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    new-instance v1, Lio/dcloud/common/adapter/util/EventActionInfo;

    const-string v3, "uniMPNativeEvent"

    invoke-direct {v1, v3, v4}, Lio/dcloud/common/adapter/util/EventActionInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 1022
    check-cast v2, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {v2, v1}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->fireEvent(Lio/dcloud/common/adapter/util/EventActionInfo;)V

    goto/16 :goto_15

    :pswitch_29
    if-eqz v2, :cond_49

    .line 1023
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 1024
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/core/ui/a;

    .line 1025
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 1026
    instance-of v2, v1, Lio/dcloud/common/core/ui/c;

    if-eqz v2, :cond_42

    .line 1027
    check-cast v1, Lio/dcloud/common/core/ui/c;

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/c;->v()Lio/dcloud/common/core/ui/b;

    move-result-object v1

    :cond_42
    if-eqz v1, :cond_49

    .line 1030
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mUniPageUrl:Lorg/json/JSONObject;

    if-eqz v2, :cond_49

    .line 1031
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->mUniPageUrl:Lorg/json/JSONObject;

    if-eqz v1, :cond_49

    const-string v2, "path"

    .line 1033
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1034
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1035
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1036
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 1037
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_2a
    if-eqz v2, :cond_49

    .line 1038
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 1039
    aget-object v2, v1, v13

    check-cast v2, Lio/dcloud/common/DHInterface/IWebview;

    .line 1040
    aget-object v1, v1, v12

    check-cast v1, Landroid/os/Bundle;

    .line 1041
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v3, :cond_49

    .line 1042
    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/DHInterface/IActivityHandler;

    const-string v3, "TITLE_BAR_MENU_CLICK"

    invoke-interface {v2, v3, v1}, Lio/dcloud/common/DHInterface/IActivityHandler;->callBack(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_15

    .line 1043
    :pswitch_2b
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/DHInterface/IApp;

    .line 1044
    iget-object v2, v9, Lio/dcloud/common/core/ui/l;->a:Ljava/util/HashMap;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/dcloud/common/core/ui/a;

    .line 1045
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/a;->i()Lio/dcloud/common/core/ui/b;

    move-result-object v2

    if-eqz v2, :cond_43

    .line 1046
    instance-of v3, v2, Lio/dcloud/common/core/ui/c;

    if-eqz v3, :cond_43

    .line 1047
    check-cast v2, Lio/dcloud/common/core/ui/c;

    invoke-virtual {v2}, Lio/dcloud/common/core/ui/c;->v()Lio/dcloud/common/core/ui/b;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_43
    const-string v3, "uni_restart_to_direct"

    if-eqz v2, :cond_44

    .line 1049
    :try_start_8
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v4

    iget-object v4, v4, Lio/dcloud/common/adapter/util/ViewOptions;->mDebugRefresh:Lorg/json/JSONObject;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v4, :cond_44

    const-string v4, "debugRefresh"

    .line 1050
    :try_start_9
    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->mDebugRefresh:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 1053
    :cond_44
    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lio/dcloud/common/DHInterface/IApp;->setConfigProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    .line 1765
    :pswitch_2c
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 1766
    aget-object v1, v1, v13

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 1767
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 1768
    invoke-virtual {v2}, Lio/dcloud/common/adapter/util/ViewOptions;->hasBackground()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/common/adapter/util/ViewOptions;->isTabHasBg()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1769
    :cond_45
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameItem;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 1771
    :cond_46
    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v3

    invoke-virtual {v1}, Lio/dcloud/common/core/ui/b;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    check-cast v4, Lio/dcloud/common/adapter/ui/AdaFrameItem;

    invoke-virtual {v1, v2, v1, v3, v4}, Lio/dcloud/common/core/ui/b;->b(Lio/dcloud/common/adapter/util/ViewOptions;Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/adapter/ui/AdaFrameItem;Lio/dcloud/common/adapter/ui/AdaFrameItem;)V

    goto/16 :goto_15

    .line 1772
    :pswitch_2d
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 1773
    aget-object v1, v1, v13

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 1774
    invoke-direct {v9, v1, v12}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;Z)V

    goto :goto_15

    .line 1775
    :pswitch_2e
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 1776
    aget-object v2, v1, v13

    check-cast v2, Lio/dcloud/common/core/ui/b;

    .line 1777
    aget-object v1, v1, v12

    check-cast v1, Lio/dcloud/common/core/ui/b;

    .line 1778
    invoke-direct {v9, v2, v1}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;Lio/dcloud/common/core/ui/b;)V

    goto :goto_15

    .line 1779
    :pswitch_2f
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 1780
    aget-object v2, v1, v13

    check-cast v2, Lio/dcloud/common/core/ui/b;

    .line 1781
    invoke-virtual {v2}, Lio/dcloud/common/core/ui/b;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v3

    iget-boolean v3, v3, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    .line 1782
    aget-object v4, v1, v12

    check-cast v4, Lorg/json/JSONObject;

    const/4 v5, 0x2

    .line 1783
    aget-object v1, v1, v5

    check-cast v1, Ljava/lang/String;

    .line 1784
    invoke-direct {v9, v2, v3, v4, v1}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/b;ZLorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_15

    .line 1785
    :pswitch_30
    move-object v1, v2

    check-cast v1, Lio/dcloud/common/core/ui/l$m;

    invoke-virtual {v9, v1}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/core/ui/l$m;)V

    goto :goto_15

    .line 1786
    :pswitch_31
    invoke-virtual/range {p0 .. p0}, Lio/dcloud/common/core/ui/l;->c()V

    goto :goto_15

    .line 5981
    :cond_47
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    .line 5982
    aget-object v2, v1, v13

    check-cast v2, Lio/dcloud/common/DHInterface/IApp;

    aget-object v3, v1, v13

    check-cast v3, Lio/dcloud/common/DHInterface/IApp;

    invoke-direct {v9, v3}, Lio/dcloud/common/core/ui/l;->b(Lio/dcloud/common/DHInterface/IApp;)Lio/dcloud/common/core/ui/b;

    move-result-object v3

    iget-object v3, v3, Lio/dcloud/common/core/ui/b;->q:Lio/dcloud/common/adapter/ui/AdaWebview;

    aget-object v1, v1, v12

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v9, v2, v3, v1}, Lio/dcloud/common/core/ui/l;->a(Lio/dcloud/common/DHInterface/IApp;Lio/dcloud/common/DHInterface/IWebview;Lorg/json/JSONObject;)V

    goto :goto_15

    .line 6860
    :cond_48
    invoke-direct/range {p0 .. p0}, Lio/dcloud/common/core/ui/l;->b()Lio/dcloud/common/core/ui/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;->obtainMainViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v1}, Lio/dcloud/common/util/TestUtil;->debug(Landroid/view/ViewGroup;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_15

    :catchall_0
    move-exception v0

    move-object v1, v0

    const-string v2, "WindowMgr.processEvent"

    .line 7008
    invoke-static {v2, v1}, Lio/dcloud/common/adapter/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_49
    :goto_15
    return-object v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_1a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x14
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x29
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x46
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch
.end method
