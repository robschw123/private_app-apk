.class Lio/dcloud/feature/weex/WXViewWrapper;
.super Lio/dcloud/feature/weex/WXBaseWrapper;
.source "WXViewWrapper.java"

# interfaces
.implements Lcom/taobao/weex/IWXRenderListener;
.implements Lio/dcloud/common/DHInterface/IEventCallback;
.implements Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;
    }
.end annotation


# static fields
.field static final LOAD_JS:I = 0x3e8


# instance fields
.field TAG:Ljava/lang/String;

.field private hasScrollListener:Z

.field private isChlid:Z

.field private isCompilerWithUniapp:Z

.field isDelayRender:Z

.field private isFrameShow:Z

.field private isPre:Z

.field isReady:Z

.field isService:Z

.field jsonObject:Lorg/json/JSONObject;

.field lastTime:J

.field mFireCaches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;",
            ">;"
        }
    .end annotation
.end field

.field mFontSize:I

.field mHandler:Landroid/os/Handler;

.field mInstanceOnSizeListener:Lcom/taobao/weex/IWXInstanceContainerOnSizeListener;

.field private mLastScreenWidth:F

.field mNvueCfgData:Lorg/json/JSONObject;

.field private mRenderCaches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mServiceLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

.field private mUniPagePath:Ljava/lang/String;

.field mViewPort:F

.field mWXSDKView:Landroid/view/View;

.field private mWaitServiceRenderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private readyJs:Ljava/lang/String;

.field time:J


