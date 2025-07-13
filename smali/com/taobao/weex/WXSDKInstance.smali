.class public Lcom/taobao/weex/WXSDKInstance;
.super Ljava/lang/Object;
.source "WXSDKInstance.java"

# interfaces
.implements Lio/dcloud/feature/uniapp/AbsSDKInstance;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;,
        Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;,
        Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;,
        Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;,
        Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;,
        Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;,
        Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;,
        Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;
    }
.end annotation


# static fields
.field public static ACTION_DEBUG_INSTANCE_REFRESH:Ljava/lang/String; = "DEBUG_INSTANCE_REFRESH"

.field public static ACTION_INSTANCE_RELOAD:Ljava/lang/String; = "INSTANCE_RELOAD"

.field public static final BUNDLE_URL:Ljava/lang/String; = "bundleUrl"

.field private static final SOURCE_TEMPLATE_BASE64_MD5:Ljava/lang/String; = "templateSourceBase64MD5"

.field public static requestUrl:Ljava/lang/String; = "requestUrl"

.field static sScreenHeight:I = -0x1


# instance fields
.field public bundleType:Lcom/taobao/weex/bridge/WXBridgeManager$BundType;

.field private componentsInfoExceedGPULimit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private createInstanceHeartBeat:Z

.field private enableFullScreenHeight:Z

.field private enableLayerType:Z

.field frameViewEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private hasException:Z

.field public hiddenEmbeds:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/taobao/weex/ui/component/WXEmbed;",
            ">;"
        }
    .end annotation
.end field

.field private inactiveAddElementAction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/ui/action/GraphicActionAddElement;",
            ">;"
        }
    .end annotation
.end field

.field private isCommit:Z

.field private isDestroy:Z

.field private isFrameShow:Z

.field private isImmersive:Z

.field public isNewFsEnd:Z

.field private isOnSizeChangedRender:Z

.field private isPreDownLoad:Z

.field private isPreInit:Z

.field private volatile isPreRenderMode:Z

.field private isRenderSuccess:Z

.field private isViewDisAppear:Z

.field private mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

.field private mAutoAdjustDeviceWidth:Z

.field private mBundleUrl:Ljava/lang/String;

.field private mComponentObserver:Lcom/taobao/weex/ComponentObserver;

.field private mContainerInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentBoxMeasurements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/taobao/weex/layout/ContentBoxMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mCreateInstance:Z

.field private mCurrentGround:Z

.field private mCustomFontNetworkHandler:Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;

.field private mDefaultFontSize:I

.field private mDisableSkipFrameworkInit:Z

.field public mEnd:Z

.field public mExecJSTraceId:I

.field private mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

.field private mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

.field private mGlobalEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mHasCreateFinish:Z

.field private mHttpListener:Lcom/taobao/weex/WXHttpListener;

.field private mImageNetworkHandler:Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;

.field private final mInstanceId:Ljava/lang/String;

.field private mInstanceOnFireEventInterceptorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private mInstanceViewPortWidth:F

.field private mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

.field private mLayerOverFlowListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxDeepLayer:I

.field private mNativeInvokeHelper:Lcom/taobao/weex/bridge/NativeInvokeHelper;

.field private mNeedReLoad:Z

.field private mNeedValidate:Z

.field private mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

.field mOnSizeListener:Lcom/taobao/weex/IWXInstanceContainerOnSizeListener;

.field private mOriginalContext:Landroid/content/Context;

.field private mParentInstance:Lcom/taobao/weex/WXSDKInstance;

.field private mRefreshStartTime:J

.field private mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

.field private mRenderListener:Lcom/taobao/weex/IWXRenderListener;

.field public mRenderStartNanos:J

.field public mRenderStartTime:J

.field private mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

.field private mRenderType:Ljava/lang/String;

.field private mRendered:Z

.field private mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

.field private mStreamNetworkHandler:Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;

.field public mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

.field private mUniPagePath:Ljava/lang/String;

.field private mUseScroller:Z

.field private mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

.field private mUserTrackParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWXActionbarHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mWXBackPressedHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

.field private mWXScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/common/OnWXScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

.field private maxHiddenEmbedsNum:I

