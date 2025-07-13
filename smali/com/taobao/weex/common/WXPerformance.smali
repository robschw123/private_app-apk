.class public Lcom/taobao/weex/common/WXPerformance;
.super Ljava/lang/Object;
.source "WXPerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/common/WXPerformance$Measure;,
        Lcom/taobao/weex/common/WXPerformance$Dimension;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CACHE_TYPE:Ljava/lang/String; = "cacheType"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static TRACE_DATA:Z

.field public static final VIEW_LIMIT_HEIGHT:I

.field public static final VIEW_LIMIT_WIDTH:I


# instance fields
.field public JSLibInitTime:J

.field public JSLibSize:D

.field public JSLibVersion:Ljava/lang/String;

.field public JSTemplateSize:D

.field public WXSDKVersion:Ljava/lang/String;

.field public actualNetworkTime:J

.field public args:Ljava/lang/String;

.field public avgFPS:J

.field public backImproveMemory:J

.field public bizType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public cacheType:Ljava/lang/String;

.field public callBridgeTime:J

.field public callCreateFinishTime:J

.field public callCreateInstanceTime:J

.field public cellExceedNum:I

.field public communicateTime:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public componentCount:J

.field public componentCreateTime:J

.field public connectionType:Ljava/lang/String;

.field public cssLayoutTime:J

.field public errCode:Ljava/lang/String;

.field public errMsg:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public firstScreenJSFExecuteTime:J

.field public fluency:D

.field public fsCallEventTotalNum:I

.field public fsCallJsTotalNum:I

.field public fsCallJsTotalTime:J

.field public fsCallNativeTotalNum:I

.field public fsCallNativeTotalTime:J

.field public fsComponentCount:I

.field public fsComponentCreateTime:I

.field public fsRenderTime:J

.field public fsRequestNum:I

.field public interactionRealUnixTime:J

.field public interactionTime:J

.field public interactionViewAddCount:I

.field public interactionViewAddLimitCount:I

.field public localInteractionViewAddCount:I

.field public localReadTime:D

.field public mActionAddElementCount:I

.field public mActionAddElementSumTime:I

.field private mErrMsgBuilder:Ljava/lang/StringBuilder;

.field private mInstanceId:Ljava/lang/String;

.field public maxDeepVDomLayer:I

.field public maxDeepViewLayer:I