# direct methods
.method constructor <init>(Lio/dcloud/common/DHInterface/IWebview;Landroid/view/ViewGroup;Lorg/json/JSONObject;Ljava/lang/String;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "webview",
            "viewGroup",
            "jsonObject",
            "wxId",
            "zIndex",
            "isPre"
        }
    .end annotation

    .line 181
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WXBaseWrapper;-><init>(Landroid/content/Context;)V

    const-string v0, "WXViewWrapper"

    .line 81
    iput-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 83
    iput-wide v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->lastTime:J

    const/4 v2, 0x0

    .line 85
    iput-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    const-string v3, ";var plusModule = weex.requireModule(\'plus\'); plusModule.uniReady();"

    .line 88
    iput-object v3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->readyJs:Ljava/lang/String;

    .line 89
    iput-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isReady:Z

    const/4 v3, -0x1

    .line 91
    iput v3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFontSize:I

    const/4 v4, 0x0

    .line 92
    iput-object v4, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mNvueCfgData:Lorg/json/JSONObject;

    .line 94
    iput-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isDelayRender:Z

    .line 95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mRenderCaches:Ljava/util/List;

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWaitServiceRenderList:Ljava/util/List;

    .line 99
    iput-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isFrameShow:Z

    .line 100
    iput-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isChlid:Z

    .line 101
    iput-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isPre:Z

    const/4 v4, 0x1

    .line 103
    iput-boolean v4, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isCompilerWithUniapp:Z

    .line 108
    new-instance v5, Lio/dcloud/feature/weex/WXViewWrapper$1;

    invoke-direct {v5, p0}, Lio/dcloud/feature/weex/WXViewWrapper$1;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;)V

    iput-object v5, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mHandler:Landroid/os/Handler;

    .line 142
    new-instance v5, Lio/dcloud/feature/weex/WXViewWrapper$2;

    invoke-direct {v5, p0}, Lio/dcloud/feature/weex/WXViewWrapper$2;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;)V

    iput-object v5, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mInstanceOnSizeListener:Lcom/taobao/weex/IWXInstanceContainerOnSizeListener;

    .line 345
    iput-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->hasScrollListener:Z

    .line 741
    iput-wide v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->time:J

    const/4 v0, 0x0

    .line 961
    iput v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mLastScreenWidth:F

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->lastTime:J

    .line 183
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WXViewWrapper----------isPre="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "  wxid="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJsFrameworkReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setWXStatisticsCallBack(Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;)V

    .line 187
    :cond_0
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getComplier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "weex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isCompilerWithUniapp:Z

    .line 188
    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    .line 189
    iput-boolean p6, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isPre:Z

    .line 190
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFireCaches:Ljava/util/List;

    .line 191
    iget-object p6, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    instance-of p6, p6, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz p6, :cond_1

    .line 192
    iget-object p6, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    check-cast p6, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {p6}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->isUniService()Z

    move-result p6

    iput-boolean p6, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    .line 194
    :cond_1
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p6

    invoke-virtual {p6}, Lio/dcloud/feature/weex/WeexInstanceMgr;->isJSFKFileNotFound()Z

    move-result p6

    if-eqz p6, :cond_4

    .line 195
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p2

    invoke-virtual {p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getVueVersion()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 196
    :goto_0
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcom/taobao/weex/R$string;->dcloud_feature_weex_jsfk_not_found_tips:I

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    if-eqz p2, :cond_3

    const-string p2, "VUE3"

    goto :goto_1

    :cond_3
    const-string p2, "VUE2"

    :goto_1
    aput-object p2, p4, v2

    invoke-static {p3, p4}, Lio/dcloud/common/util/StringUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 197
    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p3, Lio/dcloud/feature/weex/WXViewWrapper$3;

    invoke-direct {p3, p0}, Lio/dcloud/feature/weex/WXViewWrapper$3;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;)V

    invoke-static {p1, p2, p3}, Lio/dcloud/common/util/ErrorDialogUtil;->showErrorTipsAlert(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 205
    :cond_4
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p0, p5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 208
    invoke-virtual {p1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->addFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 209
    iput-object p3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->jsonObject:Lorg/json/JSONObject;

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->lastTime:J

    .line 211
    iput-object p4, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWxId:Ljava/lang/String;

    .line 212
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const-string p2, "uni_nvue_data"

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/JSONUtil;->createJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mNvueCfgData:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/Object;J)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/feature/weex/WXViewWrapper;->delayedRender(Ljava/lang/Object;J)V

    return-void
.end method

.method static synthetic access$100(Lio/dcloud/feature/weex/WXViewWrapper;FFZZ)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lio/dcloud/feature/weex/WXViewWrapper;->updateDeviceDisplay(FFZZ)V

    return-void
.end method

.method static synthetic access$200(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lio/dcloud/feature/weex/WXViewWrapper;->getAllUniService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/List;
    .locals 0

    .line 80
    iget-object p0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWaitServiceRenderList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/List;
    .locals 0

    .line 80
    iget-object p0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mRenderCaches:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lio/dcloud/feature/weex/WXViewWrapper;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isFrameShow:Z

    return p0
.end method

.method static synthetic access$600(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/util/Map;
    .locals 0

    .line 80
    invoke-direct {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->getInitOptions()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lio/dcloud/feature/weex/WXViewWrapper;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-direct {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->getInitStringJsonData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lio/dcloud/feature/weex/WXViewWrapper;->render(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private delayedRender(Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "template",
            "delayMilllis"
        }
    .end annotation

    .line 613
    new-instance v0, Lio/dcloud/feature/weex/WXViewWrapper$9;

    invoke-direct {v0, p0, p1}, Lio/dcloud/feature/weex/WXViewWrapper$9;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2, p3}, Lio/dcloud/feature/weex/WXViewWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getAllUniService(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "template"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 590
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const-string v1, "_www/app-config.js"

    .line 598
    invoke-virtual {p0, v1}, Lio/dcloud/feature/weex/WXViewWrapper;->initSrcPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_www/app-confusion.js"

    .line 599
    invoke-virtual {p0, v2}, Lio/dcloud/feature/weex/WXViewWrapper;->initSrcPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-static {v1, v0}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getEncryptionInputStream(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)Ljava/io/InputStream;

    move-result-object v1

    .line 601
    invoke-static {v2, v0}, Lio/dcloud/common/adapter/ui/webview/WebResUtil;->getEncryptionInputStream(Ljava/lang/String;Lio/dcloud/common/DHInterface/IApp;)Ljava/io/InputStream;

    move-result-object v0

    .line 603
    :try_start_0
    invoke-static {v1}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 604
    invoke-static {v0}, Lio/dcloud/common/util/IOUtil;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 607
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p1

    :cond_1
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method private getInitOptions()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 217
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IApp;->obtainAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "plus_appid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_0
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "plus_web_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_1
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mSrcPath:Ljava/lang/String;

    .line 225
    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 226
    iget-object v3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    :cond_2
    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefLocalLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceLanguage"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {}, Lio/dcloud/common/util/language/LanguageUtil;->getDeviceDefCountry()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceCountry"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {}, Lio/dcloud/common/util/PdrUtil;->checkIntl()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isInternational"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "bundleUrl"

    .line 234
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->getWxId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__uniapp__service"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "plus_weex_id"

    .line 236
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method private getInitStringJsonData()Ljava/lang/String;
    .locals 3

    .line 250
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 252
    :try_start_0
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    :cond_0
    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/dcloud/common/DHInterface/IApp;->convert2RelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Plus_InitURL"

    .line 257
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 259
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 261
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initFlexDirection()V
    .locals 2

    .line 914
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mNvueCfgData:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "flex-direction"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mNvueCfgData:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 916
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->setFlexDirectionDef(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initTitleNView()V
    .locals 3

    .line 347
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 348
    invoke-virtual {v0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v1

    iget-object v1, v1, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 349
    iget-boolean v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-nez v0, :cond_0

    const-string v0, "type"

    .line 350
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "transparent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    new-instance v1, Lio/dcloud/feature/weex/WXViewWrapper$4;

    invoke-direct {v1, p0}, Lio/dcloud/feature/weex/WXViewWrapper$4;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->addOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V

    :cond_0
    return-void
.end method

.method private initViewPortWidth(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromMetaModule"
        }
    .end annotation

    .line 902
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isCompilerWithUniapp:Z

    if-eqz v0, :cond_2

    .line 903
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-nez v0, :cond_0

    return-void

    .line 904
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/dcloud/common/DHInterface/IApp;->getInt(I)I

    move-result v0

    if-eqz p1, :cond_1

    .line 906
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    :cond_1
    int-to-float v0, v0

    .line 908
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mViewPort:F

    .line 909
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    iget v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mViewPort:F

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/WXSDKInstance;->setInstanceViewPortWidth(FZ)V

    :cond_2
    return-void
.end method

.method private render(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "template",
            "options",
            "jsonInitData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->recoveryInstance()V

    .line 276
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 279
    :cond_1
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lio/dcloud/common/util/BaseInfo;->SyncDebug:Z

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mServiceLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

    if-nez v0, :cond_2

    .line 281
    new-instance v0, Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-direct {v0}, Lcom/taobao/weex/utils/tools/LogDetail;-><init>()V

    iput-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mServiceLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

    const-string v1, "initV3Service"

    .line 282
    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/tools/LogDetail;->name(Ljava/lang/String;)V

    .line 284
    :cond_2
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mServiceLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 286
    :cond_3
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    iget-boolean v0, v0, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    iput-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isChlid:Z

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isReady:Z

    .line 289
    iget-boolean v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isPre:Z

    if-eqz v1, :cond_4

    .line 290
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getPreInstanceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 291
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getPreInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    iput-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 292
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v1, :cond_6

    .line 293
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKInstance;->init(Landroid/content/Context;)V

    .line 294
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->onReady()V

    .line 295
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "launchApp"

    invoke-virtual {p0, v2, v1}, Lio/dcloud/feature/weex/WXViewWrapper;->fireGlobalEvent(Ljava/lang/String;Ljava/util/Map;)Z

    goto :goto_0

    .line 299
    :cond_4
    check-cast p1, Ljava/lang/String;

    .line 300
    sget-boolean v1, Lcom/taobao/weex/WXEnvironment;->sRemoteDebugMode:Z

    if-nez v1, :cond_5

    const-string v1, "\"use weex:vue\""

    .line 301
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 303
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->readyJs:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 306
    :cond_6
    :goto_0
    iget-boolean v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isPre:Z

    if-nez v1, :cond_8

    .line 307
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lio/dcloud/common/DHInterface/IActivityHandler;

    if-eqz v1, :cond_7

    .line 308
    new-instance v1, Lio/dcloud/feature/uniapp/UniSDKInstance;

    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lio/dcloud/common/DHInterface/IActivityHandler;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IActivityHandler;->getOriginalContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lio/dcloud/feature/uniapp/UniSDKInstance;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    iput-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    goto :goto_1

    .line 310
    :cond_7
    new-instance v1, Lio/dcloud/feature/uniapp/UniSDKInstance;

    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/dcloud/feature/uniapp/UniSDKInstance;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 313
    :cond_8
    :goto_1
    iget v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFontSize:I

    if-lez v1, :cond_9

    .line 314
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    iget v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFontSize:I

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKInstance;->setDefaultFontSize(I)V

    .line 317
    :cond_9
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->setPageKeepRawCssStyles()V

    .line 318
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IApp;->obtainStatusBarMgr()Lio/dcloud/common/util/AppStatusBarManager;

    move-result-object v2

    iget-boolean v2, v2, Lio/dcloud/common/util/AppStatusBarManager;->isImmersive:Z

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKInstance;->setImmersive(Z)V

    .line 319
    new-instance v1, Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/dcloud/feature/weex/WXAnalyzerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    .line 320
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1, p0}, Lcom/taobao/weex/WXSDKInstance;->registerRenderListener(Lcom/taobao/weex/IWXRenderListener;)V

    .line 321
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mSrcPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKInstance;->setBundleUrl(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-eqz v2, :cond_a

    const-string v2, "app-service.js"

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mUniPagePath:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKInstance;->setUniPagePath(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mInstanceOnSizeListener:Lcom/taobao/weex/IWXInstanceContainerOnSizeListener;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKInstance;->setWXInstanceContainerOnSizeListener(Lcom/taobao/weex/IWXInstanceContainerOnSizeListener;)V

    .line 324
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    check-cast v1, Lio/dcloud/feature/uniapp/UniSDKInstance;

    iget-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isCompilerWithUniapp:Z

    invoke-virtual {v1, v2}, Lio/dcloud/feature/uniapp/UniSDKInstance;->setCompilerWithUniapp(Z)V

    .line 325
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IFrameView;->getFrameType()I

    move-result v1

    .line 327
    iget-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isFrameShow:Z

    if-nez v2, :cond_b

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    :cond_b
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v1, :cond_c

    .line 328
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->onShowAnimationEnd()V

    .line 330
    :cond_c
    iget-boolean v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isPre:Z

    if-nez v1, :cond_d

    .line 331
    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-object v3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWxId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 333
    :cond_d
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    instance-of p1, p1, Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz p1, :cond_e

    .line 334
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaWebview;

    iget-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lio/dcloud/common/adapter/ui/AdaWebview;->dispatchWebviewStateEvent(ILjava/lang/Object;)V

    .line 337
    :cond_e
    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WXViewWrapper;->initViewPortWidth(Z)V

    .line 338
    invoke-direct {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->initFlexDirection()V

    .line 339
    invoke-direct {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->initTitleNView()V

    .line 340
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-eqz p1, :cond_f

    .line 341
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    const/4 p2, 0x1

    iget-object p3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lio/dcloud/feature/weex/WeexInstanceMgr;->setUniServiceCreated(ZLio/dcloud/common/DHInterface/IApp;)V

    :cond_f
    :goto_3
    return-void
.end method

.method private declared-synchronized runFireCache()V
    .locals 3

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFireCaches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 172
    :goto_0
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFireCaches:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFireCaches:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;

    .line 174
    iget-object v2, v1, Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;->key:Ljava/lang/String;

    iget-object v1, v1, Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;->params:Ljava/util/Map;

    invoke-virtual {p0, v2, v1}, Lio/dcloud/feature/weex/WXViewWrapper;->fireGlobalEvent(Ljava/lang/String;Ljava/util/Map;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFireCaches:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_1
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

.method private updateDeviceDisplay(FFZZ)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "defaultWidth",
            "defaultHeight",
            "isWidthWrapContent",
            "isHeightWrapContent"
        }
    .end annotation

    move-object v0, p0

    .line 963
    iget-object v1, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 965
    iget-object v1, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lio/dcloud/common/DHInterface/IApp;->getInt(I)I

    move-result v1

    .line 966
    iget-object v2, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lio/dcloud/common/DHInterface/IApp;->getInt(I)I

    move-result v2

    .line 967
    iget-object v3, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v3}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lio/dcloud/common/DHInterface/IApp;->getInt(I)I

    move-result v3

    .line 973
    iget-object v5, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->isOnSizeChangedRender()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 977
    :cond_0
    iget-object v5, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->isOnSizeChangedRender()Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 980
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 981
    iget-object v6, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v6}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v6

    int-to-float v1, v1

    div-float/2addr v1, v6

    float-to-int v1, v1

    .line 982
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v7, "resolutionHeight"

    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float v1, v2

    div-float v8, v1, v6

    float-to-int v8, v8

    .line 983
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "resolutionWidth"

    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    sget v9, Lio/dcloud/common/adapter/util/DeviceInfo;->dpiX:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const-string v11, "dpiX"

    invoke-interface {v5, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    sget v9, Lio/dcloud/common/adapter/util/DeviceInfo;->dpiY:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const-string v11, "dpiY"

    invoke-interface {v5, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    int-to-float v11, v3

    div-float/2addr v11, v6

    float-to-int v6, v11

    .line 988
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 991
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v10, ";"

    const-string v11, "="

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v12, "plus.screen."

    .line 992
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 994
    :cond_2
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "plus.display."

    .line 995
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 997
    :cond_3
    iget-object v5, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lio/dcloud/common/DHInterface/IWebview;->evalJS(Ljava/lang/String;)V

    .line 999
    iget-boolean v5, v0, Lio/dcloud/feature/weex/WXViewWrapper;->isCompilerWithUniapp:Z

    if-eqz v5, :cond_4

    .line 1000
    iget-object v5, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v5}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v5

    div-float/2addr v1, v5

    .line 1001
    iget-object v5, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v5, v1, v4}, Lcom/taobao/weex/WXSDKInstance;->setInstanceViewPortWidth(FZ)V

    .line 1003
    :cond_4
    iget-boolean v1, v0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-nez v1, :cond_5

    .line 1004
    iget-object v1, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1, v2, v3}, Lcom/taobao/weex/WXSDKInstance;->setDeviceDisplayOfPage(II)V

    .line 1005
    iget-object v1, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->reloadPageLayout()V

    .line 1006
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    iget-object v1, v0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/taobao/weex/bridge/WXBridgeManager;->setDefaultRootSize(Ljava/lang/String;FFZZ)V

    :cond_5
    return-void
.end method

.method private updateInitDeviceParams(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 845
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInitParams()Lcom/taobao/weex/bridge/WXParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 846
    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXParams;->getDeviceWidth()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 847
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXParams;->setDeviceWidth(Ljava/lang/String;)V

    .line 848
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXParams;->setDeviceHeight(Ljava/lang/String;)V

    .line 849
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 850
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "scale"

    invoke-static {v3, v2}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 852
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_0

    .line 853
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 855
    :cond_0
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXParams;->getDeviceWidth()Ljava/lang/String;

    move-result-object v4

    .line 856
    invoke-virtual {v0}, Lcom/taobao/weex/bridge/WXParams;->getDeviceHeight()Ljava/lang/String;

    move-result-object v0

    .line 857
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    .line 855
    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->updateInitDeviceParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    .line 859
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    .line 860
    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result p1

    .line 858
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setDeviceDisplay(Ljava/lang/String;FFF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addScrollListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 371
    :cond_0
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->hasScrollListener:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 372
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->hasScrollListener:Z

    .line 374
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v1

    check-cast v1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    .line 375
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v2

    .line 376
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebviewParent()Lio/dcloud/common/adapter/ui/AdaWebViewParent;

    move-result-object v3

    invoke-virtual {v3}, Lio/dcloud/common/adapter/ui/AdaWebViewParent;->obtainFrameOptions()Lio/dcloud/common/adapter/util/ViewOptions;

    move-result-object v3

    .line 378
    iget-object v2, v2, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-nez v2, :cond_2

    .line 380
    iget-object v4, v3, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    .line 381
    iget-object v2, v3, Lio/dcloud/common/adapter/util/ViewOptions;->titleNView:Lorg/json/JSONObject;

    :cond_2
    if-eqz v2, :cond_a

    const-string v3, "type"

    .line 384
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_1

    .line 387
    :cond_3
    invoke-virtual {v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->getParentFrameItem()Lio/dcloud/common/adapter/ui/AdaContainerFrameItem;

    move-result-object v4

    .line 388
    instance-of v5, v4, Lio/dcloud/common/adapter/ui/AdaFrameView;

    if-eqz v5, :cond_4

    check-cast v4, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lio/dcloud/common/adapter/ui/AdaFrameView;->obtainWebView()Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v4

    invoke-interface {v4}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tab"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_a

    .line 389
    iget-boolean v4, v1, Lio/dcloud/common/adapter/ui/AdaFrameView;->isChildOfFrameView:Z

    if-eqz v4, :cond_5

    if-eqz v0, :cond_a

    .line 390
    :cond_5
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "transparent"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 391
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-nez v0, :cond_6

    return-void

    .line 393
    :cond_6
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 395
    iget-object v3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3, p1}, Lcom/taobao/weex/WXSDKInstance;->removeOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V

    .line 397
    :cond_7
    instance-of p1, v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    if-eqz p1, :cond_8

    .line 398
    check-cast v0, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;

    new-instance p1, Lio/dcloud/feature/weex/WXViewWrapper$5;

    invoke-direct {p1, p0, v1, v2}, Lio/dcloud/feature/weex/WXViewWrapper$5;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;Lio/dcloud/common/adapter/ui/AdaFrameView;Lorg/json/JSONObject;)V

    invoke-virtual {v0, p1}, Lio/dcloud/feature/weex_scroller/view/DCWXScrollView;->addScrollViewListener(Lio/dcloud/feature/weex_scroller/view/DCWXScrollView$WXScrollViewListener;)V

    goto :goto_1

    .line 432
    :cond_8
    instance-of p1, v0, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz p1, :cond_9

    .line 433
    check-cast v0, Lcom/taobao/weex/ui/view/WXScrollView;

    new-instance p1, Lio/dcloud/feature/weex/WXViewWrapper$6;

    invoke-direct {p1, p0, v1, v2}, Lio/dcloud/feature/weex/WXViewWrapper$6;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;Lio/dcloud/common/adapter/ui/AdaFrameView;Lorg/json/JSONObject;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    goto :goto_1

    .line 462
    :cond_9
    instance-of p1, v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    if-eqz p1, :cond_a

    .line 463
    check-cast v0, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;

    new-instance v0, Lio/dcloud/feature/weex/WXViewWrapper$7;

    invoke-direct {v0, p0, v1, v2}, Lio/dcloud/feature/weex/WXViewWrapper$7;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;Lio/dcloud/common/adapter/ui/AdaFrameView;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/listview/WXRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public evalJs(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "js",
            "type"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->syncExecJsOnInstanceWithResult(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public declared-synchronized fireGlobalEvent(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 867
    :try_start_0
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isReady:Z

    if-eqz v0, :cond_0

    .line 868
    invoke-super {p0, p1, p2}, Lio/dcloud/feature/weex/WXBaseWrapper;->fireGlobalEvent(Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 870
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFireCaches:Ljava/util/List;

    new-instance v1, Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;

    invoke-direct {v1, p0, p1, p2}, Lio/dcloud/feature/weex/WXViewWrapper$FireEvent;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 871
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getSrcPath()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mSrcPath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "view"

    return-object v0
.end method

.method public getWaitServiceRenderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWaitServiceRenderList:Ljava/util/List;

    return-object v0
.end method

.method public getWxId()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWxId:Ljava/lang/String;

    return-object v0
.end method

.method public initSrcPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "?"

    .line 628
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 631
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    const-string v3, "/"

    .line 633
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 634
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v4, "\\."

    .line 637
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 638
    array-length v4, p1

    const-string v5, ".js"

    if-ne v4, v2, :cond_3

    .line 639
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 640
    :cond_3
    array-length v4, p1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    :cond_4
    :goto_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 645
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 647
    :cond_5
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IApp;->obtainRunningAppMode()B

    move-result p1

    const/4 v1, 0x0

    .line 649
    iget-object v4, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    instance-of v4, v4, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-nez v4, :cond_6

    .line 650
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFullUrl()Ljava/lang/String;

    move-result-object v1

    :cond_6
    const-string v4, "/storage"

    .line 652
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    if-ne p1, v2, :cond_7

    .line 653
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 654
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 655
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 659
    :cond_7
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lio/dcloud/common/DHInterface/IApp;->convert2WebviewFullPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    :goto_2
    return-object p1
.end method

.method public loadTemplate(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    const-string v0, "path"

    const-string v1, "delayRender"

    const-string v2, "data"

    .line 501
    :try_start_0
    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "js"

    .line 502
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    .line 503
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->jsonObject:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 504
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "defaultFontSize"

    .line 506
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mFontSize:I

    .line 515
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    iget-boolean v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isDelayRender:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isDelayRender:Z

    .line 518
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".nvue"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mUniPagePath:Ljava/lang/String;

    .line 523
    :cond_1
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isNetPath(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 526
    :cond_2
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WXViewWrapper;->initSrcPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mSrcPath:Ljava/lang/String;

    .line 527
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isPre:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 528
    invoke-direct {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->getInitOptions()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->getInitStringJsonData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lio/dcloud/feature/weex/WXViewWrapper;->render(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;)V

    return-void

    .line 531
    :cond_3
    invoke-static {}, Lio/dcloud/common/util/ThreadPool;->self()Lio/dcloud/common/util/ThreadPool;

    move-result-object p1

    new-instance v0, Lio/dcloud/feature/weex/WXViewWrapper$8;

    invoke-direct {v0, p0}, Lio/dcloud/feature/weex/WXViewWrapper$8;-><init>(Lio/dcloud/feature/weex/WXViewWrapper;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lio/dcloud/common/util/ThreadPool;->addThreadTask(Ljava/lang/Runnable;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 571
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCallBack(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pEventType",
            "pArgs"
        }
    .end annotation

    const-string v0, "close"

    .line 764
    invoke-static {p1, v0}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_0

    .line 765
    check-cast p2, Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p2}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-virtual {p1, p0}, Lio/dcloud/common/adapter/ui/AdaFrameView;->removeFrameViewListener(Lio/dcloud/common/DHInterface/IEventCallback;)V

    .line 766
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object p1

    iget-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWxId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->removeWeexView(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->onDestroy()V

    goto :goto_0

    :cond_0
    const-string p2, "show_animation_end"

    .line 768
    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "child_initialize_show"

    invoke-static {p1, p2}, Lio/dcloud/common/util/PdrUtil;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 769
    :cond_1
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isFrameShow:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 770
    iput-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isFrameShow:Z

    .line 771
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz p1, :cond_2

    .line 772
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->onShowAnimationEnd()V

    .line 773
    :cond_2
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isDelayRender:Z

    if-eqz p1, :cond_3

    .line 774
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mRenderCaches:Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WXViewWrapper;->runDelayedRenderCaches(Ljava/util/List;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 783
    invoke-super {p0, p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 784
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 809
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const-string p1, "portrait"

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, -0x5a

    const-string v2, "landscapeReverse"

    move-object p1, v2

    const/16 v2, -0x5a

    goto :goto_0

    :cond_1
    const/16 p1, 0xb4

    const-string v2, "portraitReverse"

    move-object p1, v2

    const/16 v2, 0xb4

    goto :goto_0

    :cond_2
    const/16 p1, 0x5a

    const-string v2, "landscape"

    move-object p1, v2

    const/16 v2, 0x5a

    .line 826
    :goto_0
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getCache()Landroidx/collection/LruCache;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/collection/LruCache;->evictAll()V

    .line 827
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "value"

    .line 828
    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "orientation"

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    const-string v2, "orientationchange"

    invoke-virtual {p1, v2, v3}, Lcom/taobao/weex/WXSDKInstance;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 832
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isCompilerWithUniapp:Z

    if-eqz p1, :cond_3

    .line 833
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    invoke-interface {p1, v1}, Lio/dcloud/common/DHInterface/IApp;->getInt(I)I

    move-result p1

    int-to-float p1, p1

    .line 834
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v1}, Lio/dcloud/common/DHInterface/IWebview;->getScale()F

    move-result v1

    div-float/2addr p1, v1

    .line 835
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1, p1, v0}, Lcom/taobao/weex/WXSDKInstance;->setInstanceViewPortWidth(FZ)V

    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 736
    invoke-super {p0}, Lio/dcloud/feature/weex/WXBaseWrapper;->onDestroy()V

    .line 737
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/dcloud/feature/weex/WeexInstanceMgr;->unWXStatisticsCallBack(Lio/dcloud/feature/weex/WeexInstanceMgr$IWXStatisticsCallBack;)V

    const/4 v0, 0x0

    .line 738
    iput-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    return-void
.end method

.method public onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "errCode",
            "msg"
        }
    .end annotation

    .line 727
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onException--errCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/common/adapter/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->onException(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onJsFrameworkReady()V
    .locals 1

    .line 877
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mRenderCaches:Ljava/util/List;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WXViewWrapper;->runDelayedRenderCaches(Ljava/util/List;)V

    .line 878
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 879
    invoke-direct {p0, v0}, Lio/dcloud/feature/weex/WXViewWrapper;->initViewPortWidth(Z)V

    .line 880
    invoke-direct {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->initFlexDirection()V

    :cond_0
    return-void
.end method

.method public onReady()V
    .locals 4

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isReady:Z

    .line 156
    invoke-direct {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->runFireCache()V

    .line 157
    iget-boolean v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-eqz v1, :cond_1

    .line 158
    invoke-static {}, Lio/dcloud/feature/internal/sdk/SDK;->isUniMPSDK()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 159
    iget-object v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v2}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v2

    invoke-virtual {v2}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getUniMPFeature()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "onUniMPInit"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 160
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v0

    sget-object v2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->FeatureMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3, v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->doForFeature(Lio/dcloud/common/DHInterface/IMgr$MgrType;I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mServiceLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    .line 165
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mServiceLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

    iget-object v0, v0, Lcom/taobao/weex/utils/tools/LogDetail;->info:Lcom/taobao/weex/utils/tools/Info;

    iget-object v0, v0, Lcom/taobao/weex/utils/tools/Info;->taskName:Ljava/lang/String;

    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mServiceLogDetail:Lcom/taobao/weex/utils/tools/LogDetail;

    iget-object v1, v1, Lcom/taobao/weex/utils/tools/LogDetail;->time:Lcom/taobao/weex/utils/tools/Time;

    iget-wide v1, v1, Lcom/taobao/weex/utils/tools/Time;->execTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lio/dcloud/weex/WXDotDataUtil;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected onRefresh()V
    .locals 4

    .line 492
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "pulldownrefreshevent"

    invoke-virtual {v0, v3, v2}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    check-cast v0, Lio/dcloud/common/adapter/ui/AdaFrameView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pullToRefresh"

    invoke-virtual {v0, v2, v1}, Lio/dcloud/common/adapter/ui/AdaFrameView;->dispatchFrameViewEvents(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onRefreshSuccess(Lcom/taobao/weex/WXSDKInstance;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "width",
            "height"
        }
    .end annotation

    return-void
.end method

.method public onRenderSuccess(Lcom/taobao/weex/WXSDKInstance;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "width",
            "height"
        }
    .end annotation

    .line 701
    iget-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    if-eqz p2, :cond_0

    .line 702
    iget-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    invoke-virtual {p2, p1}, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->onWeexRenderSuccess(Lcom/taobao/weex/WXSDKInstance;)V

    .line 704
    :cond_0
    iget-boolean p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isService:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_3

    .line 705
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    instance-of p1, p1, Lio/dcloud/common/adapter/ui/AdaWebview;

    if-eqz p1, :cond_1

    .line 706
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaWebview;

    const/4 p2, 0x1

    iget-object p3, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lio/dcloud/common/adapter/ui/AdaWebview;->dispatchWebviewStateEvent(ILjava/lang/Object;)V

    .line 708
    :cond_1
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainApp()Lio/dcloud/common/DHInterface/IApp;

    move-result-object p1

    const-string p2, "autoclose"

    invoke-interface {p1, p2}, Lio/dcloud/common/DHInterface/IApp;->obtainConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 709
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "true"

    .line 712
    :cond_2
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 714
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object p1

    invoke-interface {p1}, Lio/dcloud/common/DHInterface/IFrameView;->obtainWindowMgr()Lio/dcloud/common/DHInterface/AbsMgr;

    move-result-object p1

    sget-object p2, Lio/dcloud/common/DHInterface/IMgr$MgrType;->WindowMgr:Lio/dcloud/common/DHInterface/IMgr$MgrType;

    const/16 p3, 0xb

    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->obtainFrameView()Lio/dcloud/common/DHInterface/IFrameView;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Lio/dcloud/common/DHInterface/AbsMgr;->processEvent(Lio/dcloud/common/DHInterface/IMgr$MgrType;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 951
    invoke-super {p0, p1, p2, p3, p4}, Lio/dcloud/feature/weex/WXBaseWrapper;->onSizeChanged(IIII)V

    .line 952
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    instance-of p1, p1, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    if-eqz p1, :cond_0

    .line 954
    :try_start_0
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    check-cast p1, Lio/dcloud/common/adapter/ui/AdaUniWebView;

    invoke-virtual {p1}, Lio/dcloud/common/adapter/ui/AdaUniWebView;->updateScreenAndDisplay()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 956
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "instance",
            "view"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXAnaly:Lio/dcloud/feature/weex/WXAnalyzerDelegate;

    invoke-virtual {v0, p1, p2}, Lio/dcloud/feature/weex/WXAnalyzerDelegate;->onWeexViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)Landroid/view/View;

    .line 670
    :cond_0
    iput-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    .line 671
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 672
    iget-object p2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lio/dcloud/feature/weex/WXViewWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 674
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/view/View;->layout(IIII)V

    .line 675
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->isFocusableInTouchMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 676
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 677
    iget-object p1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_1
    const/4 p1, 0x0

    .line 679
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/WXViewWrapper;->addScrollListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V

    return-void
.end method

.method public recoveryInstance()V
    .locals 2

    .line 932
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 933
    iget-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isChlid:Z

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWebview:Lio/dcloud/common/DHInterface/IWebview;

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 936
    invoke-static {v0}, Lio/dcloud/common/adapter/util/DeviceInfo;->hideIME(Landroid/view/View;)V

    .line 939
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 940
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->clearFocus()V

    .line 941
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WXViewWrapper;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 942
    iput-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    .line 943
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isPre:Z

    .line 945
    :cond_1
    invoke-super {p0}, Lio/dcloud/feature/weex/WXBaseWrapper;->recoveryInstance()V

    .line 946
    iput-boolean v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isFrameShow:Z

    return-void
.end method

.method public reload()V
    .locals 5

    .line 744
    iget-wide v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->time:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lio/dcloud/feature/weex/WXViewWrapper;->time:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 747
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->time:J

    .line 748
    invoke-virtual {p0}, Lio/dcloud/feature/weex/WXViewWrapper;->recoveryInstance()V

    const/4 v0, 0x1

    .line 750
    iput-boolean v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->isFrameShow:Z

    .line 751
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 752
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WXViewWrapper;->loadTemplate(Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public runDelayedRenderCaches(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;)V"
        }
    .end annotation

    .line 889
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 890
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 891
    iget-object v1, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 893
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public setFocusable(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusable"
        }
    .end annotation

    .line 684
    invoke-super {p0, p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->setFocusable(I)V

    .line 685
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(I)V

    :cond_0
    return-void
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusableInTouchMode"
        }
    .end annotation

    .line 692
    invoke-super {p0, p1}, Lio/dcloud/feature/weex/WXBaseWrapper;->setFocusableInTouchMode(Z)V

    .line 693
    iget-object v0, p0, Lio/dcloud/feature/weex/WXViewWrapper;->mWXSDKView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :cond_0
    return-void
.end method

.method public titleNViewRefresh()V
    .locals 1

    const/4 v0, 0x0

    .line 577
    invoke-virtual {p0, v0}, Lio/dcloud/feature/weex/WXViewWrapper;->addScrollListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V

    return-void
.end method