.field public measureTimes:[J

.field public mwxDims:[Ljava/lang/String;

.field public responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public templateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trackComponent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 130
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    const-string v1, ""

    .line 142
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mUniPagePath:Ljava/lang/String;

    .line 146
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 147
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    .line 148
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    .line 149
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    .line 152
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    const/4 v2, 0x1

    .line 155
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    .line 156
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    .line 157
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    .line 158
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    const v3, 0x443b8000    # 750.0f

    .line 159
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    .line 160
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    .line 162
    new-instance v3, Lcom/taobao/weex/ui/flat/FlatGUIContext;

    invoke-direct {v3}, Lcom/taobao/weex/ui/flat/FlatGUIContext;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 166
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    .line 167
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    .line 174
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    .line 176
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    .line 181
    iput-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    new-array v3, v3, [J

    .line 182
    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    .line 185
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 190
    sget-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 192
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    const-string v3, "platform"

    .line 216
    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    .line 224
    sget-boolean v3, Lcom/taobao/weex/WXEnvironment;->AUTO_ADJUST_ENV_DEVICE_WIDTH:Z

    iput-boolean v3, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    .line 254
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 256
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    .line 258
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    const/4 v3, -0x1

    .line 338
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    .line 527
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    .line 806
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    .line 811
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    .line 1076
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    .line 1776
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    .line 2130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    const/16 v1, 0x20

    .line 2446
    iput v1, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    .line 2460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    .line 2471
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    .line 2494
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    .line 2497
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isOnSizeChangedRender:Z

    .line 542
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->generateInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    .line 543
    new-instance v1, Lcom/taobao/weex/common/WXPerformance;

    invoke-direct {v1, v0}, Lcom/taobao/weex/common/WXPerformance;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    .line 544
    new-instance v1, Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-direct {v1, v0}, Lcom/taobao/weex/performance/WXInstanceApm;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    .line 545
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 130
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    const-string v1, ""

    .line 142
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mUniPagePath:Ljava/lang/String;

    .line 146
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 147
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    .line 148
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    .line 149
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    .line 152
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    const/4 v2, 0x1

    .line 155
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    .line 156
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    .line 157
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    .line 158
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    const v3, 0x443b8000    # 750.0f

    .line 159
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    .line 160
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    .line 162
    new-instance v3, Lcom/taobao/weex/ui/flat/FlatGUIContext;

    invoke-direct {v3}, Lcom/taobao/weex/ui/flat/FlatGUIContext;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 166
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    .line 167
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    .line 174
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    .line 176
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    .line 181
    iput-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    new-array v3, v3, [J

    .line 182
    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    .line 185
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 190
    sget-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 192
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    const-string v3, "platform"

    .line 216
    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    .line 224
    sget-boolean v3, Lcom/taobao/weex/WXEnvironment;->AUTO_ADJUST_ENV_DEVICE_WIDTH:Z

    iput-boolean v3, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    .line 254
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 256
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    .line 258
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    const/4 v3, -0x1

    .line 338
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    .line 527
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    .line 806
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    .line 811
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    .line 1076
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    .line 1776
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    .line 2130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    const/16 v1, 0x20

    .line 2446
    iput v1, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    .line 2460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    .line 2471
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    .line 2494
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    .line 2497
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isOnSizeChangedRender:Z

    .line 530
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->generateInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    .line 531
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "originalContext"
        }
    .end annotation

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 130
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    const-string v1, ""

    .line 142
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mUniPagePath:Ljava/lang/String;

    .line 146
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 147
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    .line 148
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    .line 149
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    .line 152
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    const/4 v2, 0x1

    .line 155
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    .line 156
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    .line 157
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    .line 158
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    const v3, 0x443b8000    # 750.0f

    .line 159
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    .line 160
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    .line 162
    new-instance v3, Lcom/taobao/weex/ui/flat/FlatGUIContext;

    invoke-direct {v3}, Lcom/taobao/weex/ui/flat/FlatGUIContext;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 166
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    .line 167
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    .line 174
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    .line 176
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    .line 181
    iput-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    new-array v3, v3, [J

    .line 182
    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    .line 185
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 190
    sget-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 192
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    const-string v3, "platform"

    .line 216
    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    .line 224
    sget-boolean v3, Lcom/taobao/weex/WXEnvironment;->AUTO_ADJUST_ENV_DEVICE_WIDTH:Z

    iput-boolean v3, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    .line 254
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 256
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    .line 258
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    const/4 v3, -0x1

    .line 338
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    .line 527
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    .line 806
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    .line 811
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    .line 1076
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    .line 1776
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    .line 2130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    const/16 v1, 0x20

    .line 2446
    iput v1, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    .line 2460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    .line 2471
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    .line 2494
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    .line 2497
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isOnSizeChangedRender:Z

    .line 535
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->generateInstanceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    .line 536
    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mOriginalContext:Landroid/content/Context;

    .line 537
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 130
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    const-string v1, ""

    .line 142
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mUniPagePath:Ljava/lang/String;

    .line 146
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 147
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    .line 148
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    .line 149
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    .line 152
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    const/4 v2, 0x1

    .line 155
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    .line 156
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    .line 157
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    .line 158
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    const v3, 0x443b8000    # 750.0f

    .line 159
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    .line 160
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    .line 162
    new-instance v3, Lcom/taobao/weex/ui/flat/FlatGUIContext;

    invoke-direct {v3}, Lcom/taobao/weex/ui/flat/FlatGUIContext;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 166
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    .line 167
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    .line 174
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->nextId()I

    move-result v3

    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    .line 176
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    const/4 v3, 0x5

    new-array v4, v3, [Ljava/lang/String;

    .line 181
    iput-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    new-array v3, v3, [J

    .line 182
    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    .line 185
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 190
    sget-object v3, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 192
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    const-string v3, "platform"

    .line 216
    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    .line 224
    sget-boolean v3, Lcom/taobao/weex/WXEnvironment;->AUTO_ADJUST_ENV_DEVICE_WIDTH:Z

    iput-boolean v3, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    .line 254
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 256
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    .line 258
    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    const/4 v3, -0x1

    .line 338
    iput v3, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    .line 527
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    .line 806
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    .line 811
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    .line 1076
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    .line 1776
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    .line 2130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    const/16 v1, 0x20

    .line 2446
    iput v1, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    .line 2460
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    .line 2471
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    .line 2494
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    .line 2497
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->isOnSizeChangedRender:Z

    .line 554
    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    .line 555
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/WXSDKInstance;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKInstance;->checkWhiteScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/WXSDKInstance;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/WXSDKInstance;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/WXSDKInstance;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    return p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/WXSDKInstance;)Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    return p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/taobao/weex/WXSDKInstance;Z)Z
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->isPreRenderMode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXRenderListener;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/taobao/weex/WXSDKInstance;)Lcom/taobao/weex/IWXStatisticsListener;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/taobao/weex/WXSDKInstance;)Ljava/util/Map;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    return-object p0
.end method

.method private assembleFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 1151
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1152
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method private checkWhiteScreen()V
    .locals 5

    .line 975
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/taobao/weex/performance/WhiteScreenUtils;->doWhiteScreenCheck()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 979
    :cond_0
    invoke-static {p0}, Lcom/taobao/weex/performance/WhiteScreenUtils;->isWhiteScreen(Lcom/taobao/weex/WXSDKInstance;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 983
    :cond_1
    sget-object v0, Lcom/taobao/weex/common/WXErrorCode;->WX_ERROR_WHITE_SCREEN:Lcom/taobao/weex/common/WXErrorCode;

    .line 984
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 985
    invoke-static {p0}, Lcom/taobao/weex/performance/WhiteScreenUtils;->takeViewTreeSnapShot(Lcom/taobao/weex/WXSDKInstance;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "null viewTreeMsg"

    :cond_2
    const-string/jumbo v3, "viewTree"

    .line 986
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->getWeexCoreThreadStackTrace()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "weexCoreThreadStackTrace"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    invoke-static {}, Lcom/taobao/weex/performance/WXStateRecord;->getInstance()Lcom/taobao/weex/performance/WXStateRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/performance/WXStateRecord;->getStateInfo()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 990
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 992
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "checkEmptyScreen"

    invoke-static {v2, v0, v4, v3, v1}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private destroyView(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 1838
    :try_start_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1839
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1840
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1841
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/taobao/weex/WXSDKInstance;->destroyView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1844
    :cond_0
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->removeViews(II)V

    const-string v0, "mChildrenCount"

    .line 1846
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/taobao/weex/utils/WXReflectionUtils;->setValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1849
    :cond_1
    instance-of v0, p1, Lcom/taobao/weex/common/Destroyable;

    if-eqz v0, :cond_2

    .line 1850
    check-cast p1, Lcom/taobao/weex/common/Destroyable;

    invoke-interface {p1}, Lcom/taobao/weex/common/Destroyable;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "WXSDKInstance destroyView Exception: "

    .line 1853
    invoke-static {v0, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private ensureRenderArchor()V
    .locals 3

    .line 784
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-nez v0, :cond_0

    .line 785
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 786
    new-instance v0, Lcom/taobao/weex/RenderContainer;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/taobao/weex/RenderContainer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->setRenderContainer(Lcom/taobao/weex/RenderContainer;)V

    .line 787
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 788
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->setBackgroundColor(I)V

    .line 789
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0, p0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->setSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 790
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0, p0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method private isDataRender()Z
    .locals 2

    .line 1001
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER:Lcom/taobao/weex/common/WXRenderStrategy;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isDisableSkipFrameworkInDataRender()Z
    .locals 4

    .line 2438
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string/jumbo v1, "wxeagle"

    const-string v2, "disable_skip_framework_init"

    const-string v3, "false"

    .line 2442
    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 2443
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onInterceptInstanceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instanceId",
            "elementRef",
            "type",
            "data",
            "domChanges"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2404
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceOnFireEventInterceptorList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2407
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 2408
    invoke-virtual/range {v2 .. v7}, Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;->onInterceptFireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private renderByUrlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x10,
            0x0
        }
        names = {
            "pageName",
            "url",
            "options",
            "jsonInitData",
            "flag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

    const-string v1, "renderByUrlInternal"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/tools/TimeCalculator;->createLogDetail(Ljava/lang/String;)Lcom/taobao/weex/utils/tools/LogDetail;

    move-result-object v0

    .line 1011
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 1012
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKInstance;->ensureRenderArchor()V

    .line 1013
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/WXSDKInstance;->wrapPageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1014
    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 1015
    iput-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 1016
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1017
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object p1

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/taobao/weex/bridge/WXValidateProcessor;->needValidate(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    :cond_0
    if-nez p3, :cond_1

    .line 1022
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_1
    move-object v4, p3

    const-string p1, "bundleUrl"

    .line 1024
    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1025
    invoke-interface {v4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object p1

    iput-object v3, p1, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    .line 1030
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {p1}, Lcom/taobao/weex/performance/WXInstanceApm;->doInit()V

    .line 1031
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {p1, v3}, Lcom/taobao/weex/performance/WXInstanceApm;->setPageName(Ljava/lang/String;)V

    .line 1033
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo p3, "wxStartDownLoadBundle"

    if-eqz p1, :cond_3

    .line 1034
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1035
    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {p2, p3}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 1036
    invoke-direct {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->assembleFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/taobao/weex/utils/WXFileUtils;->loadFileOrAsset(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 1037
    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const-string/jumbo p3, "wxEndDownLoadBundle"

    invoke-virtual {p2, p3}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, v3

    move-object v3, p1

    move-object v5, p4

    move-object v6, p5

    .line 1038
    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void

    :cond_3
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1043
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1044
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".wlasm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 1049
    sget-object p5, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    :cond_5
    move-object v6, p5

    .line 1052
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object p1

    .line 1054
    new-instance p5, Lcom/taobao/weex/common/WXRequest;

    invoke-direct {p5}, Lcom/taobao/weex/common/WXRequest;-><init>()V

    .line 1055
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "bundle"

    invoke-virtual {p0, p2, v1}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p5, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    .line 1056
    iget-object p2, p5, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 1057
    iget-object p2, p5, Lcom/taobao/weex/common/WXRequest;->url:Ljava/lang/String;

    sput-object p2, Lcom/taobao/weex/WXSDKInstance;->requestUrl:Ljava/lang/String;

    goto :goto_0

    .line 1059
    :cond_6
    sput-object v3, Lcom/taobao/weex/WXSDKInstance;->requestUrl:Ljava/lang/String;

    .line 1062
    :goto_0
    iget-object p2, p5, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    if-nez p2, :cond_7

    .line 1063
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p5, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    .line 1065
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p5, Lcom/taobao/weex/common/WXRequest;->instanceId:Ljava/lang/String;

    .line 1066
    iget-object p2, p5, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getConfig()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/http/WXHttpUtil;->assembleUserAgent(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user-agent"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    iget-object p2, p5, Lcom/taobao/weex/common/WXRequest;->paramMap:Ljava/util/Map;

    const-string v1, "isBundleRequest"

    const-string v2, "true"

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    new-instance p2, Lcom/taobao/weex/WXHttpListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v1, p2

    move-object v2, p0

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/taobao/weex/WXHttpListener;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;J)V

    iput-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    .line 1069
    iget-boolean p4, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    iput-boolean p4, p2, Lcom/taobao/weex/WXHttpListener;->isPreDownLoadMode:Z

    .line 1070
    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    invoke-virtual {p2, p0}, Lcom/taobao/weex/WXHttpListener;->setSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 1071
    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {p2, p3}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 1072
    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    invoke-interface {p1, p5, p2}, Lcom/taobao/weex/adapter/IWXHttpAdapter;->sendRequest(Lcom/taobao/weex/common/WXRequest;Lcom/taobao/weex/adapter/IWXHttpAdapter$OnHttpListener;)V

    .line 1073
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    return-void
.end method

.method private renderInternal(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageName",
            "template",
            "options",
            "jsonInitData",
            "flag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/Script;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 860
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/taobao/weex/Script;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

    const-string v1, "renderInternal"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/tools/TimeCalculator;->createLogDetail(Ljava/lang/String;)Lcom/taobao/weex/utils/tools/LogDetail;

    move-result-object v0

    .line 865
    iput-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 868
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->hasInit()Z

    move-result v1

    if-nez v1, :cond_1

    .line 869
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->doInit()V

    .line 871
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v1, p1}, Lcom/taobao/weex/performance/WXInstanceApm;->setPageName(Ljava/lang/String;)V

    .line 872
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const-string/jumbo v2, "wxRenderTimeOrigin"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 873
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->doDelayCollectData()V

    .line 875
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "defaultBundleUrl"

    goto :goto_0

    :cond_2
    move-object v2, p1

    :goto_0
    iput-object v2, v1, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    .line 876
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 877
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v1, v1, Lcom/taobao/weex/common/WXPerformance;->pageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 880
    :cond_3
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 881
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    const/4 v2, -0x1

    const-string v3, "executeBundleJS"

    invoke-static {v3, v1, v2}, Lcom/taobao/weex/tracing/WXTracing;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v1

    .line 882
    iget v2, p0, Lcom/taobao/weex/WXSDKInstance;->mExecJSTraceId:I

    iput v2, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->traceId:I

    .line 883
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    iput-object v2, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->iid:Ljava/lang/String;

    const-string v2, "JSThread"

    .line 884
    iput-object v2, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    const-string v2, "B"

    .line 885
    iput-object v2, v1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    .line 886
    invoke-virtual {v1}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submit()V

    .line 887
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartNanos:J

    .line 890
    :cond_4
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKInstance;->ensureRenderArchor()V

    if-nez p3, :cond_5

    .line 894
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_5
    move-object v4, p3

    .line 897
    sget-boolean p3, Lcom/taobao/weex/WXEnvironment;->sDynamicMode:Z

    if-eqz p3, :cond_6

    sget-object p3, Lcom/taobao/weex/WXEnvironment;->sDynamicUrl:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "dynamicMode"

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    const-string p2, "true"

    .line 898
    invoke-interface {v4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v3, Lcom/taobao/weex/WXEnvironment;->sDynamicUrl:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/weex/WXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void

    .line 905
    :cond_6
    iget-object p3, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p2}, Lcom/taobao/weex/Script;->length()I

    move-result p5

    int-to-float p5, p5

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr p5, v1

    float-to-double v1, p5

    iput-wide v1, p3, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    .line 906
    iget-object p3, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    iget-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v1, p5, Lcom/taobao/weex/common/WXPerformance;->JSTemplateSize:D

    const-string/jumbo p5, "wxBundleSize"

    invoke-virtual {p3, p5, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->addStats(Ljava/lang/String;D)V

    .line 907
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    .line 908
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p3

    const-string/jumbo p5, "wx_current_url"

    invoke-virtual {p3, p5, p1}, Lcom/taobao/weex/WXSDKManager;->setCrashInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInitParams()Lcom/taobao/weex/bridge/WXParams;

    move-result-object p1

    .line 914
    sget-object p3, Lcom/taobao/weex/WXEnvironment;->sApplication:Landroid/app/Application;

    invoke-virtual {p3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 915
    iget-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p5

    .line 916
    invoke-static {}, Lio/dcloud/feature/weex/WeexInstanceMgr;->self()Lio/dcloud/feature/weex/WeexInstanceMgr;

    move-result-object v1

    invoke-virtual {v1}, Lio/dcloud/feature/weex/WeexInstanceMgr;->getComplier()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "weex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_7

    int-to-float v1, p5

    div-float/2addr v1, p3

    .line 917
    invoke-virtual {p0, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->setInstanceViewPortWidth(FZ)V

    :cond_7
    if-eqz p1, :cond_9

    .line 919
    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getDeviceWidth()Ljava/lang/String;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 920
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/taobao/weex/bridge/WXParams;->setDeviceWidth(Ljava/lang/String;)V

    .line 921
    iget-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/taobao/weex/bridge/WXParams;->setDeviceHeight(Ljava/lang/String;)V

    .line 922
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p5

    const-string v1, "scale"

    invoke-static {v1, p5}, Lcom/taobao/weex/WXEnvironment;->addCustomOptions(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 924
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/weex/utils/WXViewUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_8

    .line 925
    iget-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/taobao/weex/utils/WXViewUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p5

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    .line 927
    :cond_8
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getDeviceWidth()Ljava/lang/String;

    move-result-object v3

    .line 928
    invoke-virtual {p1}, Lcom/taobao/weex/bridge/WXParams;->getDeviceHeight()Ljava/lang/String;

    move-result-object p1

    .line 929
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p3

    .line 927
    invoke-virtual {v1, v3, p1, p3, p5}, Lcom/taobao/weex/bridge/WXBridgeManager;->updateInitDeviceParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iget-object p3, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    .line 931
    invoke-static {p3}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p3

    int-to-float p3, p3

    iget-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    .line 932
    invoke-static {p5}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result p5

    .line 930
    invoke-direct {p0, p1, p3, p5}, Lcom/taobao/weex/WXSDKInstance;->setDeviceDisplay(FFF)V

    .line 935
    :cond_9
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskStart()V

    .line 936
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->isPreInitMode()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 937
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p1

    const-string/jumbo p3, "wxStartLoadBundle"

    invoke-virtual {p1, p3}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 938
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/taobao/weex/Script;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->loadJsBundleInPreInitMode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 940
    :cond_a
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2, v4, p4}, Lcom/taobao/weex/WXSDKManager;->createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    .line 942
    :goto_1
    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/LogDetail;->taskEnd()V

    .line 943
    iput-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    .line 945
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWXJscProcessManager()Lcom/taobao/weex/adapter/IWXJscProcessManager;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 947
    invoke-interface {p1}, Lcom/taobao/weex/adapter/IWXJscProcessManager;->shouldReboot()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 948
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p2

    new-instance p3, Lcom/taobao/weex/WXSDKInstance$3;

    invoke-direct {p3, p0, p1}, Lcom/taobao/weex/WXSDKInstance$3;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/adapter/IWXJscProcessManager;)V

    .line 969
    invoke-interface {p1}, Lcom/taobao/weex/adapter/IWXJscProcessManager;->rebootTimeout()J

    move-result-wide p4

    .line 948
    invoke-virtual {p2, p3, p4, p5}, Lcom/taobao/weex/WXSDKManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    :cond_b
    :goto_2
    return-void
.end method

.method private renderInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageName",
            "template",
            "options",
            "jsonInitData",
            "flag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 800
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 803
    :cond_0
    new-instance v3, Lcom/taobao/weex/Script;

    invoke-direct {v3, p2}, Lcom/taobao/weex/Script;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/taobao/weex/WXSDKInstance;->renderInternal(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setDeviceDisplay(FFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "deviceWidth",
            "deviceHeight",
            "scale"
        }
    .end annotation

    .line 507
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setDeviceDisplay(Ljava/lang/String;FFF)V

    return-void
.end method

.method private wrapPageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pageName",
            "url"
        }
    .end annotation

    const-string v0, "default"

    .line 1132
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1134
    sput-object p2, Lcom/taobao/weex/utils/WXExceptionUtils;->degradeUrl:Ljava/lang/String;

    .line 1136
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1138
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 1139
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1140
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1141
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1142
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p1, p2

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public OnVSync()V
    .locals 2

    .line 2383
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->notifyLayout(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2385
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$11;

    invoke-direct {v1, p0}, Lcom/taobao/weex/WXSDKInstance$11;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public addContentBoxMeasurement(JLcom/taobao/weex/layout/ContentBoxMeasurement;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "renderObjectPtr",
            "contentBoxMeasurement"
        }
    .end annotation

    .line 2395
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "callback"
        }
    .end annotation

    .line 2182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2185
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 2187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2188
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2190
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public addFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 2462
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2463
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addInActiveAddElementAction(Ljava/lang/String;Lcom/taobao/weex/ui/action/GraphicActionAddElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "action"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addInstanceOnFireEventInterceptor(Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceOnFireEventInterceptor"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 2424
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceOnFireEventInterceptorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2425
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceOnFireEventInterceptorList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public addLayerOverFlowListener(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUserTrackParameter(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 2267
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2268
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    .line 2270
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public callActionAddElementTime(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1803
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int p1, v1

    iput p1, v0, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    return-void
.end method

.method public callJsTime(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "time"
        }
    .end annotation

    .line 1785
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-nez v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalTime:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalTime:J

    .line 1787
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget p2, p1, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalNum:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/taobao/weex/common/WXPerformance;->fsCallJsTotalNum:I

    :cond_0
    return-void
.end method

.method public checkModuleEventRegistered(Ljava/lang/String;Lcom/taobao/weex/common/WXModule;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "module"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 2246
    invoke-virtual {p2, p1}, Lcom/taobao/weex/common/WXModule;->getEventCallbacks(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2247
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public clearUserTrackParameters()V
    .locals 1

    .line 2274
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2275
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public createInstanceFuncHeartBeat()V
    .locals 2

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createInstanceFuncHeartBeat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 590
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->createInstanceHeartBeat:Z

    return-void
.end method

.method public final createNestedInstance(Lcom/taobao/weex/ui/component/NestedContainer;)Lcom/taobao/weex/WXSDKInstance;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->newNestedInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 568
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

    if-eqz v1, :cond_0

    .line 569
    invoke-interface {v1, v0, p1}, Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;->onCreateNestInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/NestedContainer;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getComponentObserver()Lcom/taobao/weex/ComponentObserver;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->setComponentObserver(Lcom/taobao/weex/ComponentObserver;)V

    :cond_1
    return-object v0
.end method

.method public declared-synchronized destroy()V
    .locals 4

    monitor-enter p0

    .line 1858
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1859
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mParentInstance:Lcom/taobao/weex/WXSDKInstance;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1860
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mParentInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 1862
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->onEnd()V

    .line 1865
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    if-eqz v0, :cond_1

    .line 1866
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/taobao/weex/WXSDKManager;->destroyInstance(Ljava/lang/String;)V

    .line 1869
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    if-eqz v0, :cond_2

    .line 1870
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1871
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    .line 1873
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_3

    .line 1874
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 1875
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    .line 1878
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_4

    .line 1879
    invoke-direct {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->destroyView(Landroid/view/View;)V

    .line 1883
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    .line 1884
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1887
    :cond_5
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mComponentObserver:Lcom/taobao/weex/ComponentObserver;

    if-eqz v0, :cond_6

    .line 1888
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mComponentObserver:Lcom/taobao/weex/ComponentObserver;

    .line 1891
    :cond_6
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1892
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1895
    :cond_7
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->destroy()V

    .line 1896
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    .line 1897
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceOnFireEventInterceptorList:Ljava/util/List;

    .line 1898
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;

    .line 1899
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    .line 1900
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    .line 1901
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    .line 1902
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

    .line 1903
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .line 1904
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mScrollView:Landroid/widget/ScrollView;

    .line 1905
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    .line 1906
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    const/4 v0, 0x1

    .line 1907
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    .line 1908
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    .line 1909
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 1910
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1912
    :cond_8
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    .line 1913
    iput-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    .line 1915
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 1916
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1918
    :cond_a
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/common/WXPerformance;->afterInstanceDestroy(Ljava/lang/String;)V

    .line 1920
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$8;

    invoke-direct {v1, p0}, Lcom/taobao/weex/WXSDKInstance$8;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    .line 1931
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$9;

    invoke-direct {v1, p0}, Lcom/taobao/weex/WXSDKInstance$9;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->postDelay(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1938
    :cond_b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableLayerType(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 430
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "type"
        }
    .end annotation

    .line 2178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "elementRef",
            "type",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2174
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "elementRef",
            "type",
            "data",
            "domChanges"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2170
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "elementRef",
            "type",
            "data",
            "domChanges",
            "eventArgs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 2149
    invoke-virtual/range {v0 .. v6}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            "elementRef",
            "type",
            "data",
            "domChanges",
            "eventArgs",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/EventResult;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    .line 2153
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->onInterceptInstanceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 2154
    iget-object v0, v6, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallEventTotalNum:I

    const v1, 0x7fffffff

    if-ge v0, v1, :cond_0

    .line 2155
    iget-object v0, v6, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallEventTotalNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsCallEventTotalNum:I

    .line 2157
    :cond_0
    iget-object v0, v6, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string/jumbo v3, "wxFSCallEventTotalNum"

    invoke-virtual {v0, v3, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->updateFSDiffStats(Ljava/lang/String;D)V

    .line 2158
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v7 .. v14}, Lcom/taobao/weex/bridge/WXBridgeManager;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    return-void
.end method

.method public fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
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
            ">;)V"
        }
    .end annotation

    .line 2133
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 2135
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2136
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, p2, v3}, Lcom/taobao/weex/WXSDKManager;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fireModuleEvent(Ljava/lang/String;Lcom/taobao/weex/common/WXModule;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventName",
            "module",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXModule;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 2220
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    .line 2221
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    invoke-virtual {p2}, Lcom/taobao/weex/common/WXModule;->getModuleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "module"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    .line 2223
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2225
    invoke-virtual {p2, p1}, Lcom/taobao/weex/common/WXModule;->getEventCallbacks(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2227
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 2228
    new-instance v1, Lcom/taobao/weex/bridge/SimpleJSCallback;

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v1, v2, p3}, Lcom/taobao/weex/bridge/SimpleJSCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    invoke-virtual {p2, p3}, Lcom/taobao/weex/common/WXModule;->isOnce(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2230
    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/SimpleJSCallback;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 2232
    :cond_1
    invoke-virtual {v1, v0}, Lcom/taobao/weex/bridge/SimpleJSCallback;->invokeAndKeepAlive(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public firstScreenCreateInstanceTime(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 1778
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    if-eqz v0, :cond_0

    .line 1779
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    sub-long/2addr p1, v1

    iput-wide p1, v0, Lcom/taobao/weex/common/WXPerformance;->firstScreenJSFExecuteTime:J

    const/4 p1, 0x0

    .line 1780
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mCreateInstance:Z

    :cond_0
    return-void
.end method

.method public getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;
    .locals 1

    .line 2259
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    return-object v0
.end method

.method public getBundleUrl()Ljava/lang/String;
    .locals 1

    .line 1948
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentObserver()Lcom/taobao/weex/ComponentObserver;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mComponentObserver:Lcom/taobao/weex/ComponentObserver;

    return-object v0
.end method

.method public getComponentsExceedGPULimit()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    return-object v0
.end method

.method public getContainerInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 689
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContainerInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .line 1962
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    return-object v0
.end method

.method public getContentBoxMeasurement(J)Lcom/taobao/weex/layout/ContentBoxMeasurement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderObjectPtr"
        }
    .end annotation

    .line 2399
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContentBoxMeasurements:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/layout/ContentBoxMeasurement;

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1231
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCustomFontNetworkHandler()Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCustomFontNetworkHandler:Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;

    return-object v0
.end method

.method public getDefaultFontSize()I
    .locals 1

    .line 2448
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    return v0
.end method

.method public getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;
    .locals 1

    .line 1248
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getDrawableLoader()Lcom/taobao/weex/adapter/IDrawableLoader;

    move-result-object v0

    return-object v0
.end method

.method public getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mFlatGUIContext:Lcom/taobao/weex/ui/flat/FlatGUIContext;

    return-object v0
.end method

.method public getImageNetworkHandler()Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mImageNetworkHandler:Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;

    return-object v0
.end method

.method public getImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;
    .locals 1

    .line 1244
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXImgLoaderAdapter()Lcom/taobao/weex/adapter/IWXImgLoaderAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInActiveAddElementAction(Ljava/lang/String;)Lcom/taobao/weex/ui/action/GraphicActionAddElement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/action/GraphicActionAddElement;

    return-object p1
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .line 1227
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceOnFireEventInterceptorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/weex/instance/InstanceOnFireEventInterceptor;",
            ">;"
        }
    .end annotation

    .line 2413
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceOnFireEventInterceptorList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceOnFireEventInterceptorList:Ljava/util/List;

    .line 2416
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceOnFireEventInterceptorList:Ljava/util/List;

    return-object v0
.end method

.method public getInstanceViewPortWidth()I
    .locals 1

    .line 515
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getInstanceViewPortWidthWithFloat()F
    .locals 1

    .line 511
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    return v0
.end method

.method public getLayerOverFlowListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    return-object v0
.end method

.method public getMaxDeepLayer()I
    .locals 1

    .line 2286
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mMaxDeepLayer:I

    return v0
.end method

.method public getMaxHiddenEmbedsNum()I
    .locals 1

    .line 341
    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    return v0
.end method

.method public getNativeInvokeHelper()Lcom/taobao/weex/bridge/NativeInvokeHelper;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNativeInvokeHelper:Lcom/taobao/weex/bridge/NativeInvokeHelper;

    return-object v0
.end method

.method public getOriginalContext()Landroid/content/Context;
    .locals 1

    .line 2509
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mOriginalContext:Landroid/content/Context;

    return-object v0
.end method

.method public getParentInstance()Lcom/taobao/weex/WXSDKInstance;
    .locals 1

    .line 1829
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mParentInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object v0
.end method

.method public getRenderContainerPaddingLeft()I
    .locals 1

    .line 2012
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_0

    .line 2013
    invoke-virtual {v0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getPaddingLeft()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRenderContainerPaddingRight()I
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_0

    .line 2020
    invoke-virtual {v0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getPaddingRight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRenderContainerPaddingTop()I
    .locals 1

    .line 2026
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_0

    .line 2027
    invoke-virtual {v0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getPaddingTop()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRenderStrategy()Lcom/taobao/weex/common/WXRenderStrategy;
    .locals 1

    .line 1219
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    return-object v0
.end method

.method public getRenderType()Ljava/lang/String;
    .locals 1

    .line 2430
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    return-object v0
.end method

.method public getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    return-object v0
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 1956
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1958
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public getScrollViewListener()Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    return-object v0
.end method

.method public getStreamNetworkHandler()Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mStreamNetworkHandler:Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    .line 2368
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2371
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateInfo()Ljava/lang/String;
    .locals 7

    .line 2314
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getTemplate()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " template md5 null ,httpHeader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2318
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " template md5  length 0 ,httpHeader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_0
    const-string v1, "UTF-8"

    .line 2322
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2323
    invoke-static {v0}, Lcom/taobao/weex/utils/WXFileUtils;->md5([B)Ljava/lang/String;

    move-result-object v1

    .line 2324
    invoke-static {v0}, Lcom/taobao/weex/utils/WXFileUtils;->base64Md5([B)Ljava/lang/String;

    move-result-object v2

    .line 2325
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2326
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2327
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2328
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2329
    iget-object v5, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string v6, "templateSourceMD5"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2330
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string v5, "templateSourceBase64MD5"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " template md5 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " length "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " base64 md5 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " response header "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    .line 2333
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "template md5 getBytes error"

    return-object v0
.end method

.method public getUIContext()Landroid/content/Context;
    .locals 1

    .line 1223
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;
    .locals 1

    .line 1252
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getUniPagePath()Ljava/lang/String;
    .locals 1

    .line 1952
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUniPagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUserTrackParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .line 2263
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    return-object v0
.end method

.method public getWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;
    .locals 1

    .line 1260
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXHttpAdapter()Lcom/taobao/weex/adapter/IWXHttpAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getWXPerformance()Lcom/taobao/weex/common/WXPerformance;
    .locals 1

    .line 2255
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    return-object v0
.end method

.method public declared-synchronized getWXScrollListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/taobao/weex/common/OnWXScrollListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2033
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWXStatisticsListener()Lcom/taobao/weex/IWXStatisticsListener;
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-object v0
.end method

.method public getWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;
    .locals 1

    .line 1269
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXWebSocketAdapter()Lcom/taobao/weex/appfram/websocket/IWebSocketAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getWeexHeight()I
    .locals 1

    .line 1235
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getWeexWidth()I
    .locals 1

    .line 1239
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 602
    invoke-static {}, Lcom/taobao/weex/utils/cache/RegisterCache;->getInstance()Lcom/taobao/weex/utils/cache/RegisterCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/utils/cache/RegisterCache;->idle(Z)Z

    .line 603
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    .line 604
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContainerInfo:Ljava/util/Map;

    .line 605
    new-instance v0, Lcom/taobao/weex/bridge/NativeInvokeHelper;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/weex/bridge/NativeInvokeHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNativeInvokeHelper:Lcom/taobao/weex/bridge/NativeInvokeHelper;

    .line 607
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Lcom/taobao/weex/common/WXPerformance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXPerformance;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    if-nez v0, :cond_1

    .line 611
    new-instance v0, Lcom/taobao/weex/performance/WXInstanceApm;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    sget-object v1, Lcom/taobao/weex/WXEnvironment;->WXSDK_VERSION:Ljava/lang/String;

    iput-object v1, v0, Lcom/taobao/weex/common/WXPerformance;->WXSDKVersion:Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    sget-wide v1, Lcom/taobao/weex/WXEnvironment;->sJSLibInitTime:J

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->JSLibInitTime:J

    .line 617
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getIWXUserTrackAdapter()Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    .line 619
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getAllInstanceMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContainerInfo:Ljava/util/Map;

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 622
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "unKnowContainer"

    :goto_0
    const-string/jumbo v1, "wxContainerName"

    .line 621
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mContainerInfo:Ljava/util/Map;

    const-string/jumbo v0, "wxInstanceType"

    const-string v1, "page"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    invoke-static {}, Lcom/taobao/weex/WXSDKInstance;->isDisableSkipFrameworkInDataRender()Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    .line 630
    new-instance p1, Lcom/taobao/weex/utils/tools/TimeCalculator;

    invoke-direct {p1, p0}, Lcom/taobao/weex/utils/tools/TimeCalculator;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

    return-void
.end method

.method public isAutoAdjustDeviceWidth()Z
    .locals 1

    .line 503
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    return v0
.end method

.method public isCompilerWithUniapp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isContentMd5Match()Z
    .locals 5

    .line 2344
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "Content-Md5"

    .line 2347
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 2349
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string v2, "content-md5"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_1
    if-eqz v0, :cond_5

    .line 2351
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 2354
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2356
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    const-string v4, "templateSourceBase64MD5"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_3

    .line 2358
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getTemplateInfo()Ljava/lang/String;

    .line 2359
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->responseHeaders:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    :cond_3
    if-eqz v3, :cond_5

    .line 2361
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 2364
    :cond_4
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public isDestroy()Z
    .locals 1

    .line 1941
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    return v0
.end method

.method public isFrameViewShow()Z
    .locals 1

    .line 2474
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    return v0
.end method

.method public isFullScreenHeightEnabled()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    return v0
.end method

.method public isHasException()Z
    .locals 1

    .line 581
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    return v0
.end method

.method public isImmersive()Z
    .locals 1

    .line 2487
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    return v0
.end method

.method public isLayerTypeEnabled()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->enableLayerType:Z

    return v0
.end method

.method public isNeedReLoad()Z
    .locals 1

    .line 444
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    return v0
.end method

.method public isNeedValidate()Z
    .locals 1

    .line 440
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    return v0
.end method

.method public isOnSizeChangedRender()Z
    .locals 1

    .line 2502
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isOnSizeChangedRender:Z

    return v0
.end method

.method public isPreDownLoad()Z
    .locals 1

    .line 813
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    return v0
.end method

.method public isPreInitMode()Z
    .locals 1

    .line 808
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    return v0
.end method

.method public isPreRenderMode()Z
    .locals 1

    .line 1281
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreRenderMode:Z

    return v0
.end method

.method public isTrackComponent()Z
    .locals 1

    .line 403
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->trackComponent:Z

    return v0
.end method

.method public isUseScroller()Z
    .locals 1

    .line 458
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    return v0
.end method

.method public isViewDisAppear()Z
    .locals 1

    .line 1596
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    return v0
.end method

.method public moveFixedView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fixedChild"
        }
    .end annotation

    .line 1992
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_1

    .line 1994
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1995
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eq v0, v1, :cond_1

    .line 1996
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1997
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 2000
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected newNestedInstance()Lcom/taobao/weex/WXSDKInstance;
    .locals 2

    .line 578
    new-instance v0, Lcom/taobao/weex/WXSDKInstance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/weex/WXSDKInstance;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onActivityBack()Z
    .locals 1

    .line 1498
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityBack(Ljava/lang/String;)Z

    .line 1500
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 1501
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityBack()Z

    move-result v0

    return v0

    .line 1503
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Warning :Component tree has not build completely, onActivityBack can not be call!"

    .line 1504
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreate()V
    .locals 4

    .line 1331
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityCreate(Ljava/lang/String;)V

    .line 1333
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 1334
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityCreate()V

    goto :goto_0

    .line 1336
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Warning :Component tree has not build completely,onActivityCreate can not be call!"

    .line 1337
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 1341
    :cond_1
    :goto_0
    new-instance v0, Lcom/taobao/weex/WXGlobalEventReceiver;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXGlobalEventReceiver;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    .line 1343
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "wx_global_action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1346
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1347
    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEventReceiver:Lcom/taobao/weex/WXGlobalEventReceiver;

    :goto_1
    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    .line 1483
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityDestroy(Ljava/lang/String;)V

    .line 1484
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 1485
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityDestroy()V

    goto :goto_0

    .line 1487
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Warning :Component tree has not build completely, onActivityDestroy can not be call!"

    .line 1488
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 1491
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mTimeCalculator:Lcom/taobao/weex/utils/tools/TimeCalculator;

    invoke-virtual {v0}, Lcom/taobao/weex/utils/tools/TimeCalculator;->println()V

    .line 1492
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->destroy()V

    return-void
.end method

.method public onActivityPause()V
    .locals 9

    .line 1384
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->onViewDisappear()V

    .line 1385
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 1386
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->useScroller:I

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getMaxDeepLayer()I

    move-result v2

    iput v2, v0, Lcom/taobao/weex/common/WXPerformance;->maxDeepViewLayer:I

    .line 1390
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mwxDims:[Ljava/lang/String;

    iput-object v2, v0, Lcom/taobao/weex/common/WXPerformance;->wxDims:[Ljava/lang/String;

    .line 1391
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->measureTimes:[J

    iput-object v2, v0, Lcom/taobao/weex/common/WXPerformance;->measureTimes:[J

    .line 1392
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    if-eqz v3, :cond_1

    .line 1393
    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getUserTrackParams()Ljava/util/Map;

    move-result-object v8

    const-string v6, "load"

    invoke-interface/range {v3 .. v8}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V

    .line 1395
    :cond_1
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->isCommit:Z

    .line 1398
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityPause(Ljava/lang/String;)V

    .line 1399
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_3

    .line 1400
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityPause()V

    goto :goto_0

    .line 1402
    :cond_3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Warning :Component tree has not build completely,onActivityPause can not be call!"

    .line 1403
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 1407
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    if-nez v0, :cond_6

    const-string v0, "Application to be in the backround"

    .line 1408
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V

    .line 1409
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "wx_global_action"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "eventName"

    const-string v3, "WXApplicationWillResignActiveEvent"

    .line 1410
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1411
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wx_instanceid"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1415
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_5

    .line 1416
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1419
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "weex"

    .line 1421
    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1424
    :goto_1
    iput-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 1428
    :cond_6
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isPerf()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    if-eqz v0, :cond_8

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PerformanceData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->toPerfString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1552
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityResult(Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1554
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 1555
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1557
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Warning :Component tree has not build completely, onActivityResult can not be call!"

    .line 1558
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResume()V
    .locals 3

    .line 1438
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityResume(Ljava/lang/String;)V

    .line 1440
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 1441
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityResume()V

    goto :goto_0

    .line 1443
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Warning :Component tree has not build completely, onActivityResume can not be call!"

    .line 1444
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    .line 1448
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    if-eqz v0, :cond_3

    const-string v0, "Application  to be in the foreground"

    .line 1449
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V

    .line 1450
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "wx_global_action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "eventName"

    const-string v2, "WXApplicationDidBecomeActiveEvent"

    .line 1451
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1452
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wx_instanceid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1454
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 1455
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1457
    :cond_2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    const/4 v0, 0x0

    .line 1459
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mCurrentGround:Z

    .line 1462
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->onViewAppear()V

    return-void
.end method

.method public onActivityStart()V
    .locals 1

    .line 1356
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityStart(Ljava/lang/String;)V

    .line 1357
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 1358
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityStart()V

    goto :goto_0

    .line 1360
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Warning :Component tree has not build completely,onActivityStart can not be call!"

    .line 1361
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityStop()V
    .locals 1

    .line 1469
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/bridge/WXModuleManager;->onActivityStop(Ljava/lang/String;)V

    .line 1471
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 1472
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->onActivityStop()V

    goto :goto_0

    .line 1474
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Warning :Component tree has not build completely, onActivityStop can not be call!"

    .line 1475
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 7

    .line 1523
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1524
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;

    .line 1525
    invoke-interface {v2}, Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;->onBackPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 1531
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1533
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v3

    const-string v4, "nativeback"

    .line 1534
    invoke-virtual {v3, v4}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 1536
    invoke-virtual {v0, v4, v6}, Lcom/taobao/weex/ui/component/WXComponent;->fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;

    move-result-object v4

    .line 1537
    invoke-virtual {v4}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const-string v1, "clickbackitem"

    .line 1542
    invoke-virtual {v3, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1544
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v6, v6}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_3
    return v2
.end method

.method public onChangeElement(Lcom/taobao/weex/ui/component/WXComponent;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "isOutOfScreen"
        }
    .end annotation

    .line 1684
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_6

    .line 1687
    iget-boolean v0, p1, Lcom/taobao/weex/ui/component/WXComponent;->isIgnoreInteraction:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1691
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->hasConsumeEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1695
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1699
    iget-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    if-eqz v2, :cond_3

    .line 1700
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v2, v2, Lcom/taobao/weex/common/WXPerformance;->renderTimeOrigin:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f40

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    return-void

    .line 1707
    :cond_3
    iget-boolean v0, p1, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    if-eqz v0, :cond_5

    .line 1708
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v0

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->localInteractionViewAddCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->localInteractionViewAddCount:I

    if-nez p2, :cond_4

    .line 1710
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v0

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->interactionViewAddLimitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->interactionViewAddLimitCount:I

    :cond_4
    const/4 v0, 0x0

    .line 1711
    iput-boolean v0, p1, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    :cond_5
    if-nez p2, :cond_6

    .line 1715
    iget-object p2, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {p2, p1}, Lcom/taobao/weex/performance/WXInstanceApm;->arriveInteraction(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onComponentCreate(Lcom/taobao/weex/ui/component/WXComponent;J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "createTime"
        }
    .end annotation

    .line 1792
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v0, p1, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementCount:I

    .line 1793
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v0, p1, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v1, v0

    iput v1, p1, Lcom/taobao/weex/common/WXPerformance;->mActionAddElementSumTime:I

    .line 1794
    iget-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-nez p1, :cond_0

    .line 1795
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v0, p1, Lcom/taobao/weex/common/WXPerformance;->fsComponentCreateTime:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v1, v0

    iput v1, p1, Lcom/taobao/weex/common/WXPerformance;->fsComponentCreateTime:I

    .line 1796
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v0, p1, Lcom/taobao/weex/common/WXPerformance;->fsComponentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/taobao/weex/common/WXPerformance;->fsComponentCount:I

    .line 1798
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v0, p1, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/taobao/weex/common/WXPerformance;->componentCount:J

    .line 1799
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v0, p1, Lcom/taobao/weex/common/WXPerformance;->componentCreateTime:J

    add-long/2addr v0, p2

    iput-wide v0, p1, Lcom/taobao/weex/common/WXPerformance;->componentCreateTime:J

    return-void
.end method

.method public onCreateFinish()V
    .locals 2

    .line 1613
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHasCreateFinish:Z

    if-eqz v0, :cond_0

    return-void

    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 1617
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->onViewAppear()V

    .line 1618
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    .line 1619
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    if-eqz v1, :cond_1

    .line 1620
    invoke-interface {v1, p0, v0}, Lcom/taobao/weex/IWXRenderListener;->onViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)V

    .line 1622
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    if-eqz v0, :cond_2

    .line 1623
    invoke-interface {v0}, Lcom/taobao/weex/IWXStatisticsListener;->onFirstView()V

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    .line 1370
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/taobao/weex/bridge/WXModuleManager;->onCreateOptionsMenu(Ljava/lang/String;Landroid/view/Menu;)Z

    .line 1371
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 1372
    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    .line 1374
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Warning :Component tree has not build completely,onActivityStart can not be call!"

    .line 1375
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onHttpStart()V
    .locals 2

    .line 2305
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-nez v0, :cond_0

    .line 2306
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsRequestNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsRequestNum:I

    :cond_0
    return-void
.end method

.method public onInstanceReady()V
    .locals 2

    const-string v0, "test->"

    const-string v1, "onInstanceReady"

    .line 817
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const-string/jumbo v1, "wxContainerReady"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->onStage(Ljava/lang/String;)V

    .line 819
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    if-nez v0, :cond_0

    return-void

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    iget-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    invoke-virtual {v0, v1}, Lcom/taobao/weex/performance/WXInstanceApm;->onInstanceReady(Z)V

    .line 823
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    if-eqz v0, :cond_1

    .line 824
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mHttpListener:Lcom/taobao/weex/WXHttpListener;

    invoke-virtual {v0}, Lcom/taobao/weex/WXHttpListener;->onInstanceReady()V

    :cond_1
    return-void
.end method

.method public onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "errCode",
            "function",
            "exception"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1735
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    .line 1736
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onJSException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1738
    new-instance v0, Lcom/taobao/weex/WXSDKInstance$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/taobao/weex/WXSDKInstance$6;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "godView"
        }
    .end annotation

    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "left",
            "top",
            "right",
            "bottom",
            "oldLeft",
            "oldTop",
            "oldRight",
            "oldBottom"
        }
    .end annotation

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    .line 1764
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->onLayoutChange(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onOldFsRenderTimeLogic()V
    .locals 5

    .line 1807
    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1810
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    .line 1811
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1812
    new-instance v0, Lcom/taobao/weex/WXSDKInstance$7;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXSDKInstance$7;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1823
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->arriveFSRenderTime()V

    .line 1824
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->fsRenderTime:J

    .line 1825
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    return-void
.end method

.method public onRefreshSuccess(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 1677
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1678
    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/weex/IWXRenderListener;->onRefreshSuccess(Lcom/taobao/weex/WXSDKInstance;II)V

    :cond_0
    return-void
.end method

.method public onRenderError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "errCode",
            "msg"
        }
    .end annotation

    .line 1720
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRenderError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 1722
    new-instance v0, Lcom/taobao/weex/WXSDKInstance$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/weex/WXSDKInstance$5;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/WXSDKInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onRenderSuccess(II)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1643
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isRenderSuccess:Z

    .line 1644
    iget-boolean v1, p0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    if-nez v1, :cond_0

    .line 1645
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/performance/WXInstanceApm;->arriveNewFsRenderTime()V

    .line 1647
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    sub-long/2addr v1, v3

    .line 1648
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/taobao/weex/bridge/WXBridgeManager;->getRenderFinishTime(Ljava/lang/String;)[J

    move-result-object v3

    .line 1650
    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    const/4 v5, 0x0

    aget-wide v5, v3, v5

    iput-wide v5, v4, Lcom/taobao/weex/common/WXPerformance;->callBridgeTime:J

    .line 1651
    iget-object v4, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    aget-wide v5, v3, v0

    iput-wide v5, v4, Lcom/taobao/weex/common/WXPerformance;->cssLayoutTime:J

    .line 1652
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    const/4 v4, 0x2

    aget-wide v4, v3, v4

    iput-wide v4, v0, Lcom/taobao/weex/common/WXPerformance;->parseJsonTime:J

    .line 1654
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    long-to-double v3, v1

    iput-wide v3, v0, Lcom/taobao/weex/common/WXPerformance;->totalTime:D

    .line 1655
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-wide v3, v0, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    long-to-double v3, v3

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1

    .line 1656
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iput-wide v1, v0, Lcom/taobao/weex/common/WXPerformance;->screenRenderTime:J

    .line 1659
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    const-string/jumbo v1, "weex_perf"

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 1660
    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/weex/IWXRenderListener;->onRenderSuccess(Lcom/taobao/weex/WXSDKInstance;II)V

    .line 1661
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    if-eqz p1, :cond_2

    .line 1662
    new-instance v6, Lcom/taobao/weex/common/WXPerformance;

    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-direct {v6, p1}, Lcom/taobao/weex/common/WXPerformance;-><init>(Ljava/lang/String;)V

    .line 1663
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_SUCCESS:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/taobao/weex/common/WXPerformance;->errCode:Ljava/lang/String;

    .line 1664
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/taobao/weex/common/WXPerformance;->args:Ljava/lang/String;

    .line 1665
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackAdapter:Lcom/taobao/weex/adapter/IWXUserTrackAdapter;

    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getUserTrackParams()Ljava/util/Map;

    move-result-object v7

    const-string v5, "jsBridge"

    invoke-interface/range {v2 .. v7}, Lcom/taobao/weex/adapter/IWXUserTrackAdapter;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/common/WXPerformance;Ljava/util/Map;)V

    .line 1667
    :cond_2
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1668
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXPerformance;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    :cond_3
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isPerf()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1672
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXPerformance;->getPerfData()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 1566
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/taobao/weex/bridge/WXModuleManager;->onRequestPermissionsResult(Ljava/lang/String;I[Ljava/lang/String;[I)V

    .line 1568
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz v0, :cond_0

    .line 1569
    invoke-virtual {v0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXComponent;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0

    .line 1571
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Warning :Component tree has not build completely, onRequestPermissionsResult can not be call!"

    .line 1572
    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRootCreated(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    .line 1979
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    const/4 v0, 0x1

    .line 1980
    iput v0, p1, Lcom/taobao/weex/ui/component/WXComponent;->mDeepInComponentTree:I

    .line 1981
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->addView(Landroid/view/View;)V

    .line 1984
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/WXSDKInstance;->setSize(II)V

    return-void
.end method

.method public declared-synchronized onShowAnimationEnd()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 2477
    :try_start_0
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isFrameShow:Z

    .line 2478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2479
    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2480
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;

    .line 2481
    invoke-interface {v2}, Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;->onShowAnimationEnd()V

    goto :goto_0

    .line 2483
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2484
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

.method public onSupportNavigateUp()Z
    .locals 2

    .line 1512
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1513
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;

    .line 1514
    invoke-interface {v1}, Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;->onSupportNavigateUp()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdateFinish()V
    .locals 1

    .line 1632
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Instance onUpdateSuccess"

    .line 1633
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewAppear()V
    .locals 3

    const/4 v0, 0x1

    .line 1600
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    .line 1601
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->onAppear()V

    .line 1602
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1604
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "viewappear"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1605
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;

    .line 1606
    invoke-interface {v1}, Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;->onAppear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onViewDisappear()V
    .locals 3

    const/4 v0, 0x0

    .line 1583
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isViewDisAppear:Z

    .line 1584
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->onDisAppear()V

    .line 1585
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getRootComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1587
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "viewdisappear"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1589
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;

    .line 1590
    invoke-interface {v1}, Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;->onDisappear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public preDownLoad(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "options",
            "jsonInitData",
            "flag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 848
    iput-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->isPreDownLoad:Z

    .line 849
    iput-object p4, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 850
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/taobao/weex/performance/WXInstanceApm;->isReady:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 851
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public preInit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageName",
            "script",
            "options",
            "jsonInitData",
            "flag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    const/4 p1, 0x1

    .line 833
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->isPreInit:Z

    .line 834
    iput-object p5, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    if-nez p3, :cond_0

    .line 837
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 840
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    const/4 p5, 0x0

    iput-boolean p5, p1, Lcom/taobao/weex/performance/WXInstanceApm;->isReady:Z

    .line 841
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    new-instance p5, Lcom/taobao/weex/Script;

    invoke-direct {p5, p2}, Lcom/taobao/weex/Script;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p5, p3, p4}, Lcom/taobao/weex/WXSDKManager;->createInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public refreshInstance(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonData"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1207
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRefreshStartTime:J

    .line 1209
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1210
    iput-boolean v1, v0, Lcom/taobao/weex/common/WXRefreshData;->isDirty:Z

    .line 1213
    :cond_1
    new-instance v0, Lcom/taobao/weex/common/WXRefreshData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/taobao/weex/common/WXRefreshData;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

    .line 1215
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mLastRefreshData:Lcom/taobao/weex/common/WXRefreshData;

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/WXSDKManager;->refreshInstance(Ljava/lang/String;Lcom/taobao/weex/common/WXRefreshData;)V

    return-void
.end method

.method public refreshInstance(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1196
    :cond_0
    invoke-static {p1}, Lcom/taobao/weex/utils/WXJsonUtils;->fromObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->refreshInstance(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized registerActionbarHandler(Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actionBarHandler"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 2045
    monitor-exit p0

    return-void

    .line 2047
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2048
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    .line 2051
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2052
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerActivityStateListener(Lcom/taobao/weex/IWXActivityStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public declared-synchronized registerBackPressedHandler(Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backPressedHandler"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 2062
    monitor-exit p0

    return-void

    .line 2065
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2066
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    .line 2069
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2070
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerOnWXScrollListener(Lcom/taobao/weex/common/OnWXScrollListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wxScrollListener"
        }
    .end annotation

    monitor-enter p0

    .line 2037
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2038
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;

    .line 2040
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2041
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerRenderListener(Lcom/taobao/weex/IWXRenderListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1301
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderListener:Lcom/taobao/weex/IWXRenderListener;

    return-void
.end method

.method public registerScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollViewListener"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 672
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    return-void
.end method

.method public registerStatisticsListener(Lcom/taobao/weex/IWXStatisticsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1310
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mStatisticsListener:Lcom/taobao/weex/IWXStatisticsListener;

    return-void
.end method

.method public reloadImages()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1274
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public reloadPage(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reloadThis"
        }
    .end annotation

    .line 1159
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->reload()V

    if-eqz p1, :cond_0

    .line 1162
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 1163
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1164
    sget-object v0, Lcom/taobao/weex/WXSDKInstance;->ACTION_INSTANCE_RELOAD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1173
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "android_weex_ext_config"

    const-string v1, "degrade_to_h5_if_not_reload"

    const-string v2, "true"

    .line 1176
    invoke-interface {p1, v0, v1, v2}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1175
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "degrade : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1181
    sget-object p1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_RELOAD_PAGE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {p1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Do not reloadPage"

    const-string v1, "Do not reloadPage degradeToH5"

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/WXSDKInstance;->onJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reloadPageLayout()V
    .locals 2

    .line 495
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->reloadPageLayout(Ljava/lang/String;)V

    return-void
.end method

.method public removeEventListener(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eventName"
        }
    .end annotation

    .line 2203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2206
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "callback"
        }
    .end annotation

    .line 2193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2196
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mGlobalEvents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2198
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public removeFixedView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fixedChild"
        }
    .end annotation

    .line 2006
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v0, :cond_0

    .line 2007
    invoke-virtual {v0, p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized removeFrameViewEventListener(Lcom/taobao/weex/WXSDKInstance$FrameViewEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    monitor-enter p0

    .line 2467
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2468
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->frameViewEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2470
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeInActiveAddElmentAction(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->inactiveAddElementAction:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeLayerOverFlowListener(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mLayerOverFlowListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeOnInstanceVisibleListener(Lcom/taobao/weex/WXSDKInstance$OnInstanceVisibleListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mVisibleListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeUserTrackParameter(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 2280
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mUserTrackParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2281
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public render(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "template"
        }
    .end annotation

    .line 1098
    iget-object v5, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStrategy:Lcom/taobao/weex/common/WXRenderStrategy;

    const-string v1, "default"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "template",
            "width",
            "height"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1109
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;)V

    return-void
.end method

.method public render(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageName",
            "template",
            "options",
            "jsonInitData",
            "flag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/Script;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iget-object v1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/common/WXPerformance;->beforeInstanceRender(Ljava/lang/String;)V

    .line 760
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 763
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getUIContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "Error: Missing pageName"

    .line 764
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "We highly recommend you to set pageName. Call\nWXSDKInstance#render(String pageName, String template, Map<String, Object> options, String jsonInitData, WXRenderStrategy flag)\nto fix it."

    .line 765
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 768
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void

    .line 773
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/WXSDKInstance;->renderInternal(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageName",
            "template",
            "options",
            "jsonInitData",
            "width",
            "height",
            "flag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    .line 1090
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageName",
            "template",
            "options",
            "jsonInitData",
            "flag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 754
    new-instance v2, Lcom/taobao/weex/Script;

    invoke-direct {v2, p2}, Lcom/taobao/weex/Script;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
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
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 709
    sget-object v0, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "template",
            "options",
            "jsonInitData",
            "flag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, "default"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 731
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public render(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pageName",
            "template",
            "options",
            "jsonInitData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 780
    new-instance v2, Lcom/taobao/weex/Script;

    invoke-direct {v2, p2}, Lcom/taobao/weex/Script;-><init>([B)V

    sget-object v5, Lcom/taobao/weex/common/WXRenderStrategy;->DATA_RENDER_BINARY:Lcom/taobao/weex/common/WXRenderStrategy;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Lcom/taobao/weex/Script;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "pageName",
            "url",
            "options",
            "jsonInitData",
            "width",
            "height",
            "flag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    .line 1124
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x10,
            0x10
        }
        names = {
            "pageName",
            "url",
            "options",
            "jsonInitData",
            "flag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .line 1128
    invoke-direct/range {p0 .. p5}, Lcom/taobao/weex/WXSDKInstance;->renderByUrlInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    return-void
.end method

.method public resetDeviceDisplayOfPage()V
    .locals 4

    .line 480
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setDeviceDisplayOfPage(Ljava/lang/String;FF)V

    return-void
.end method

.method public rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "type"
        }
    .end annotation

    .line 1256
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getURIAdapter()Lcom/taobao/weex/adapter/URIAdapter;

    move-result-object v0

    invoke-interface {v0, p0, p2, p1}, Lcom/taobao/weex/adapter/URIAdapter;->rewrite(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 1639
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/weex/WXSDKManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAutoAdjustDeviceWidth(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoAdjustViewPort"
        }
    .end annotation

    .line 499
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mAutoAdjustDeviceWidth:Z

    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bizType"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 654
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iput-object p1, v0, Lcom/taobao/weex/common/WXPerformance;->bizType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setBundleUrl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1967
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    .line 1968
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1969
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKManager;->getValidateProcessor()Lcom/taobao/weex/bridge/WXValidateProcessor;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mBundleUrl:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/taobao/weex/bridge/WXValidateProcessor;->needValidate(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedValidate:Z

    :cond_0
    return-void
.end method

.method public setComponentObserver(Lcom/taobao/weex/ComponentObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 641
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mComponentObserver:Lcom/taobao/weex/ComponentObserver;

    return-void
.end method

.method public setComponentsInfoExceedGPULimit(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->componentsInfoExceedGPULimit:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setContainerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "val"
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mContainerInfo:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1294
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setCustomFontNetworkHandler(Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customFontNetworkHandler"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mCustomFontNetworkHandler:Lcom/taobao/weex/WXSDKInstance$CustomFontNetworkHandler;

    return-void
.end method

.method public setDefaultFontSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 2451
    iput p1, p0, Lcom/taobao/weex/WXSDKInstance;->mDefaultFontSize:I

    return-void
.end method

.method public setDeviceDisplayOfPage(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "screenWidth",
            "screenHeight"
        }
    .end annotation

    .line 487
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, v1, p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->setDeviceDisplayOfPage(Ljava/lang/String;FF)V

    return-void
.end method

.method public setEnableFullScreenHeight(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fullScreenHeight"
        }
    .end annotation

    .line 452
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->enableFullScreenHeight:Z

    return-void
.end method

.method public setHasException(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasException"
        }
    .end annotation

    .line 585
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->hasException:Z

    return-void
.end method

.method public setIWXUserTrackAdapter(Lcom/taobao/weex/adapter/IWXUserTrackAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setImageNetworkHandler(Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageNetworkHandler"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mImageNetworkHandler:Lcom/taobao/weex/WXSDKInstance$ImageNetworkHandler;

    return-void
.end method

.method public setImmersive(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "immersive"
        }
    .end annotation

    .line 2491
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->isImmersive:Z

    return-void
.end method

.method public setInstanceViewPortWidth(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instanceViewPortWidth"
        }
    .end annotation

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/WXSDKInstance;->setInstanceViewPortWidth(FZ)V

    return-void
.end method

.method public setInstanceViewPortWidth(FZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instanceViewPortWidth",
            "fromMetaModule"
        }
    .end annotation

    .line 471
    iput p1, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    .line 472
    invoke-static {p1}, Lcom/taobao/weex/WXEnvironment;->setViewProt(F)V

    if-eqz p2, :cond_0

    .line 475
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/taobao/weex/WXSDKInstance;->mInstanceViewPortWidth:F

    invoke-virtual {p1, p2, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->setViewPortWidth(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public setMaxDeepLayer(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxDeepLayer"
        }
    .end annotation

    .line 2290
    iput p1, p0, Lcom/taobao/weex/WXSDKInstance;->mMaxDeepLayer:I

    .line 2291
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    int-to-double v1, p1

    const-string/jumbo p1, "wxMaxDeepViewLayer"

    invoke-virtual {v0, p1, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->updateMaxStats(Ljava/lang/String;D)V

    return-void
.end method

.method public setMaxDomDeep(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxDomDeep"
        }
    .end annotation

    .line 2295
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mApmForInstance:Lcom/taobao/weex/performance/WXInstanceApm;

    int-to-double v1, p1

    const-string/jumbo v3, "wxMaxDeepVDomLayer"

    invoke-virtual {v0, v3, v1, v2}, Lcom/taobao/weex/performance/WXInstanceApm;->updateMaxStats(Ljava/lang/String;D)V

    .line 2296
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    if-nez v0, :cond_0

    return-void

    .line 2299
    :cond_0
    iget v0, v0, Lcom/taobao/weex/common/WXPerformance;->maxDeepVDomLayer:I

    if-gt v0, p1, :cond_1

    .line 2300
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXPerformance:Lcom/taobao/weex/common/WXPerformance;

    iput p1, v0, Lcom/taobao/weex/common/WXPerformance;->maxDeepVDomLayer:I

    :cond_1
    return-void
.end method

.method public setMaxHiddenEmbedsNum(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxHiddenEmbedsNum"
        }
    .end annotation

    .line 345
    iput p1, p0, Lcom/taobao/weex/WXSDKInstance;->maxHiddenEmbedsNum:I

    return-void
.end method

.method public setNeedLoad(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "load"
        }
    .end annotation

    .line 448
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mNeedReLoad:Z

    return-void
.end method

.method public setNestedInstanceInterceptor(Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interceptor"
        }
    .end annotation

    .line 563
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mNestedInstanceInterceptor:Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;

    return-void
.end method

.method public setPageKeepRawCssStyles()V
    .locals 4

    .line 491
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reserveCssStyles"

    const-string v3, "true"

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/bridge/WXBridgeManager;->setPageArgument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setParentInstance(Lcom/taobao/weex/WXSDKInstance;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mParentInstance"
        }
    .end annotation

    .line 1833
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mParentInstance:Lcom/taobao/weex/WXSDKInstance;

    return-void
.end method

.method public setPreRenderMode(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isPreRenderMode"
        }
    .end annotation

    .line 1285
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/WXSDKInstance$4;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/WXSDKInstance$4;-><init>(Lcom/taobao/weex/WXSDKInstance;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/weex/ui/WXRenderManager;->postOnUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setRenderContainer(Lcom/taobao/weex/RenderContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 372
    invoke-virtual {p0, p1}, Lcom/taobao/weex/WXSDKInstance;->setWXAbstractRenderContainer(Lcom/taobao/weex/render/WXAbstractRenderContainer;)V

    return-void
.end method

.method public setRenderStartTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderStartTime"
        }
    .end annotation

    .line 1315
    iput-wide p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderStartTime:J

    return-void
.end method

.method public setRenderType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderType"
        }
    .end annotation

    .line 2434
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderType:Ljava/lang/String;

    return-void
.end method

.method public setRootScrollView(Landroid/widget/ScrollView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scrollView"
        }
    .end annotation

    .line 664
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mScrollView:Landroid/widget/ScrollView;

    .line 665
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXScrollViewListener:Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;

    if-eqz v0, :cond_0

    instance-of v1, p1, Lcom/taobao/weex/ui/view/WXScrollView;

    if-eqz v1, :cond_0

    .line 666
    check-cast p1, Lcom/taobao/weex/ui/view/WXScrollView;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXScrollView;->addScrollViewListener(Lcom/taobao/weex/ui/view/WXScrollView$WXScrollViewListener;)V

    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    if-lez p1, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2080
    :goto_0
    iget-boolean v3, p0, Lcom/taobao/weex/WXSDKInstance;->isDestroy:Z

    xor-int/2addr v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/taobao/weex/WXSDKInstance;->mRendered:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz v2, :cond_8

    .line 2081
    sget v2, Lcom/taobao/weex/WXSDKInstance;->sScreenHeight:I

    if-gez v2, :cond_1

    .line 2082
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/taobao/weex/WXSDKInstance;->sScreenHeight:I

    .line 2084
    :cond_1
    sget v2, Lcom/taobao/weex/WXSDKInstance;->sScreenHeight:I

    if-lez v2, :cond_3

    int-to-double v3, p2

    int-to-double v5, v2

    .line 2085
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double v3, v3, v5

    cmpl-double v2, v3, v5

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    move-wide v5, v3

    .line 2089
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v2

    const-string/jumbo v3, "wxBodyRatio"

    invoke-virtual {v2, v3, v5, v6}, Lcom/taobao/weex/performance/WXInstanceApm;->addStats(Ljava/lang/String;D)V

    .line 2091
    :cond_3
    iget-object v2, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v2}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_8

    int-to-float v5, p1

    int-to-float v6, p2

    .line 2095
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/weex/utils/WXViewUtils;->getScreenDensity(Landroid/content/Context;)F

    .line 2096
    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v3}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getWidth()I

    move-result v3

    if-ne v3, p1, :cond_4

    iget-object v3, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {v3}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getHeight()I

    move-result v3

    if-eq v3, p2, :cond_5

    .line 2097
    :cond_4
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2098
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2099
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    invoke-virtual {p1, v2}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2102
    :cond_5
    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRootComp:Lcom/taobao/weex/ui/component/WXComponent;

    if-eqz p1, :cond_8

    if-eqz v2, :cond_8

    .line 2103
    iget p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p2, -0x2

    if-ne p1, p2, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    .line 2104
    :goto_2
    iget p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, p2, :cond_7

    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    .line 2106
    :goto_3
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    new-instance p2, Lcom/taobao/weex/WXSDKInstance$10;

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/taobao/weex/WXSDKInstance$10;-><init>(Lcom/taobao/weex/WXSDKInstance;FFZZ)V

    invoke-virtual {p1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method public setStreamNetworkHandler(Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamNetworkHandler"
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mStreamNetworkHandler:Lcom/taobao/weex/WXSDKInstance$StreamNetworkHandler;

    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "template"
        }
    .end annotation

    .line 2375
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->templateRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setTrackComponent(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackComponent"
        }
    .end annotation

    .line 407
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->trackComponent:Z

    return-void
.end method

.method public setUniPagePath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1975
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mUniPagePath:Ljava/lang/String;

    return-void
.end method

.method public setUseSandBox(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 333
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setSandBoxContext(Z)V

    return-void
.end method

.method public setUseScroller(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "use"
        }
    .end annotation

    .line 462
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->mUseScroller:Z

    return-void
.end method

.method public setWXAbstractRenderContainer(Lcom/taobao/weex/render/WXAbstractRenderContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {p1, p0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->setSDKInstance(Lcom/taobao/weex/WXSDKInstance;)V

    .line 378
    invoke-virtual {p1, p0}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 381
    :cond_0
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    if-eqz p1, :cond_1

    .line 382
    invoke-virtual {p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mRenderContainer:Lcom/taobao/weex/render/WXAbstractRenderContainer;

    .line 383
    invoke-virtual {p1}, Lcom/taobao/weex/render/WXAbstractRenderContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 384
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    new-instance v0, Lcom/taobao/weex/WXSDKInstance$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXSDKInstance$1;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 391
    :cond_1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    new-instance v0, Lcom/taobao/weex/WXSDKInstance$2;

    invoke-direct {v0, p0}, Lcom/taobao/weex/WXSDKInstance$2;-><init>(Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {p1, v0}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public setWXInstanceContainerOnSizeListener(Lcom/taobao/weex/IWXInstanceContainerOnSizeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 2126
    iput-object p1, p0, Lcom/taobao/weex/WXSDKInstance;->mOnSizeListener:Lcom/taobao/weex/IWXInstanceContainerOnSizeListener;

    return-void
.end method

.method public setonSizeChangedRnder(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRnder"
        }
    .end annotation

    .line 2499
    iput-boolean p1, p0, Lcom/taobao/weex/WXSDKInstance;->isOnSizeChangedRender:Z

    return-void
.end method

.method public skipFrameworkInit()Z
    .locals 1

    .line 997
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKInstance;->isDataRender()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/weex/WXSDKInstance;->mDisableSkipFrameworkInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized unRegisterActionbarHandler(Lcom/taobao/weex/WXSDKInstance$ActionBarHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actionBarHandler"
        }
    .end annotation

    monitor-enter p0

    .line 2055
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXActionbarHandlers:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2056
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2058
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unRegisterBackPressedHandler(Lcom/taobao/weex/WXSDKInstance$OnBackPressedHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backPressedHandler"
        }
    .end annotation

    monitor-enter p0

    .line 2073
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/WXSDKInstance;->mWXBackPressedHandlers:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2074
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2076
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