.field public measureTimes:[J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public networkTime:J

.field public newFsRenderTime:J

.field public packageSpendTime:J

.field public pageName:Ljava/lang/String;

.field public parseJsonTime:J

.field public pureNetworkTime:J

.field public renderFailedDetail:Ljava/lang/String;

.field public renderTimeOrigin:J

.field public renderUnixTimeOrigin:J

.field public requestType:Ljava/lang/String;

.field public screenRenderTime:J

.field public syncTaskTime:J

.field public templateLoadTime:J

.field public templateUrl:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public timerInvokeCount:I

.field public totalTime:D

.field public useScroller:I

.field public wrongImgSizeCount:D

.field public wxDims:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public zCacheInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 148
    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/taobao/weex/common/WXPerformance;->VIEW_LIMIT_HEIGHT:I

    .line 149
    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/taobao/weex/common/WXPerformance;->VIEW_LIMIT_WIDTH:I

    .line 150
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    sput-boolean v0, Lcom/taobao/weex/common/WXPerformance;->TRACE_DATA:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "weex"

    .line 155
    iput-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->bizType:Ljava/lang/String;

    const-string v0, "none"

    .line 164
    iput-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->cacheType:Ljava/lang/String;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 217
    iput-wide v0, p0, Lcom/taobao/weex/common/WXPerformance;->fluency:D

    const-string v0, "default"

    .line 230
    iput-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 311
    iput v0, p0, Lcom/taobao/weex/common/WXPerformance;->useScroller:I

    .line 322
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->JS_LIB_SDK_VERSION:Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibVersion:Ljava/lang/String;

    .line 327
    sget-object v1, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->WXSDKVersion:Ljava/lang/String;

    const-string v1, ""

    .line 346
    iput-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->args:Ljava/lang/String;

    const-string v1, "other"

    .line 349
    iput-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->requestType:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    .line 360
    iput-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    new-array v1, v1, [J

    .line 367
    iput-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    .line 375
    iput v0, p0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementCount:I

    .line 376
    iput v0, p0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->mErrMsgBuilder:Ljava/lang/StringBuilder;

    .line 382
    iput-object p1, p0, Lcom/taobao/weex/common/WXPerformance;->mInstanceId:Ljava/lang/String;

    return-void
.end method

.method public static getDimensions()[Ljava/lang/String;
    .locals 5

    .line 493
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 494
    invoke-static {}, Lcom/taobao/weex/common/WXPerformance$Dimension;->values()[Lcom/taobao/weex/common/WXPerformance$Dimension;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 495
    invoke-virtual {v4}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 497
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getMeasures()[Ljava/lang/String;
    .locals 5

    .line 501
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 502
    invoke-static {}, Lcom/taobao/weex/common/WXPerformance$Measure;->values()[Lcom/taobao/weex/common/WXPerformance$Measure;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 503
    invoke-virtual {v4}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 505
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public afterInstanceDestroy(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    return-void
.end method

.method public appendErrMsg(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->mErrMsgBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public beforeInstanceRender(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceId"
        }
    .end annotation

    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/common/WXPerformance;->renderTimeOrigin:J

    .line 563
    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->getFixUnixTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/common/WXPerformance;->renderUnixTimeOrigin:J

    return-void
.end method

.method public getDimensionMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 460
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->JSLibVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->WXSDKVersion:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->WXSDKVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->pageName:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->requestType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->requestType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->networkType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unknown"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->connectionType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->connectionType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->zcacheInfo:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->zCacheInfo:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->cacheType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->cacheType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->useScroller:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/taobao/weex/common/WXPerformance;->useScroller:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    const-string v2, "unKnow"

    const-string/jumbo v3, "wxContainerName"

    if-nez v1, :cond_0

    move-object v4, v2

    goto :goto_0

    .line 472
    :cond_0
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContainerInfo()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_0
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "wxInstanceType"

    if-nez v1, :cond_1

    move-object v4, v2

    goto :goto_1

    .line 474
    :cond_1
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContainerInfo()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_1
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "wxParentPage"

    if-nez v1, :cond_2

    goto :goto_2

    .line 476
    :cond_2
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContainerInfo()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    :goto_2
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim1:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim2:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim3:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim4:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->wxdim5:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->bizType:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->bizType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v1, Lcom/taobao/weex/common/WXPerformance$Dimension;->templateUrl:Lcom/taobao/weex/common/WXPerformance$Dimension;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXPerformance$Dimension;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/common/WXPerformance;->templateUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/taobao/weex/common/WXPerformance;->mErrMsgBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeasureMap()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 387
    iget-wide v0, p0, Lcom/taobao/weex/common/WXPerformance;->fsRenderTime:J

    const-wide/16 v2, 0x0

    .line 423
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-eqz v7, :cond_0

    .line 388
    iget-wide v2, p0, Lcom/taobao/weex/common/WXPerformance;->renderTimeOrigin:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    goto :goto_0

    .line 390
    :cond_0
    iget-wide v0, p0, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    cmpl-double v5, v0, v2

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 396
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 397
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->JSLibSize:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibSize:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->JSLibInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibInitTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    sget-wide v5, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitInvokeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    sget-wide v5, Lcom/taobao/weex/WXEnvironment;->sSDKInitInvokeTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->SDKInitExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    sget-wide v5, Lcom/taobao/weex/WXEnvironment;->sSDKInitExecuteTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->JSTemplateSize:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->pureNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->pureNetworkTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->networkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->networkTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCreateInstanceTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->callCreateInstanceTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallJsTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallJsTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalNum:I

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallNativeTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->fsCallNativeTotalTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallNativeTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/taobao/weex/common/WXPerformance;->fsCallNativeTotalNum:I

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsComponentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/taobao/weex/common/WXPerformance;->fsComponentCount:I

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsComponentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/taobao/weex/common/WXPerformance;->fsComponentCreateTime:I

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v3, Lcom/taobao/weex/common/WXPerformance$Measure;->fsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v3}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsRequestNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->fsRequestNum:I

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->communicateTotalTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->maxDeepViewLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->maxDeepViewLayer:I

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->maxDeepVDomLayer:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->maxDeepVDomLayer:I

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->componentCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->componentCreateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->componentCreateTime:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->cellExceedNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->cellExceedNum:I

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->timerCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->timerInvokeCount:I

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->avgFps:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->avgFPS:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fluency:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->fluency:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->MaxImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->BackImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v5, p0, Lcom/taobao/weex/common/WXPerformance;->backImproveMemory:J

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->PushImproveMemory:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->fsCallEventTotalNum:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->fsCallEventTotalNum:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->callCreateFinishTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->callCreateFinishTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->imgSizeCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->wrongImgSizeCount:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->interactionTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionViewAddCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->interactionViewAddCount:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->interactionViewAddLimitCount:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->interactionViewAddLimitCount:I

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->newFsRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->newFsRenderTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->callBridgeTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->callBridgeTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->cssLayoutTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->cssLayoutTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->parseJsonTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->parseJsonTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->screenRenderTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->communicateTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->communicateTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->localReadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->localReadTime:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->templateLoadTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->templateLoadTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->firstScreenJSFExecuteTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->firstScreenJSFExecuteTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->actualNetworkTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->actualNetworkTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->syncTaskTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->syncTaskTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->packageSpendTime:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v3, p0, Lcom/taobao/weex/common/WXPerformance;->packageSpendTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime1:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime2:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    const/4 v3, 0x1

    aget-wide v3, v1, v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime3:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    const/4 v3, 0x2

    aget-wide v3, v1, v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime4:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    const/4 v3, 0x3

    aget-wide v3, v1, v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/taobao/weex/common/WXPerformance$Measure;->measureTime5:Lcom/taobao/weex/common/WXPerformance$Measure;

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXPerformance$Measure;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    const/4 v3, 0x4

    aget-wide v3, v1, v3

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public getPerfData()Ljava/lang/String;
    .locals 3

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->networkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " actualNetworkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->actualNetworkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " connectionType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->connectionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requestType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->requestType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " firstScreenRenderTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " firstScreenJSFExecuteTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->firstScreenJSFExecuteTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " componentCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " JSTemplateSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " SDKInitTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " totalTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " JSLibVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WXSDKVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->WXSDKVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " useScroller:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/weex/common/WXPerformance;->useScroller:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 510
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bizType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",pageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",templateLoadTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->templateLoadTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",localReadTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->localReadTime:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",JSLibInitTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibInitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",JSLibSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibSize:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",templateUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->templateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",JSTemplateSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",communicateTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->communicateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",screenRenderTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",firstScreenJSFExecuteTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->firstScreenJSFExecuteTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",componentCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",syncTaskTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->syncTaskTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",pureNetworkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->pureNetworkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",networkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->networkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",actualNetworkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->actualNetworkTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",packageSpendTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->packageSpendTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",connectionType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->connectionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",requestType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->requestType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",initInvokeTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/taobao/weex/WXEnvironment;->sSDKInitInvokeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",initExecuteTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/taobao/weex/WXEnvironment;->sSDKInitExecuteTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",SDKInitTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/taobao/weex/WXEnvironment;->sSDKInitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",totalTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",JSLibVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->JSLibVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",WXSDKVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->WXSDKVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",errCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->errCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",renderFailedDetail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->renderFailedDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",arg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/common/WXPerformance;->args:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",errMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {p0}, Lcom/taobao/weex/common/WXPerformance;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 532
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
