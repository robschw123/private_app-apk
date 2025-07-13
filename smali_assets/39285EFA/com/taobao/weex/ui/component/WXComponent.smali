.class public abstract Lcom/taobao/weex/ui/component/WXComponent;
.super Lcom/taobao/weex/ui/component/basic/WXBasicComponent;
.source "WXComponent.java"

# interfaces
.implements Lcom/taobao/weex/common/IWXObject;
.implements Lcom/taobao/weex/IWXActivityStateListener;
.implements Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/WXComponent$RenderState;,
        Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;,
        Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;,
        Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;,
        Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/taobao/weex/ui/component/basic/WXBasicComponent<",
        "TT;>;",
        "Lcom/taobao/weex/common/IWXObject;",
        "Lcom/taobao/weex/IWXActivityStateListener;",
        "Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;"
    }
.end annotation


# static fields
.field public static final PROP_FIXED_SIZE:Ljava/lang/String; = "fixedSize"

.field public static final PROP_FS_MATCH_PARENT:Ljava/lang/String; = "m"

.field public static final PROP_FS_WRAP_CONTENT:Ljava/lang/String; = "w"

.field public static final ROOT:Ljava/lang/String; = "_root"

.field public static final STATE_ALL_FINISH:I = 0x2

.field public static final STATE_DOM_FINISH:I = 0x0

.field public static final STATE_UI_FINISH:I = 0x1

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final TYPE_COMMON:I = 0x0

.field public static final TYPE_VIRTUAL:I = 0x1


# instance fields
.field private EMPTY_STATE_SET:[I

.field private ENABLED_STATE_SET:[I

.field private FOCUSED_ENABLED_STATE_SET:[I

.field private PRESSED_ANIM_DELAY:J

.field private PRESSED_ANIM_DURATION:J

.field private PRESSED_ENABLED_STATE_SET:[I

.field private animations:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

.field public interactionAbsoluteX:I

.field public interactionAbsoluteY:I

.field public isIgnoreInteraction:Z

.field private isLastLayoutDirectionRTL:Z

.field private isPreventGesture:Z

.field private isUsing:Z

.field private mAbsoluteX:I

.field private mAbsoluteY:I

.field private mAnimationHolder:Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;

.field private mAppendEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

.field private mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

.field private mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

.field private mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/weex/ui/component/WXComponent<",
            "TT;>.OnClick",
            "ListenerImp;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mDeepInComponentTree:I

.field private mElevation:F

.field private mFixedProp:I

.field private mFocusChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

.field private mGestureType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasAddFocusListener:Z

.field private mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

.field mHost:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mHostClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHover:Lio/dcloud/weex/ViewHover;

.field private mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

.field private mInstance:Lcom/taobao/weex/WXSDKInstance;

.field public mIsAddElementToTree:Z

.field private mIsDestroyed:Z

.field private mIsDisabled:Z

.field private mLastBoxShadowId:Ljava/lang/String;

.field private mLazy:Z

.field private mNeedLayoutOnAnimation:Z

.field private volatile mParent:Lcom/taobao/weex/ui/component/WXVContainer;

.field private mPendingComponetMethodQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lio/dcloud/feature/uniapp/ui/action/UniMethodData;",
            ">;"
        }
    .end annotation
.end field

.field private mPesudoStatus:Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

.field private mPreRealHeight:I

.field private mPreRealLeft:I

.field private mPreRealRight:I

.field private mPreRealTop:I

.field private mPreRealWidth:I

.field private mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

.field private mRippleBackground:Landroid/graphics/drawable/Drawable;

.field private mStickyOffset:I

.field public mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

.field private mTransition:Lcom/taobao/weex/dom/transition/WXTransition;

.field private mType:I

.field private mViewTreeKey:Ljava/lang/String;

.field private waste:Z


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ILcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "parent",
            "type",
            "basicComponentData"
        }
    .end annotation

    .line 233
    invoke-direct {p0, p4}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;-><init>(Lio/dcloud/feature/uniapp/ui/action/AbsComponentData;)V

    const/4 p4, 0x0

    .line 159
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    .line 166
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    .line 167
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteX:I

    .line 168
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->isLastLayoutDirectionRTL:Z

    .line 177
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    .line 178
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    .line 179
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    .line 180
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealRight:I

    .line 181
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    .line 182
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mStickyOffset:I

    .line 185
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->isUsing:Z

    .line 191
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDestroyed:Z

    .line 192
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDisabled:Z

    .line 193
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    .line 194
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mNeedLayoutOnAnimation:Z

    .line 196
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mDeepInComponentTree:I

    .line 197
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    .line 199
    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    iput p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    .line 200
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHasAddFocusListener:Z

    .line 202
    new-instance v0, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    invoke-direct {v0}, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    .line 207
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->waste:Z

    .line 208
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->isIgnoreInteraction:Z

    .line 216
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPendingComponetMethodQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-wide/16 v0, 0x64

    .line 968
    iput-wide v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DURATION:J

    .line 969
    iput-wide v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DELAY:J

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, p4

    .line 970
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->ENABLED_STATE_SET:[I

    new-array v0, p4, [I

    .line 971
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->EMPTY_STATE_SET:[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 972
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ENABLED_STATE_SET:[I

    new-array v0, v0, [I

    .line 973
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->FOCUSED_ENABLED_STATE_SET:[I

    const/4 v0, 0x0

    .line 974
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    .line 2724
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    .line 2890
    iput-boolean p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->isPreventGesture:Z

    .line 234
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 235
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object p4

    iput-object p4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    .line 236
    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 237
    iput p3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setViewPortWidth(F)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onCreate()V

    .line 244
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getComponentObserver()Lcom/taobao/weex/ComponentObserver;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 245
    invoke-interface {p1, p0}, Lcom/taobao/weex/ComponentObserver;->onCreate(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "parent",
            "basicComponentData"
        }
    .end annotation

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ILcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
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
            "instance",
            "parent",
            "instanceId",
            "isLazy",
            "basicComponentData"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "parent",
            "isLazy",
            "basicComponentData"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    invoke-direct {p0, p1, p2, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/WXSDKInstance;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/List;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/List;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPendingComponetMethodQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$500(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/view/border/BorderDrawable;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    return-object p0
.end method

.method private applyBorder(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 305
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getBorder()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object p1

    .line 306
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    .line 307
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    .line 308
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    .line 309
    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v3}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p1

    .line 311
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string v3, "borderLeftWidth"

    .line 315
    invoke-virtual {p0, v3, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderWidth(Ljava/lang/String;F)V

    const-string v0, "borderTopWidth"

    .line 316
    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderWidth(Ljava/lang/String;F)V

    const-string v0, "borderRightWidth"

    .line 317
    invoke-virtual {p0, v0, v2}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderWidth(Ljava/lang/String;F)V

    const-string v0, "borderBottomWidth"

    .line 318
    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderWidth(Ljava/lang/String;F)V

    return-void
.end method

.method private applyEvents()V
    .locals 4

    .line 351
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 356
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_1

    .line 359
    :cond_1
    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/WXEvent;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 360
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->setActiveTouchListener()V

    :cond_3
    :goto_2
    return-void
.end method

.method private createAnimationBean(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/ui/animation/WXAnimationBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ref",
            "style"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/weex/ui/animation/WXAnimationBean;"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    const-string v0, "transform"

    .line 2702
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2703
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "transformOrigin"

    .line 2704
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 2705
    new-instance p2, Lcom/taobao/weex/ui/animation/WXAnimationBean;

    invoke-direct {p2}, Lcom/taobao/weex/ui/animation/WXAnimationBean;-><init>()V

    .line 2706
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v1

    float-to-int v4, v1

    .line 2707
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v1

    float-to-int v5, v1

    .line 2708
    new-instance v1, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    invoke-direct {v1}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;-><init>()V

    iput-object v1, p2, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    .line 2709
    iget-object v1, p2, Lcom/taobao/weex/ui/animation/WXAnimationBean;->styles:Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/WXSDKManager;->getInstanceViewPortWidth(Ljava/lang/String;)F

    move-result v6

    .line 2710
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v7

    .line 2709
    invoke-virtual/range {v1 .. v7}, Lcom/taobao/weex/ui/animation/WXAnimationBean$Style;->init(Ljava/lang/String;Ljava/lang/String;IIFLcom/taobao/weex/WXSDKInstance;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    const-string v0, ""

    .line 2714
    invoke-static {v0, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object p1
.end method

.method private final fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/bridge/EventResult;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "params",
            "domChanges",
            "callback"
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/EventResult;",
            ")V"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 619
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Landroidx/collection/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgsValues()Landroidx/collection/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :cond_0
    move-object v6, v0

    if-eqz p2, :cond_1

    .line 623
    invoke-static {p0}, Lcom/taobao/weex/ui/component/binding/Statements;->getComponentId(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "componentId"

    .line 625
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :cond_1
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/taobao/weex/WXSDKInstance;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Lcom/taobao/weex/bridge/EventResult;)V

    :cond_2
    return-void
.end method

.method private initOutlineProvider(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "radius"
        }
    .end annotation

    .line 2047
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->useFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/view/BaseFrameLayout;

    if-eqz v0, :cond_0

    .line 2048
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$8;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/WXComponent$8;-><init>(Lcom/taobao/weex/ui/component/WXComponent;F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2073
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_0
    return-void
.end method

.method private final invokePendingComponetMethod()V
    .locals 2

    .line 1717
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPendingComponetMethodQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1718
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$6;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXComponent$6;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private needGestureDetector(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1619
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1620
    invoke-static {}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;->values()[Lcom/taobao/weex/ui/view/gesture/WXGestureType$LowLevelGesture;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 1621
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1625
    :cond_1
    invoke-static {}, Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;->values()[Lcom/taobao/weex/ui/view/gesture/WXGestureType$HighLevelGesture;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 1626
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1631
    :cond_3
    invoke-static {p1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->isStopPropagation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    const-string/jumbo v0, "view_hover_event"

    .line 1634
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    .line 1637
    :cond_5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isPreventGesture()Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v1
.end method

.method private parseAnimation()V
    .locals 5

    .line 2683
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    return-void

    .line 2686
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2687
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2688
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->createAnimationBean(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/ui/animation/WXAnimationBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2690
    new-instance v2, Lcom/taobao/weex/ui/action/GraphicActionAnimation;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Lcom/taobao/weex/ui/animation/WXAnimationBean;)V

    .line 2691
    invoke-virtual {v2}, Lcom/taobao/weex/ui/action/GraphicActionAnimation;->executeAction()V

    goto :goto_0

    .line 2695
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method

.method private prepareBackgroundRipple()Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v0, 0x0

    .line 1943
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1944
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/dom/WXStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v1

    const-string v2, "backgroundColor"

    .line 1946
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 1949
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    const-string v4, "backgroundColor:active"

    .line 1955
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 1959
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;I)I

    move-result v1

    .line 1960
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_3

    .line 1961
    new-instance v4, Landroid/content/res/ColorStateList;

    const/4 v5, 0x1

    new-array v6, v5, [[I

    new-array v7, v3, [I

    aput-object v7, v6, v3

    new-array v5, v5, [I

    aput v1, v5, v3

    invoke-direct {v4, v6, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1964
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$7;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, p0, v4, v3, v0}, Lcom/taobao/weex/ui/component/WXComponent$7;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    const-string v2, "Exception on create ripple: "

    .line 1977
    invoke-static {v2, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v0
.end method

.method private recordInteraction(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "realWidth",
            "realHeight"
        }
    .end annotation

    .line 1220
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1223
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsAddElementToTree:Z

    .line 1224
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-nez v1, :cond_1

    .line 1225
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    .line 1226
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    goto :goto_2

    .line 1228
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getCSSLayoutTop()F

    move-result v1

    .line 1229
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getCSSLayoutLeft()F

    move-result v2

    .line 1230
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    iget v3, v3, Lcom/taobao/weex/ui/component/WXVContainer;->interactionAbsoluteX:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    :goto_0
    float-to-int v2, v2

    iput v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    .line 1231
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    iget v2, v2, Lcom/taobao/weex/ui/component/WXVContainer;->interactionAbsoluteY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    :goto_1
    float-to-int v1, v1

    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    .line 1234
    :goto_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/performance/WXInstanceApm;->instanceRect:Landroid/graphics/Rect;

    if-nez v1, :cond_4

    .line 1235
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v1, Lcom/taobao/weex/performance/WXInstanceApm;->instanceRect:Landroid/graphics/Rect;

    .line 1237
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v1

    iget-object v1, v1, Lcom/taobao/weex/performance/WXInstanceApm;->instanceRect:Landroid/graphics/Rect;

    .line 1238
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getWeexWidth()I

    move-result v2

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getWeexHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1239
    iget v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    iget v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    .line 1240
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_5

    iget v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    add-int/2addr v2, p1

    iget v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    .line 1241
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    iget v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    add-int/2addr v4, p2

    .line 1242
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteX:I

    add-int/2addr v2, p1

    iget p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->interactionAbsoluteY:I

    add-int/2addr p1, p2

    .line 1243
    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v0, 0x1

    .line 1244
    :cond_6
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    xor-int/lit8 p2, v0, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/taobao/weex/WXSDKInstance;->onChangeElement(Lcom/taobao/weex/ui/component/WXComponent;Z)V

    return-void
.end method

.method private setActiveTouchListener()V
    .locals 3

    .line 2426
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->getPesudoStyles()Ljava/util/Map;

    move-result-object v0

    const-string v1, ":active"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2428
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2429
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isConsumeTouch()Z

    move-result v1

    .line 2430
    new-instance v2, Lcom/taobao/weex/ui/component/pesudo/TouchActivePseudoListener;

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v2, p0, v1}, Lcom/taobao/weex/ui/component/pesudo/TouchActivePseudoListener;-><init>(Lcom/taobao/weex/ui/component/pesudo/OnActivePseudoListner;Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private setComponentLayoutParams(IIIIIILandroid/graphics/Point;)V
    .locals 14
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
            "realWidth",
            "realHeight",
            "realLeft",
            "realTop",
            "realRight",
            "realBottom",
            "rawOffset"
        }
    .end annotation

    move-object v10, p0

    move v8, p1

    move/from16 v9, p2

    move/from16 v11, p3

    move/from16 v12, p4

    .line 1171
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 1175
    invoke-virtual {p0, p1, v9, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateBoxShadow(IIZ)V

    .line 1177
    iget-object v0, v10, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalShadows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1178
    iget-object v0, v10, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalMaxWidth()I

    move-result v0

    .line 1179
    iget-object v1, v10, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v1}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalMaxHeight()I

    move-result v1

    .line 1180
    iget-object v2, v10, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v2}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalLeft()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v11, v2

    .line 1181
    iget-object v3, v10, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v3}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalTop()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v12, v3

    move v4, v0

    move v5, v1

    move v6, v2

    move v13, v3

    goto :goto_0

    :cond_1
    move v4, v8

    move v5, v9

    move v6, v11

    move v13, v12

    .line 1183
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1186
    invoke-virtual {v2, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1187
    instance-of v0, v10, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v0, :cond_2

    move-object v0, v10

    check-cast v0, Lcom/taobao/weex/ui/flat/FlatComponent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1188
    invoke-interface {v0}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v0

    goto :goto_1

    .line 1190
    :cond_2
    invoke-virtual {v2, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    move-result-object v0

    :goto_1
    move-object v1, v0

    move-object v0, p0

    move-object/from16 v3, p7

    move/from16 v7, p5

    move v8, v13

    move/from16 v9, p6

    .line 1192
    invoke-direct/range {v0 .. v9}, Lcom/taobao/weex/ui/component/WXComponent;->setWidgetParams(Lcom/taobao/weex/ui/flat/widget/Widget;Lcom/taobao/weex/ui/flat/FlatGUIContext;Landroid/graphics/Point;IIIIII)V

    goto :goto_3

    .line 1193
    :cond_3
    iget-object v0, v10, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1194
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1195
    iget-object v1, v10, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    move-object v0, p0

    move v2, v4

    move v3, v5

    move v4, v6

    move/from16 v5, p5

    move v6, v13

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/taobao/weex/ui/component/WXComponent;->setFixedHostLayoutParams(Landroid/view/View;IIIIII)V

    goto :goto_2

    .line 1197
    :cond_4
    iget-object v1, v10, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    move-object v0, p0

    move v2, v4

    move v3, v5

    move v4, v6

    move/from16 v5, p5

    move v6, v13

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    .line 1199
    :goto_2
    invoke-direct/range {p0 .. p2}, Lcom/taobao/weex/ui/component/WXComponent;->recordInteraction(II)V

    .line 1200
    iput v8, v10, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    .line 1201
    iput v9, v10, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    .line 1202
    iput v11, v10, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    move/from16 v0, p5

    .line 1203
    iput v0, v10, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealRight:I

    .line 1204
    iput v12, v10, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    .line 1205
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->onFinishLayout()V

    :cond_5
    :goto_3
    return-void
.end method

.method private setFixedHostLayoutParams(Landroid/view/View;IIIIII)V
    .locals 7
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
            "host",
            "width",
            "height",
            "left",
            "right",
            "top",
            "bottom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIIIII)V"
        }
    .end annotation

    .line 1305
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v6, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1307
    iput p2, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1308
    iput p3, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move-object v0, p0

    move-object v1, v6

    move v2, p4

    move v3, p6

    move v4, p5

    move v5, p7

    .line 1310
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/component/WXComponent;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 1312
    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1313
    iget-object p5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p5, p1}, Lcom/taobao/weex/WXSDKInstance;->moveFixedView(Landroid/view/View;)V

    .line 1315
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "WXComponent:setLayout :"

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Weex_Fixed_Style"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WXComponent:setLayout Left:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXStyle;->getLeft()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p3

    invoke-virtual {p3}, Lcom/taobao/weex/dom/WXStyle;->getTop()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setFixedSize(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fixedSize"
        }
    .end annotation

    const-string v0, "m"

    .line 1580
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 1581
    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "w"

    .line 1582
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x2

    .line 1583
    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    .line 1588
    :goto_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 1589
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1591
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1592
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1593
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 1585
    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    return-void
.end method

.method private setWidgetParams(Lcom/taobao/weex/ui/flat/widget/Widget;Lcom/taobao/weex/ui/flat/FlatGUIContext;Landroid/graphics/Point;IIIIII)V
    .locals 14
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
            "widget",
            "UIImp",
            "rawoffset",
            "width",
            "height",
            "left",
            "right",
            "top",
            "bottom"
        }
    .end annotation

    move-object v9, p0

    move-object v10, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 1249
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 1250
    iget-object v2, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v2, :cond_2

    .line 1251
    iget-object v2, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    instance-of v2, v2, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v2, :cond_0

    iget-object v2, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 1252
    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 1253
    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1254
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v11, v2, v1}, Landroid/graphics/Point;->set(II)V

    move/from16 v12, p6

    move/from16 v13, p8

    goto :goto_0

    :cond_0
    move/from16 v12, p6

    move/from16 v13, p8

    .line 1257
    invoke-virtual {v11, v12, v13}, Landroid/graphics/Point;->set(II)V

    .line 1260
    :goto_0
    iget-object v1, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    instance-of v1, v1, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz v1, :cond_1

    iget-object v1, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 1261
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getFlatComponentAncestor(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/WidgetContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 1262
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->getAndroidViewWidget(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1263
    iget-object v0, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    check-cast v0, Lcom/taobao/weex/ui/flat/FlatComponent;

    invoke-interface {v0}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/ui/flat/widget/Widget;->getLocInFlatContainer()Landroid/graphics/Point;

    move-result-object v0

    .line 1264
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v11, v1, v0}, Landroid/graphics/Point;->offset(II)V

    .line 1266
    :cond_1
    iget-object v0, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    iget-object v2, v9, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    move-object v1, p0

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 1267
    invoke-virtual/range {v0 .. v8}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1268
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    .line 1269
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1270
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1271
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1272
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1273
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1274
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v12, v3

    move v13, v5

    goto :goto_1

    :cond_2
    move/from16 v12, p6

    move/from16 v13, p8

    :cond_3
    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v4, p7

    move/from16 v0, p9

    :goto_1
    move-object/from16 p2, p1

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v12

    move/from16 p6, v4

    move/from16 p7, v13

    move/from16 p8, v0

    move-object/from16 p9, v11

    .line 1277
    invoke-interface/range {p2 .. p9}, Lcom/taobao/weex/ui/flat/widget/Widget;->setLayout(IIIIIILandroid/graphics/Point;)V

    .line 1279
    instance-of v3, v10, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    if-eqz v3, :cond_4

    move-object v3, v10

    check-cast v3, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    invoke-virtual {v3}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1281
    invoke-virtual {v3}, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;->getView()Landroid/view/View;

    move-result-object v3

    iget v5, v11, Landroid/graphics/Point;->x:I

    iget v6, v11, Landroid/graphics/Point;->y:I

    move-object p1, p0

    move-object/from16 p2, v3

    move/from16 p3, v1

    move/from16 p4, v2

    move/from16 p5, v5

    move/from16 p6, v4

    move/from16 p7, v6

    move/from16 p8, v0

    invoke-virtual/range {p1 .. p8}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    :cond_4
    return-void
.end method

.method private shouldCancelHardwareAccelerate()Z
    .locals 5

    .line 1991
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWxConfigAdapter()Lcom/taobao/weex/adapter/IWXConfigAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "android_weex_test_gpu"

    const-string v3, "cancel_hardware_accelerate"

    const-string v4, "true"

    .line 1996
    invoke-interface {v0, v2, v3, v4}, Lcom/taobao/weex/adapter/IWXConfigAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1995
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2000
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 2002
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel_hardware_accelerate : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->i(Ljava/lang/String;)V

    :cond_0
    return v1
.end method

.method private updateElevation()V
    .locals 2

    .line 2177
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->getElevation(F)F

    move-result v0

    .line 2178
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2179
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method private updateStyleByPesudo(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "styles"
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

    .line 2483
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2486
    :cond_0
    new-instance v0, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v6

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v7

    const/4 v8, 0x1

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;-><init>(Lcom/taobao/weex/WXSDKInstance;Ljava/lang/String;Ljava/util/Map;Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;Lcom/taobao/weex/dom/CSSShorthand;Z)V

    .line 2487
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicActionUpdateStyle;->executeActionOnRender()V

    .line 2488
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "width"

    .line 2490
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2491
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    goto :goto_0

    :cond_2
    const-string v0, "height"

    .line 2492
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2493
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public addAnimationForElement(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animMap"
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

    if-eqz p1, :cond_1

    .line 2674
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2675
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v0, :cond_0

    .line 2676
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2678
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected final addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 687
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 688
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 689
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    .line 691
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 693
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 694
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$4;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXComponent$4;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public addEvent(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    .line 374
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    const-string v1, "layeroverflow"

    .line 379
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->addLayerOverFlowListener(Ljava/lang/String;)V

    :cond_2
    const-string v1, "click"

    .line 382
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez v0, :cond_3

    return-void

    .line 387
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    if-nez v0, :cond_4

    .line 388
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXComponent$1;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    .line 390
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V

    goto/16 :goto_1

    :cond_5
    const-string v1, "focus"

    .line 391
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "blur"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_0

    .line 403
    :cond_6
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->needGestureDetector(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-nez v0, :cond_7

    return-void

    .line 408
    :cond_7
    instance-of v1, v0, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    if-eqz v1, :cond_b

    .line 409
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-nez v1, :cond_8

    .line 410
    new-instance v1, Lcom/taobao/weex/ui/view/gesture/WXGesture;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .line 411
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "preventMoveEvent"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 412
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-virtual {v2, v1}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->setPreventMoveEvent(Z)V

    .line 414
    :cond_8
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    if-nez v1, :cond_9

    .line 415
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    :cond_9
    const-string/jumbo v1, "view_hover_event"

    .line 417
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 418
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_a
    check-cast v0, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    invoke-interface {v0, v1}, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;->registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V

    goto :goto_1

    .line 421
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " don\'t implement WXGestureObservable, so no gesture is supported."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 425
    :cond_c
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const-string v1, "appear"

    .line 430
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 431
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->bindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_1

    :cond_e
    const-string v1, "disappear"

    .line 432
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 433
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->bindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_1

    .line 392
    :cond_f
    :goto_0
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHasAddFocusListener:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 393
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHasAddFocusListener:Z

    .line 394
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$1;

    invoke-direct {v0, p0}, Lcom/taobao/weex/ui/component/WXComponent$1;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V

    .line 437
    :cond_10
    :goto_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_2
    return-void
.end method

.method protected final addFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 659
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 660
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    if-nez v1, :cond_0

    .line 661
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    const/4 v1, 0x1

    .line 662
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 663
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXComponent$3;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

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

    .line 2793
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2794
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->addLayerOverFlowListener(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected appendEventToDOM(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    return-void
.end method

.method public applyComponentEvents()V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->applyEvents()V

    return-void
.end method

.method public applyLayoutAndEvent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 736
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    move-object p1, p0

    .line 740
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 741
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->bindComponent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 742
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setSafeLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 743
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getPadding()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object v0

    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getBorder()Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setPadding(Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;)V

    .line 744
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->applyEvents()V

    :cond_1
    return-void
.end method

.method public applyLayoutOnly()V
    .locals 2

    .line 760
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    invoke-virtual {p0, p0}, Lcom/taobao/weex/ui/component/WXComponent;->setSafeLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 762
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setPadding(Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;)V

    :cond_0
    return-void
.end method

.method protected final bindComponent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 253
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/basic/WXBasicComponent;->bindComponent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 254
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setViewPortWidth(F)V

    .line 258
    :cond_0
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 259
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    .line 260
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getType()I

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    return-void
.end method

.method protected bindComponentData(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 723
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    move-object p1, p0

    .line 727
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/taobao/weex/ui/component/WXComponent;

    .line 728
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->bindComponent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 729
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyles(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 730
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateAttrs(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 731
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getExtra()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateExtra(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bindData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 719
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->bindComponentData(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    return-void
.end method

.method public bindHolder(Lcom/taobao/weex/ui/IFComponentHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 452
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

    return-void
.end method

.method public canRecycled()Z
    .locals 1

    .line 2504
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isSticky()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXAttr;->canRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected clearBoxShadow()V
    .locals 6

    .line 1455
    invoke-static {}, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->isBoxShadowEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BoxShadow"

    const-string v1, "box-shadow disabled"

    .line 1456
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1459
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1460
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateBoxShadowData(Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;)V

    .line 1462
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v0, :cond_3

    .line 1463
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1464
    instance-of v0, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    .line 1465
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1466
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v4, v2, v3

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1467
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_0

    .line 1469
    :cond_2
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v3, v4, v2

    invoke-direct {v0, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1470
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 1474
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    if-eqz v0, :cond_4

    .line 1475
    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    .line 1477
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    if-eqz v0, :cond_6

    .line 1478
    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1479
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1481
    :cond_5
    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    .line 1483
    :cond_6
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    if-eqz v0, :cond_7

    .line 1484
    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    :cond_7
    return-void
.end method

.method public clearPreLayout()V
    .locals 1

    const/4 v0, 0x0

    .line 2311
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    .line 2312
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealRight:I

    .line 2313
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    .line 2314
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    .line 2315
    iput v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    return-void
.end method

.method public computeVisiblePointInViewCoordinate(Landroid/graphics/PointF;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointF"
        }
    .end annotation

    .line 2328
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    .line 2329
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public containsEvent(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 2337
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public containsGesture(Lcom/taobao/weex/ui/view/gesture/WXGestureType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "WXGestureType"
        }
    .end annotation

    .line 2333
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propName",
            "originalValue"
        }
    .end annotation

    .line 2400
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    .line 2408
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "borderRadius"

    .line 2400
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "backgroundColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "borderWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "borderColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "borderBottomRightRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "borderBottomLeftRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "borderTopRightRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "borderLeftWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0x8

    goto :goto_1

    :sswitch_8
    const-string v0, "borderLeftColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_9
    const-string v0, "borderTopLeftRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_a
    const-string v0, "borderBottomWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_b
    const-string v0, "borderBottomColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_c
    const-string v0, "borderTopWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_d
    const-string v0, "borderTopColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_e
    const-string v0, "borderRightWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_f
    const-string v0, "borderRightColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    :goto_1
    packed-switch v1, :pswitch_data_0

    return-object p2

    :pswitch_0
    const-string p1, "transparent"

    return-object p1

    :pswitch_1
    return-object v2

    :pswitch_2
    const-string p1, "black"

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7696880d -> :sswitch_f
        -0x757f89aa -> :sswitch_e
        -0x57ab08a6 -> :sswitch_d
        -0x56940a43 -> :sswitch_c
        -0x4e0397d4 -> :sswitch_b
        -0x4cec9971 -> :sswitch_a
        -0x4932ce1e -> :sswitch_9
        -0xe70d730 -> :sswitch_8
        -0xd59d8cd -> :sswitch_7
        0x13dfc885 -> :sswitch_6
        0x22a57450 -> :sswitch_5
        0x230fd3d7 -> :sswitch_4
        0x2b158697 -> :sswitch_3
        0x2c2c84fa -> :sswitch_2
        0x4cb7f6d5 -> :sswitch_1
        0x506afbde -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final createView()V
    .locals 1

    .line 1684
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1685
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->createViewImpl()V

    :cond_0
    return-void
.end method

.method protected createViewImpl()V
    .locals 2

    .line 1690
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 1691
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1692
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isVirtualComponent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1694
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->initView()V

    .line 1696
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1697
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1698
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-static {}, Lcom/taobao/weex/utils/WXViewUtils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 1704
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getComponentObserver()Lcom/taobao/weex/ComponentObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1705
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-interface {v0, p0, v1}, Lcom/taobao/weex/ComponentObserver;->onViewCreated(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;)V

    .line 1707
    :cond_2
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->invokePendingComponetMethod()V

    .line 1709
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->onHostViewInitialized(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    const-string v0, "createViewImpl"

    const-string v1, "Context is null"

    .line 1711
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 2244
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2247
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->clearBoxShadow()V

    .line 2249
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getComponentObserver()Lcom/taobao/weex/ComponentObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2250
    invoke-interface {v0, p0}, Lcom/taobao/weex/ComponentObserver;->onPreDestory(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 2253
    :cond_1
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/taobao/weex/utils/WXUtils;->isUiThread()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2254
    :cond_2
    new-instance v0, Lcom/taobao/weex/common/WXRuntimeException;

    const-string v1, "[WXComponent] destroy can only be called in main thread"

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2256
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLayerTypeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2257
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2259
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->removeAllEvent()V

    .line 2260
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->removeStickyStyle()V

    .line 2263
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2264
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/taobao/weex/WXSDKInstance;->removeFixedView(Landroid/view/View;)V

    .line 2267
    :cond_5
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    if-eqz v0, :cond_6

    .line 2268
    invoke-virtual {v0}, Lcom/taobao/weex/layout/ContentBoxMeasurement;->destroy()V

    .line 2269
    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    :cond_6
    const/4 v0, 0x1

    .line 2271
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDestroyed:Z

    .line 2272
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->animations:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_7

    .line 2273
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 2275
    :cond_7
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    if-eqz v0, :cond_8

    .line 2276
    invoke-virtual {v0}, Lio/dcloud/weex/ViewHover;->destroy()V

    .line 2277
    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    .line 2279
    :cond_8
    iput-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 2280
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 2281
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2283
    :cond_9
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 2284
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_a
    return-void
.end method

.method public detachViewAndClearPreInfo()Landroid/view/View;
    .locals 2

    .line 2300
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v1, 0x0

    .line 2301
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    .line 2302
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealRight:I

    .line 2303
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    .line 2304
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    .line 2305
    iput v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    return-object v0
.end method

.method protected final findComponent(Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 472
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKManager;->getWXRenderManager()Lcom/taobao/weex/ui/WXRenderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 474
    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/taobao/weex/ui/WXRenderManager;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findTypeParent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "type"
        }
    .end annotation

    .line 636
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-object p1

    .line 639
    :cond_0
    check-cast p1, Lcom/taobao/weex/ui/component/WXComponent;

    .line 640
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 641
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->findTypeParent(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final fireEvent(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x0

    .line 579
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final fireEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
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

    .line 583
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "fireEventSyn"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 586
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/bridge/EventResult;)V

    :goto_0
    return-void
.end method

.method protected final fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "params",
            "domChanges"
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 612
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/bridge/EventResult;)V

    return-void
.end method

.method public final fireEventWait(Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/weex/bridge/EventResult;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
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
            ">;)",
            "Lcom/taobao/weex/bridge/EventResult;"
        }
    .end annotation

    .line 591
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 592
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$2;

    invoke-direct {v1, p0, v0}, Lcom/taobao/weex/ui/component/WXComponent$2;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Ljava/util/concurrent/CountDownLatch;)V

    const/4 v2, 0x0

    .line 600
    :try_start_0
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/taobao/weex/bridge/EventResult;)V

    const-wide/16 p1, 0x32

    .line 601
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 604
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "fireEventWait"

    .line 605
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

.method public getAbsoluteX()I
    .locals 1

    .line 1794
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteX:I

    return v0
.end method

.method public getAbsoluteY()I
    .locals 1

    .line 1790
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    return v0
.end method

.method public getAttrByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const-string p1, "default"

    return-object p1
.end method

.method public getComponentSize()Landroid/graphics/Rect;
    .locals 6

    .line 516
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 517
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    .line 521
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 522
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getContainerView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 523
    aget v4, v2, v3

    aget v3, v1, v3

    sub-int/2addr v4, v3

    const/4 v3, 0x1

    .line 524
    aget v2, v2, v3

    iget v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mStickyOffset:I

    sub-int/2addr v2, v5

    aget v1, v1, v3

    sub-int/2addr v2, v1

    .line 525
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v1

    float-to-int v1, v1

    .line 526
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v1, v4

    add-int/2addr v3, v2

    .line 527
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFirstScroller()Lcom/taobao/weex/ui/component/Scrollable;
    .locals 1

    .line 1670
    instance-of v0, p0, Lcom/taobao/weex/ui/component/Scrollable;

    if-eqz v0, :cond_0

    .line 1671
    move-object v0, p0

    check-cast v0, Lcom/taobao/weex/ui/component/Scrollable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1776
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public getHover()Lio/dcloud/weex/ViewHover;
    .locals 1

    .line 2883
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    return-object v0
.end method

.method public getInstance()Lcom/taobao/weex/WXSDKInstance;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutTopOffsetForSibling()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;
    .locals 7

    .line 1033
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-nez v0, :cond_5

    .line 1034
    new-instance v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-direct {v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 1035
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 1036
    invoke-static {v0, v1, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 1037
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1038
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    aput-object v5, v1, v3

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v3, v1, v2

    invoke-direct {v4, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v4, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_0

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    if-eqz v0, :cond_1

    .line 1042
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v5, v1, v3

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    aput-object v3, v1, v2

    invoke-direct {v4, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v4, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_0

    .line 1045
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-static {v0, v1, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_0

    .line 1049
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    const/4 v4, 0x3

    if-eqz v0, :cond_3

    .line 1050
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v3

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    aput-object v3, v4, v2

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v2, v4, v1

    invoke-direct {v5, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v5, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_0

    .line 1052
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    if-eqz v0, :cond_4

    .line 1053
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    aput-object v6, v4, v3

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v3, v4, v2

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    aput-object v2, v4, v1

    invoke-direct {v5, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v5, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_0

    .line 1056
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    aput-object v5, v1, v3

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v3, v1, v2

    invoke-direct {v4, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v4, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 1062
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    return-object v0
.end method

.method public getParent()Lcom/taobao/weex/ui/component/WXVContainer;
    .locals 1

    .line 1677
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    return-object v0
.end method

.method public getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;
    .locals 4

    move-object v0, p0

    .line 1650
    :cond_0
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 1654
    :cond_1
    instance-of v2, v0, Lcom/taobao/weex/ui/component/Scrollable;

    if-eqz v2, :cond_2

    .line 1655
    check-cast v0, Lcom/taobao/weex/ui/component/Scrollable;

    return-object v0

    .line 1658
    :cond_2
    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getRef()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_root"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1
.end method

.method public getRealView()Landroid/view/View;
    .locals 1

    .line 1608
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public getRenderObjectPtr()J
    .locals 3

    .line 2732
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->isRenderPtrEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2733
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeGetRenderObject(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/action/BasicComponentData;->setRenderObjectPr(J)V

    .line 2735
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getRenderObjectPr()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStickyOffset()I
    .locals 1

    .line 2500
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mStickyOffset:I

    return v0
.end method

.method public getTransition()Lcom/taobao/weex/dom/transition/WXTransition;
    .locals 1

    .line 2666
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTransition:Lcom/taobao/weex/dom/transition/WXTransition;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 2380
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1786
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    return-object v0
.end method

.method public getViewPortWidthForFloat()F
    .locals 1

    .line 2898
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2899
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x44340000    # 720.0f

    return v0
.end method

.method public getViewTreeKey()Ljava/lang/String;
    .locals 3

    .line 2653
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mViewTreeKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2654
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    const-string v1, "_"

    if-nez v0, :cond_0

    .line 2655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mViewTreeKey:Ljava/lang/String;

    goto :goto_0

    .line 2657
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/taobao/weex/ui/component/WXVContainer;->indexOf(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mViewTreeKey:Ljava/lang/String;

    .line 2660
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mViewTreeKey:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()Ljava/lang/String;
    .locals 2

    .line 2156
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string/jumbo v1, "visibility"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string/jumbo v0, "visible"

    return-object v0
.end method

.method public hasScrollParent(Lcom/taobao/weex/ui/component/WXComponent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 2384
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2386
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/component/WXBaseScroller;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2389
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->hasScrollParent(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result p1

    return p1
.end method

.method public hoverClass(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "hoverClass"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 2806
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2808
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    if-nez v0, :cond_0

    .line 2809
    new-instance v0, Lio/dcloud/weex/ViewHover;

    invoke-direct {v0, p0, p1}, Lio/dcloud/weex/ViewHover;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/alibaba/fastjson/JSONObject;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    goto :goto_0

    .line 2811
    :cond_0
    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->update(Lcom/alibaba/fastjson/JSONObject;)V

    .line 2813
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p1

    const-string/jumbo v0, "view_hover_event"

    invoke-virtual {p1, v0}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2814
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public hoverStartTime(I)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "hoverStartTime"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 2835
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    if-nez v0, :cond_0

    .line 2836
    new-instance v0, Lio/dcloud/weex/ViewHover;

    invoke-direct {v0, p0}, Lio/dcloud/weex/ViewHover;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    .line 2838
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->setHoverStartTime(I)V

    return-void
.end method

.method public hoverStayTime(I)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "hoverStayTime"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 2843
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    if-nez v0, :cond_0

    .line 2844
    new-instance v0, Lio/dcloud/weex/ViewHover;

    invoke-direct {v0, p0}, Lio/dcloud/weex/ViewHover;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    .line 2846
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->setHoverStayTime(I)V

    return-void
.end method

.method public hoverStopPropagation(Z)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "hoverStopPropagation"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is"
        }
    .end annotation

    .line 2821
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    if-nez v0, :cond_0

    .line 2822
    new-instance v0, Lio/dcloud/weex/ViewHover;

    invoke-direct {v0, p0}, Lio/dcloud/weex/ViewHover;-><init>(Lcom/taobao/weex/ui/component/WXComponent;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    .line 2824
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->setHoverStopPropagation(Z)V

    .line 2825
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    const-string/jumbo v1, "view_hover_event"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2826
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    .line 2828
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2829
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->setHoverReceiveTouch(Z)V

    :cond_2
    return-void
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected initElevation(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 976
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_3

    const/4 v0, 0x0

    .line 977
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 978
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p1, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p1

    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    .line 979
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    if-eqz p1, :cond_0

    .line 980
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->clearBoxShadow()V

    .line 982
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne p1, v1, :cond_1

    .line 983
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setElevation(F)V

    goto/16 :goto_0

    .line 985
    :cond_1
    new-instance p1, Landroid/animation/StateListAnimator;

    invoke-direct {p1}, Landroid/animation/StateListAnimator;-><init>()V

    .line 987
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 988
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [F

    iget v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    const/4 v6, 0x0

    aput v5, v4, v6

    const-string v5, "elevation"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 989
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    sget-object v9, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v10, v3, [F

    aput v0, v10, v6

    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-wide v9, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DURATION:J

    .line 990
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 989
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 991
    new-instance v2, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 992
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {p1, v2, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 995
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 996
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    new-array v4, v3, [F

    iget v9, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    aput v9, v4, v6

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 997
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    sget-object v9, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v10, v3, [F

    aput v0, v10, v6

    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-wide v9, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DURATION:J

    .line 998
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 997
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 999
    new-instance v2, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1000
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->FOCUSED_ENABLED_STATE_SET:[I

    invoke-virtual {p1, v2, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1003
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1004
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    new-array v9, v3, [F

    iget v10, p0, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    aput v10, v9, v6

    invoke-static {v4, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1006
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x16

    if-lt v4, v9, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-gt v4, v9, :cond_2

    .line 1011
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    sget-object v9, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v10, v3, [F

    .line 1012
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTranslationZ()F

    move-result v11

    aput v11, v10, v6

    .line 1011
    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-wide v9, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DELAY:J

    .line 1012
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1011
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    sget-object v9, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v10, v3, [F

    aput v0, v10, v6

    invoke-static {v4, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-wide v9, p0, Lcom/taobao/weex/ui/component/WXComponent;->PRESSED_ANIM_DURATION:J

    .line 1015
    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1014
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v4, v6, [Landroid/animation/ObjectAnimator;

    .line 1016
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/animation/Animator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1017
    new-instance v2, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1018
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->ENABLED_STATE_SET:[I

    invoke-virtual {p1, v2, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1021
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1022
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v2

    new-array v4, v3, [F

    aput v0, v4, v6

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 1023
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v4

    sget-object v5, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v3, v3, [F

    aput v0, v3, v6

    invoke-static {v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1024
    new-instance v0, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1025
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->EMPTY_STATE_SET:[I

    invoke-virtual {p1, v0, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 1027
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected initView()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1737
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1738
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->initComponentHostView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1740
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->invokePendingComponetMethod()V

    :cond_0
    return-void
.end method

.method public interceptFocusAndBlurEvent()V
    .locals 1

    const/4 v0, 0x1

    .line 444
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHasAddFocusListener:Z

    return-void
.end method

.method public final invoke(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "args"
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/IFComponentHolder;->getMethodInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 546
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object p1

    .line 547
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getNativeInvokeHelper()Lcom/taobao/weex/bridge/NativeInvokeHelper;

    move-result-object p1

    .line 548
    invoke-virtual {p1, p0, v0, p2}, Lcom/taobao/weex/bridge/NativeInvokeHelper;->invoke(Ljava/lang/Object;Lcom/taobao/weex/bridge/Invoker;Lcom/alibaba/fastjson/JSONArray;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 551
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WXComponent] updateProperties :class:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "method:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " function "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 554
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->onInvokeUnknownMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_1

    .line 540
    :cond_2
    :goto_0
    new-instance v0, Lio/dcloud/feature/uniapp/ui/action/UniMethodData;

    invoke-direct {v0, p1, p2}, Lio/dcloud/feature/uniapp/ui/action/UniMethodData;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    .line 541
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPendingComponetMethodQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method protected isConsumeTouch()Z
    .locals 1

    .line 2435
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDestoryed()Z
    .locals 1

    .line 2289
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDestroyed:Z

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .line 1901
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDisabled:Z

    return v0
.end method

.method public isFixed()Z
    .locals 1

    .line 1889
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->isFixed()Z

    move-result v0

    return v0
.end method

.method public isFlatUIEnabled()Z
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->isFlatUIEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayerTypeEnabled()Z
    .locals 1

    .line 2522
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isLayerTypeEnabled()Z

    move-result v0

    return v0
.end method

.method public isLazy()Z
    .locals 2

    .line 651
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPreventGesture()Z
    .locals 1

    .line 2888
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->isPreventGesture:Z

    return v0
.end method

.method protected isRippleEnabled()Z
    .locals 3

    const/4 v0, 0x0

    .line 2597
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v1

    const-string v2, "rippleEnabled"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2598
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method public isSticky()Z
    .locals 1

    .line 1885
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->isSticky()Z

    move-result v0

    return v0
.end method

.method public isUsing()Z
    .locals 1

    .line 2349
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->isUsing:Z

    return v0
.end method

.method public isVirtualComponent()Z
    .locals 2

    .line 2373
    iget v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWaste()Z
    .locals 1

    .line 2606
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->waste:Z

    return v0
.end method

.method protected ismHasFocusChangeListener(Lcom/taobao/weex/ui/component/WXComponent$OnFocusChangeListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 679
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFocusChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 680
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected layoutDirectionDidChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRTL"
        }
    .end annotation

    return-void
.end method

.method public lazy(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lazy"
        }
    .end annotation

    .line 2728
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    return-void
.end method

.method protected measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;
    .locals 2
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

    .line 1523
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    invoke-direct {v0}, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;-><init>()V

    .line 1525
    iget v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    if-eqz v1, :cond_0

    .line 1526
    iput v1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 1527
    iget p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mFixedProp:I

    iput p1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    goto :goto_0

    .line 1529
    :cond_0
    iput p1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 1530
    iput p2, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    :goto_0
    return-object v0
.end method

.method public nativeUpdateAttrs(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dynamic"
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

    .line 2751
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 2755
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2756
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2757
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2758
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2761
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateNativeAttr(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wxEventType",
            "direction"
        }
    .end annotation

    const-string v0, "appear"

    .line 2341
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "disappear"

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->containsEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2342
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "direction"

    .line 2343
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2344
    invoke-virtual {p0, p1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public notifyNativeSizeChanged(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "h"
        }
    .end annotation

    .line 2536
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mNeedLayoutOnAnimation:Z

    if-nez v0, :cond_0

    return-void

    .line 2539
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalShadows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2540
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalLeft()I

    move-result v0

    sub-int/2addr p1, v0

    .line 2541
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {v0}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalTop()I

    move-result v0

    sub-int/2addr p2, v0

    .line 2543
    :cond_1
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    .line 2544
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    int-to-float p1, p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleWidth(Ljava/lang/String;Ljava/lang/String;F)V

    .line 2545
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    int-to-float p2, p2

    invoke-virtual {v0, p1, v1, p2}, Lcom/taobao/weex/bridge/WXBridgeManager;->setStyleHeight(Ljava/lang/String;Ljava/lang/String;F)V

    return-void
.end method

.method public onActivityBack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreate()V
    .locals 0

    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    .line 2213
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPendingComponetMethodQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_0

    .line 2214
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_0
    return-void
.end method

.method public onActivityPause()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
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

    return-void
.end method

.method public onActivityResume()V
    .locals 0

    return-void
.end method

.method public onActivityStart()V
    .locals 0

    return-void
.end method

.method public onActivityStop()V
    .locals 0

    return-void
.end method

.method protected onCreate()V
    .locals 0

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected onFinishLayout()V
    .locals 2

    .line 1513
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    const-string v1, "backgroundImage"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1515
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setBackgroundImage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onHostViewInitialized(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "host"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1768
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAnimationHolder:Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;

    if-eqz p1, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-interface {p1, v0, p0}, Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;->execute(Lio/dcloud/feature/uniapp/AbsSDKInstance;Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    .line 1772
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->setActiveTouchListener()V

    return-void
.end method

.method protected onInvokeUnknownMethod(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "args"
        }
    .end annotation

    return-void
.end method

.method public onRenderFinish(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 2559
    invoke-static {}, Lcom/taobao/weex/tracing/WXTracing;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2560
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiThreadNanos:J

    invoke-static {v0, v1}, Lcom/taobao/weex/tracing/Stopwatch;->nanosToMillis(J)D

    move-result-wide v0

    const-string v2, "X"

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    if-nez p1, :cond_2

    .line 2562
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget v5, v5, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->rootEventId:I

    const-string v6, "DomExecute"

    invoke-static {v6, v4, v5}, Lcom/taobao/weex/tracing/WXTracing;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object v4

    .line 2563
    iput-object v2, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    .line 2564
    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v5, v5, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->domThreadStart:J

    iput-wide v5, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    const-string v5, "DOMThread"

    .line 2565
    iput-object v5, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->tname:Ljava/lang/String;

    .line 2566
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->name:Ljava/lang/String;

    .line 2567
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->classname:Ljava/lang/String;

    .line 2568
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2569
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXVContainer;->getRef()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parentRef:Ljava/lang/String;

    .line 2571
    :cond_1
    invoke-virtual {v4}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submit()V

    :cond_2
    if-eq p1, v3, :cond_3

    const/4 v3, 0x1

    if-ne p1, v3, :cond_6

    .line 2575
    :cond_3
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v3, p1, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiThreadStart:J

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    .line 2576
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget v3, v3, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->rootEventId:I

    const-string v4, "UIExecute"

    invoke-static {v4, p1, v3}, Lcom/taobao/weex/tracing/WXTracing;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lcom/taobao/weex/tracing/WXTracing$TraceEvent;

    move-result-object p1

    .line 2577
    iput-object v2, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ph:Ljava/lang/String;

    .line 2578
    iput-wide v0, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->duration:D

    .line 2579
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTraceInfo:Lcom/taobao/weex/tracing/WXTracing$TraceInfo;

    iget-wide v0, v0, Lcom/taobao/weex/tracing/WXTracing$TraceInfo;->uiThreadStart:J

    iput-wide v0, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->ts:J

    .line 2580
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->name:Ljava/lang/String;

    .line 2581
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->classname:Ljava/lang/String;

    .line 2582
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2583
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getRef()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->parentRef:Ljava/lang/String;

    .line 2585
    :cond_4
    invoke-virtual {p1}, Lcom/taobao/weex/tracing/WXTracing$TraceEvent;->submit()V

    goto :goto_0

    .line 2587
    :cond_5
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    :cond_6
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
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

    return-void
.end method

.method public postAnimation(Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 485
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAnimationHolder:Lio/dcloud/feature/uniapp/ui/AbsAnimationHolder;

    return-void
.end method

.method public readyToRender()V
    .locals 1

    .line 2357
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->isTrackComponent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2358
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->readyToRender()V

    :cond_0
    return-void
.end method

.method public recycled()V
    .locals 1

    .line 2238
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public refreshData(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    return-void
.end method

.method public registerActivityStateListener()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public removeAllEvent()V
    .locals 4

    .line 1840
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 1843
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    .line 1844
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 1846
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXEvent;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_2

    .line 1849
    :cond_1
    invoke-virtual {v0, v2}, Lcom/taobao/weex/dom/WXEvent;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_1

    .line 1853
    :cond_2
    invoke-virtual {p0, v3}, Lcom/taobao/weex/ui/component/WXComponent;->removeEventFromView(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1855
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    if-eqz v0, :cond_4

    .line 1856
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1858
    :cond_4
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    if-eqz v0, :cond_5

    .line 1859
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_5
    const/4 v0, 0x0

    .line 1861
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    .line 1862
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1863
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    if-eqz v1, :cond_6

    .line 1864
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;

    invoke-interface {v1, v0}, Lcom/taobao/weex/ui/view/gesture/WXGestureObservable;->registerGestureListener(Lcom/taobao/weex/ui/view/gesture/WXGesture;)V

    .line 1866
    :cond_6
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v1, :cond_7

    .line 1867
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1868
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 1869
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1870
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method protected final removeClickListener(Lcom/taobao/weex/ui/component/WXComponent$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 715
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeEvent(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1798
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "layeroverflow"

    .line 1802
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1803
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->removeLayerOverFlowListener(Ljava/lang/String;)V

    .line 1805
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1806
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/dom/WXEvent;->remove(Ljava/lang/String;)Z

    .line 1808
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mAppendEvents:Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 1809
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1811
    :cond_3
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGestureType:Ljava/util/Set;

    if-eqz v0, :cond_4

    .line 1812
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1814
    :cond_4
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->removeEventFromView(Ljava/lang/String;)V

    return-void
.end method

.method protected removeEventFromView(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const-string v0, "click"

    .line 1818
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1819
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1820
    new-instance v0, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    invoke-direct {v0, p0, v1}, Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXComponent$1;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mClickEventListener:Lcom/taobao/weex/ui/component/WXComponent$OnClickListenerImp;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1824
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHostClickListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 1825
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1826
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1830
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v0

    const-string v1, "appear"

    .line 1831
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1832
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->unbindAppearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_2
    const-string v1, "disappear"

    .line 1834
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 1835
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->unbindDisappearEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_3
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

    .line 2798
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2799
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/WXSDKInstance;->removeLayerOverFlowListener(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final removeStickyStyle()V
    .locals 1

    .line 1876
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isSticky()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1877
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1879
    invoke-interface {v0, p0}, Lcom/taobao/weex/ui/component/Scrollable;->unbindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_0
    return-void
.end method

.method public removeVirtualComponent()V
    .locals 0

    return-void
.end method

.method protected setAriaHidden(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isHidden"
        }
    .end annotation

    .line 1537
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1538
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 1539
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    return-void
.end method

.method protected setAriaLabel(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "label"
        }
    .end annotation

    .line 1544
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1546
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 1914
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1915
    invoke-static {p1}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p1

    .line 1916
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isRippleEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 1917
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->prepareBackgroundRipple()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 1919
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-nez p1, :cond_0

    .line 1920
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-static {p1, v0, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_1

    .line 1923
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 1924
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    aput-object v3, v4, v2

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v2, v4, v1

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    aput-object v1, v4, v0

    invoke-direct {p1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1925
    :cond_1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    if-eqz p1, :cond_2

    .line 1926
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    aput-object v4, v0, v3

    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    aput-object v2, v0, v1

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1928
    :cond_2
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v1, v0, v2

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1930
    :goto_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-static {v0, p1, p0}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    :goto_1
    return-void

    :cond_3
    if-nez p1, :cond_4

    .line 1935
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v0, :cond_5

    .line 1936
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setColor(I)V

    :cond_5
    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bgImage"
        }
    .end annotation

    .line 1983
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1984
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setImage(Landroid/graphics/Shader;)V

    goto :goto_0

    .line 1986
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/taobao/weex/utils/WXResourceUtils;->getShader(Ljava/lang/String;FF)Landroid/graphics/Shader;

    move-result-object p1

    .line 1987
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setImage(Landroid/graphics/Shader;)V

    :goto_0
    return-void
.end method

.method public setBorderColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "borderColor"
        }
    .end annotation

    .line 2128
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2129
    invoke-static {p2}, Lcom/taobao/weex/utils/WXResourceUtils;->getColor(Ljava/lang/String;)I

    move-result p2

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_5

    .line 2131
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "borderColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "borderLeftColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "borderBottomColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "borderTopColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "borderRightColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2133
    :pswitch_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    goto :goto_1

    .line 2145
    :pswitch_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    goto :goto_1

    .line 2142
    :pswitch_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    goto :goto_1

    .line 2136
    :pswitch_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    goto :goto_1

    .line 2139
    :pswitch_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderColor(Lcom/taobao/weex/dom/CSSShorthand$EDGE;I)V

    :cond_5
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7696880d -> :sswitch_4
        -0x57ab08a6 -> :sswitch_3
        -0x4e0397d4 -> :sswitch_2
        -0xe70d730 -> :sswitch_1
        0x2b158697 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBorderRadius(Ljava/lang/String;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "borderRadius"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_5

    .line 2023
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "borderRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "borderBottomRightRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "borderBottomLeftRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "borderTopRightRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "borderTopLeftRadius"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2025
    :pswitch_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p1

    .line 2026
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p2

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->ALL:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    invoke-virtual {p2, v0, p1}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    goto :goto_1

    .line 2037
    :pswitch_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    goto :goto_1

    .line 2040
    :pswitch_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_BOTTOM_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    goto :goto_1

    .line 2034
    :pswitch_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_RIGHT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    goto :goto_1

    .line 2031
    :pswitch_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$CORNER;->BORDER_TOP_LEFT:Lcom/taobao/weex/dom/CSSShorthand$CORNER;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderRadius(Lcom/taobao/weex/dom/CSSShorthand$CORNER;F)V

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4932ce1e -> :sswitch_4
        0x13dfc885 -> :sswitch_3
        0x22a57450 -> :sswitch_2
        0x230fd3d7 -> :sswitch_1
        0x506afbde -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBorderStyle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "borderStyle"
        }
    .end annotation

    .line 2106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2107
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "borderStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "borderLeftStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "borderBottomStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "borderTopStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "borderRightStyle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2109
    :pswitch_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    goto :goto_1

    .line 2118
    :pswitch_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    goto :goto_1

    .line 2115
    :pswitch_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    goto :goto_1

    .line 2121
    :pswitch_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    goto :goto_1

    .line 2112
    :pswitch_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderStyle(Lcom/taobao/weex/dom/CSSShorthand$EDGE;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x75b299bf -> :sswitch_4
        -0x56c71a58 -> :sswitch_3
        -0x4d1fa986 -> :sswitch_2
        -0xd8ce8e2 -> :sswitch_1
        0x2bf974e5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBorderWidth(Ljava/lang/String;F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "borderWidth"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_5

    .line 2083
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "borderWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "borderLeftWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "borderBottomWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "borderTopWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "borderRightWidth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2085
    :pswitch_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->ALL:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_1

    .line 2097
    :pswitch_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_1

    .line 2094
    :pswitch_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_1

    .line 2088
    :pswitch_3
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    goto :goto_1

    .line 2091
    :pswitch_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object p1

    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0, p2}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->setBorderWidth(Lcom/taobao/weex/dom/CSSShorthand$EDGE;F)V

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x757f89aa -> :sswitch_4
        -0x56940a43 -> :sswitch_3
        -0x4cec9971 -> :sswitch_2
        -0xd59d8cd -> :sswitch_1
        0x2c2c84fa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "contentBoxMeasurement"
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->contentBoxMeasurement:Lcom/taobao/weex/layout/ContentBoxMeasurement;

    .line 265
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/taobao/weex/WXSDKInstance;->addContentBoxMeasurement(JLcom/taobao/weex/layout/ContentBoxMeasurement;)V

    .line 266
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/bridge/WXBridgeManager;->bindMeasurementToRenderObject(J)V

    return-void
.end method

.method public setDemission(Lcom/taobao/weex/ui/action/GraphicSize;Lcom/taobao/weex/ui/action/GraphicPosition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "size",
            "position"
        }
    .end annotation

    .line 749
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutPosition(Lcom/taobao/weex/ui/action/GraphicPosition;)V

    .line 750
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disabled"
        }
    .end annotation

    .line 1893
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mIsDisabled:Z

    .line 1894
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 1897
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setElevation(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "elevation"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 965
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->initElevation(Ljava/lang/String;)V

    return-void
.end method

.method protected setHostLayoutParams(Landroid/view/View;IIIIII)V
    .locals 10
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
            "host",
            "width",
            "height",
            "left",
            "right",
            "top",
            "bottom"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIIIII)V"
        }
    .end annotation

    move-object v9, p0

    .line 1292
    iget-object v0, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-nez v0, :cond_0

    .line 1293
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    move v3, p2

    move v4, p3

    invoke-direct {v6, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, p0

    move-object v1, v6

    move v2, p4

    move/from16 v3, p6

    move v4, p5

    move/from16 v5, p7

    .line 1294
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/ui/component/WXComponent;->setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    goto :goto_0

    :cond_0
    move v3, p2

    move v4, p3

    .line 1297
    iget-object v0, v9, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    move-object v1, p0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildLayoutParams(Lcom/taobao/weex/ui/component/WXComponent;Landroid/view/View;IIIIII)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_1

    move-object v0, p1

    .line 1300
    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setHoverClassStatus(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 2850
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHover:Lio/dcloud/weex/ViewHover;

    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->updateStatusAndGetUpdateStyles(Z)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 2853
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string/jumbo v1, "width"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 2854
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "height"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez p1, :cond_0

    if-eqz v2, :cond_1

    .line 2856
    :cond_0
    new-instance v4, Lcom/taobao/weex/ui/action/GraphicSize;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/taobao/weex/ui/action/GraphicSize;-><init>(FF)V

    iput-object v4, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

    :cond_1
    if-eqz p1, :cond_2

    .line 2859
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/action/GraphicSize;->setWidth(F)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    .line 2861
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/taobao/weex/ui/action/GraphicSize;->setHeight(F)V

    goto :goto_0

    .line 2864
    :cond_3
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

    if-eqz p1, :cond_4

    .line 2865
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 2870
    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyleByPesudo(Ljava/util/Map;)V

    return-void
.end method

.method public setHoverReceiveTouch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiveTouch"
        }
    .end annotation

    .line 2874
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHover()Lio/dcloud/weex/ViewHover;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2875
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHover()Lio/dcloud/weex/ViewHover;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/dcloud/weex/ViewHover;->setReceiveTouch(Z)V

    .line 2877
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v0, :cond_1

    .line 2878
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/component/WXVContainer;->setHoverReceiveTouch(Z)V

    :cond_1
    return-void
.end method

.method public setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v0, p1

    .line 1081
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 1082
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutPosition(Lcom/taobao/weex/ui/action/GraphicPosition;)V

    .line 1083
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setPaddings(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 1084
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setMargins(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 1085
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setBorders(Lcom/taobao/weex/dom/CSSShorthand;)V

    .line 1087
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/WXComponent;->isLayoutRTL()Z

    move-result v1

    .line 1088
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setIsLayoutRTL(Z)V

    .line 1089
    iget-boolean v2, v0, Lcom/taobao/weex/ui/component/WXComponent;->isLastLayoutDirectionRTL:Z

    if-eq v1, v2, :cond_0

    .line 1090
    iput-boolean v1, v0, Lcom/taobao/weex/ui/component/WXComponent;->isLastLayoutDirectionRTL:Z

    .line 1091
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->layoutDirectionDidChanged(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 1095
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 1096
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->parseAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1103
    :cond_1
    :goto_0
    iget-object v1, v8, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    .line 1106
    :cond_3
    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildrenLayoutTopOffset()I

    move-result v2

    :goto_2
    if-eqz v1, :cond_4

    .line 1108
    new-instance v4, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v4}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    goto :goto_3

    :cond_4
    iget-object v4, v8, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXVContainer;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    :goto_3
    if-eqz v1, :cond_5

    .line 1109
    new-instance v5, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v5}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    goto :goto_4

    :cond_5
    iget-object v5, v8, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXVContainer;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v5

    .line 1111
    :goto_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v6

    float-to-int v6, v6

    .line 1112
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v7

    float-to-int v7, v7

    .line 1118
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1119
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getRenderContainerPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 1120
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/WXSDKInstance;->getRenderContainerPaddingTop()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v5, v9

    float-to-int v5, v5

    add-int/2addr v5, v2

    goto :goto_5

    .line 1122
    :cond_6
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v9

    sget-object v10, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .line 1123
    invoke-virtual {v4, v10}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v10

    sub-float/2addr v9, v10

    sget-object v10, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v10}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-int v9, v9

    .line 1124
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v10

    invoke-virtual {v10}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v10

    sget-object v11, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .line 1125
    invoke-virtual {v4, v11}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    sub-float/2addr v10, v4

    sget-object v4, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v5, v4}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v4

    sub-float/2addr v10, v4

    float-to-int v4, v10

    add-int/2addr v4, v2

    move v5, v4

    move v4, v9

    .line 1128
    :goto_5
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v2

    sget-object v9, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v2, v9}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    float-to-int v9, v2

    .line 1129
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v2

    sget-object v10, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v2, v10}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    float-to-int v10, v2

    .line 1131
    new-instance v11, Landroid/graphics/Point;

    .line 1132
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v2

    float-to-int v2, v2

    .line 1133
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v12

    invoke-virtual {v12}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v12

    float-to-int v12, v12

    invoke-direct {v11, v2, v12}, Landroid/graphics/Point;-><init>(II)V

    .line 1135
    iget v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealWidth:I

    if-ne v2, v6, :cond_7

    iget v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealHeight:I

    if-ne v2, v7, :cond_7

    iget v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealLeft:I

    if-ne v2, v4, :cond_7

    iget v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealRight:I

    if-ne v2, v9, :cond_7

    iget v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mPreRealTop:I

    if-ne v2, v5, :cond_7

    return-void

    .line 1139
    :cond_7
    instance-of v2, v8, Lcom/taobao/weex/ui/component/list/WXCell;

    if-eqz v2, :cond_8

    sget v2, Lcom/taobao/weex/common/WXPerformance;->VIEW_LIMIT_HEIGHT:I

    if-lt v7, v2, :cond_8

    sget v2, Lcom/taobao/weex/common/WXPerformance;->VIEW_LIMIT_WIDTH:I

    if-lt v6, v2, :cond_8

    .line 1140
    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v2

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-string/jumbo v14, "wxCellExceedNum"

    invoke-virtual {v2, v14, v12, v13}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    .line 1141
    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getWXPerformance()Lcom/taobao/weex/common/WXPerformance;

    move-result-object v2

    iget v12, v2, Lcom/taobao/weex/common/WXPerformance;->cellExceedNum:I

    add-int/2addr v12, v3

    iput v12, v2, Lcom/taobao/weex/common/WXPerformance;->cellExceedNum:I

    :cond_8
    if-eqz v1, :cond_9

    const/4 v2, 0x0

    goto :goto_6

    .line 1144
    :cond_9
    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXVContainer;->getAbsoluteY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getCSSLayoutTop()F

    move-result v12

    add-float/2addr v2, v12

    :goto_6
    float-to-int v2, v2

    iput v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    if-eqz v1, :cond_a

    goto :goto_7

    .line 1145
    :cond_a
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getAbsoluteX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getCSSLayoutLeft()F

    move-result v1

    add-float/2addr v0, v1

    :goto_7
    float-to-int v0, v0

    iput v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteX:I

    .line 1147
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v0, :cond_b

    return-void

    .line 1152
    :cond_b
    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_d

    iget v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mAbsoluteY:I

    add-int/2addr v0, v7

    iget-object v1, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKInstance;->getWeexHeight()I

    move-result v1

    add-int/2addr v1, v3

    if-le v0, v1, :cond_d

    .line 1153
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-boolean v0, v0, Lcom/taobao/weex/WXSDKInstance;->mEnd:Z

    if-nez v0, :cond_c

    .line 1154
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onOldFsRenderTimeLogic()V

    .line 1156
    :cond_c
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    iget-boolean v0, v0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    if-nez v0, :cond_d

    .line 1157
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    iput-boolean v3, v0, Lcom/taobao/weex/WXSDKInstance;->isNewFsEnd:Z

    .line 1158
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/performance/WXInstanceApm;->arriveNewFsRenderTime()V

    .line 1162
    :cond_d
    invoke-virtual {p0, v6, v7}, Lcom/taobao/weex/ui/component/WXComponent;->measure(II)Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;

    move-result-object v0

    .line 1163
    iget v1, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->width:I

    .line 1164
    iget v2, v0, Lcom/taobao/weex/ui/component/WXComponent$MeasureOutput;->height:I

    move-object v0, p0

    move v3, v4

    move v4, v5

    move v5, v9

    move v6, v10

    move-object v7, v11

    .line 1166
    invoke-direct/range {v0 .. v7}, Lcom/taobao/weex/ui/component/WXComponent;->setComponentLayoutParams(IIIIIILandroid/graphics/Point;)V

    return-void
.end method

.method public setMarginsSupportRTL(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V
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
            "lp",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 271
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 272
    instance-of p2, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_0

    .line 273
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x33

    .line 274
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    return-void
.end method

.method public setNeedLayoutOnAnimation(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "need"
        }
    .end annotation

    .line 2529
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mNeedLayoutOnAnimation:Z

    return-void
.end method

.method public setOpacity(F)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "opacity"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_3

    .line 2008
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_3

    .line 2009
    invoke-static {}, Lcom/taobao/weex/ui/WXRenderManager;->getOpenGLRenderLimitValue()I

    move-result v0

    .line 2010
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLayerTypeEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2011
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2013
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLayerTypeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXComponent;->shouldCancelHardwareAccelerate()Z

    move-result v1

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v1

    int-to-float v0, v0

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_1

    .line 2014
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 2015
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2017
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method public setPadding(Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "padding",
            "border"
        }
    .end annotation

    .line 322
    sget-object v0, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v0}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p2, v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 323
    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v1}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p2, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 324
    sget-object v2, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v2}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v2

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p2, v3}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 325
    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p1, v3}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p1

    sget-object v3, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {p2, v3}, Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;->get(Ljava/lang/Enum;)F

    move-result p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 326
    instance-of p2, p0, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz p2, :cond_0

    move-object p2, p0

    check-cast p2, Lcom/taobao/weex/ui/flat/FlatComponent;

    const/4 v3, 0x1

    invoke-interface {p2, v3}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 327
    invoke-interface {p2}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object p2

    invoke-interface {p2, v0, v1, v2, p1}, Lcom/taobao/weex/ui/flat/widget/Widget;->setContentBox(IIII)V

    goto :goto_0

    .line 328
    :cond_0
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz p2, :cond_3

    .line 329
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    if-eqz p2, :cond_2

    .line 330
    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalLeft()I

    move-result p2

    if-lez p2, :cond_1

    .line 331
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalLeft()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    add-int/2addr v2, p2

    .line 335
    :cond_1
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalTop()I

    move-result p2

    if-lez p2, :cond_2

    .line 336
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    invoke-virtual {p2}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalTop()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v1, p2

    add-int/2addr p1, p2

    .line 341
    :cond_2
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setPreventGesture(Z)V
    .locals 0
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "preventGesture"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 2893
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->isPreventGesture:Z

    const-string p1, "preventGesture"

    .line 2894
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "param"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_44

    .line 829
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 832
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "marginLeft"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x39

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v2, "visibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x38

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "justifyContent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x37

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "alignSelf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x36

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "flexWrap"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x35

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "borderRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x34

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "backgroundImage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x33

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "backgroundColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x32

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "marginRight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x31

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "position"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x30

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "fixedSize"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x2f

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "boxShadow"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x2e

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "borderWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x2d

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "borderStyle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x2c

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "borderColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x2b

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "preventMoveEvent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x2a

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "paddingRight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x29

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "borderBottomRightRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x28

    goto/16 :goto_0

    :sswitch_12
    const-string v2, "borderBottomLeftRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x27

    goto/16 :goto_0

    :sswitch_13
    const-string v2, "maxWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_14
    const-string v2, "borderTopRightRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_15
    const-string v2, "disabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_16
    const-string v2, "paddingBottom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_17
    const-string/jumbo v2, "width"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_18
    const-string v2, "right"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_19
    const-string v2, "paddingTop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_1a
    const-string v2, "role"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_1b
    const-string v2, "left"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_1c
    const-string v2, "flex"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_1d
    const-string v2, "top"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_1e
    const-string v2, "minHeight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_1f
    const-string v2, "borderLeftWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_20
    const-string v2, "borderLeftStyle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_21
    const-string v2, "borderLeftColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_22
    const-string v2, "marginBottom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_23
    const-string v2, "padding"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_24
    const-string v2, "ariaLabel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_25
    const-string v2, "maxHeight"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_26
    const-string v2, "flexDirection"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_27
    const-string v2, "marginTop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_28
    const-string v2, "alignItems"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_29
    const-string v2, "margin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_2a
    const-string v2, "ariaHidden"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_2b
    const-string v2, "height"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_2c
    const-string v2, "borderTopLeftRadius"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_2d
    const-string v2, "opacity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_2e
    const-string v2, "borderBottomWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_2f
    const-string v2, "borderBottomStyle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_30
    const-string v2, "borderBottomColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_31
    const-string v2, "minWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_32
    const-string v2, "bottom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    goto :goto_0

    :cond_33
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_33
    const-string v2, "borderTopWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    goto :goto_0

    :cond_34
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_34
    const-string v2, "borderTopStyle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    goto :goto_0

    :cond_35
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_35
    const-string v2, "borderTopColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_0

    :cond_36
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_36
    const-string v2, "paddingLeft"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    goto :goto_0

    :cond_37
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_37
    const-string v2, "borderRightWidth"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_0

    :cond_38
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_38
    const-string v2, "borderRightStyle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_0

    :cond_39
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_39
    const-string v2, "borderRightColor"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_0

    :cond_3a
    const/4 v1, 0x0

    :goto_0
    const-string v2, ""

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    return v3

    .line 894
    :pswitch_0
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 896
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setVisibility(Ljava/lang/String;)V

    :cond_3b
    return v0

    .line 856
    :pswitch_1
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 857
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz p2, :cond_3c

    .line 858
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setBackgroundImage(Ljava/lang/String;)V

    :cond_3c
    return v0

    .line 851
    :pswitch_2
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 853
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setBackgroundColor(Ljava/lang/String;)V

    :cond_3d
    return v0

    .line 846
    :pswitch_3
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 848
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setSticky(Ljava/lang/String;)V

    :cond_3e
    return v0

    :pswitch_4
    const-string p1, "m"

    .line 904
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 905
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setFixedSize(Ljava/lang/String;)V

    return v0

    .line 949
    :pswitch_5
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 953
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return v0

    .line 834
    :pswitch_6
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mGesture:Lcom/taobao/weex/ui/view/gesture/WXGesture;

    if-eqz p1, :cond_3f

    .line 835
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/taobao/weex/ui/view/gesture/WXGesture;->setPreventMoveEvent(Z)V

    :cond_3f
    return v0

    .line 839
    :pswitch_7
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 841
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setDisabled(Z)V

    .line 842
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, ":disabled"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setPseudoClassStatus(Ljava/lang/String;Z)V

    :cond_40
    return v0

    .line 957
    :pswitch_8
    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setRole(Ljava/lang/String;)V

    return v0

    .line 908
    :pswitch_9
    invoke-static {p2, v2}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 909
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setAriaLabel(Ljava/lang/String;)V

    return v0

    .line 912
    :pswitch_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 913
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setAriaHidden(Z)V

    return v0

    .line 871
    :pswitch_b
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_41

    .line 873
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderRadius(Ljava/lang/String;F)V

    :cond_41
    return v0

    :pswitch_c
    const/high16 p1, 0x3f800000    # 1.0f

    .line 862
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 864
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setOpacity(F)V

    :cond_42
    :pswitch_d
    return v0

    .line 880
    :pswitch_e
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 882
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderStyle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return v0

    .line 889
    :pswitch_f
    invoke-static {p2, v4}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_44

    .line 891
    invoke-virtual {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setBorderColor(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7696880d -> :sswitch_39
        -0x75b299bf -> :sswitch_38
        -0x757f89aa -> :sswitch_37
        -0x597a2048 -> :sswitch_36
        -0x57ab08a6 -> :sswitch_35
        -0x56c71a58 -> :sswitch_34
        -0x56940a43 -> :sswitch_33
        -0x527265d5 -> :sswitch_32
        -0x5201456c -> :sswitch_31
        -0x4e0397d4 -> :sswitch_30
        -0x4d1fa986 -> :sswitch_2f
        -0x4cec9971 -> :sswitch_2e
        -0x4b8807f5 -> :sswitch_2d
        -0x4932ce1e -> :sswitch_2c
        -0x48c76ed9 -> :sswitch_2b
        -0x42474fed -> :sswitch_2a
        -0x40737a52 -> :sswitch_29
        -0x3f600445 -> :sswitch_28
        -0x3e464339 -> :sswitch_27
        -0x3a1ff07a -> :sswitch_26
        -0x36017855 -> :sswitch_25
        -0x337b0495 -> :sswitch_24
        -0x300fc3ef -> :sswitch_23
        -0x113c6e87 -> :sswitch_22
        -0xe70d730 -> :sswitch_21
        -0xd8ce8e2 -> :sswitch_20
        -0xd59d8cd -> :sswitch_1f
        -0x7f661e7 -> :sswitch_1e
        0x1c155 -> :sswitch_1d
        0x2ffff9 -> :sswitch_1c
        0x32a007 -> :sswitch_1b
        0x358076 -> :sswitch_1a
        0x55f4784 -> :sswitch_19
        0x677c21c -> :sswitch_18
        0x6be2dc6 -> :sswitch_17
        0xc0fb19c -> :sswitch_16
        0x10263a7c -> :sswitch_15
        0x13dfc885 -> :sswitch_14
        0x17dd56c2 -> :sswitch_13
        0x22a57450 -> :sswitch_12
        0x230fd3d7 -> :sswitch_11
        0x2a8c788b -> :sswitch_10
        0x2ac25e51 -> :sswitch_f
        0x2b158697 -> :sswitch_e
        0x2bf974e5 -> :sswitch_d
        0x2c2c84fa -> :sswitch_c
        0x2c4a1ecb -> :sswitch_b
        0x2c8d6195 -> :sswitch_a
        0x2c929929 -> :sswitch_9
        0x3a1ea90e -> :sswitch_8
        0x4cb7f6d5 -> :sswitch_7
        0x4d0b70cd -> :sswitch_6
        0x506afbde -> :sswitch_5
        0x67f69fe3 -> :sswitch_4
        0x6953cff1 -> :sswitch_3
        0x6ee75fc9 -> :sswitch_2
        0x73b66312 -> :sswitch_1
        0x757a12d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_9
        :pswitch_d
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_8
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_7
        :pswitch_b
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_6
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_d
        :pswitch_2
        :pswitch_1
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method protected setPseudoClassStatus(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "clzName",
            "status"
        }
    .end annotation

    .line 2449
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    .line 2450
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->getPesudoStyles()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2452
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 2455
    :cond_0
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPesudoStatus:Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

    if-nez v2, :cond_1

    .line 2456
    new-instance v2, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

    invoke-direct {v2}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;-><init>()V

    iput-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPesudoStatus:Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

    .line 2458
    :cond_1
    iget-object v2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPesudoStatus:Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;

    .line 2462
    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v3

    .line 2458
    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/taobao/weex/ui/component/pesudo/PesudoStatus;->updateStatusAndGetUpdateStyles(Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 2466
    new-instance p2, Lcom/taobao/weex/ui/action/GraphicSize;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v2

    invoke-direct {p2, v1, v2}, Lcom/taobao/weex/ui/action/GraphicSize;-><init>(FF)V

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

    .line 2467
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    const-string/jumbo v1, "width"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2468
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object p2

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "width:active"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/taobao/weex/ui/action/GraphicSize;->setWidth(F)V

    goto :goto_0

    .line 2469
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    const-string v1, "height"

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2470
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object p2

    invoke-virtual {v0}, Lcom/taobao/weex/dom/WXStyle;->getPesudoResetStyles()Ljava/util/Map;

    move-result-object v0

    const-string v1, "height:active"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->parseFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewPortWidthForFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/taobao/weex/ui/action/GraphicSize;->setHeight(F)V

    goto :goto_0

    .line 2473
    :cond_3
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXComponent;->mPseudoResetGraphicSize:Lcom/taobao/weex/ui/action/GraphicSize;

    if-eqz p2, :cond_4

    .line 2474
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setLayoutSize(Lcom/taobao/weex/ui/action/GraphicSize;)V

    .line 2479
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateStyleByPesudo(Ljava/util/Map;)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected setRole(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roleKey"
        }
    .end annotation

    .line 1551
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1553
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1554
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/WXSDKManager;->getAccessibilityRoleAdapter()Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1556
    invoke-interface {v1, p1}, Lcom/taobao/weex/adapter/IWXAccessibilityRoleAdapter;->getRole(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1559
    :cond_0
    new-instance v1, Lcom/taobao/weex/ui/component/WXComponent$5;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/ui/component/WXComponent$5;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Ljava/lang/String;)V

    .line 1570
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_1
    return-void
.end method

.method public setSafeLayout(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .line 1069
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1070
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1071
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1074
    :cond_0
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSticky(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sticky"
        }
    .end annotation

    .line 1905
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "sticky"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1906
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1908
    invoke-interface {p1, p0}, Lcom/taobao/weex/ui/component/Scrollable;->bindStickStyle(Lcom/taobao/weex/ui/component/WXComponent;)V

    :cond_0
    return-void
.end method

.method public setStickyOffset(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stickyOffset"
        }
    .end annotation

    .line 2513
    iput p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mStickyOffset:I

    return-void
.end method

.method public setTransition(Lcom/taobao/weex/dom/transition/WXTransition;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transition"
        }
    .end annotation

    .line 2670
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mTransition:Lcom/taobao/weex/dom/transition/WXTransition;

    return-void
.end method

.method public setUsing(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "using"
        }
    .end annotation

    .line 2353
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->isUsing:Z

    return-void
.end method

.method public setVisibility(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 2164
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRealView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "visible"

    .line 2165
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 2166
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string v1, "hidden"

    .line 2167
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 2168
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setWaste(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "waste"
        }
    .end annotation

    .line 2614
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->waste:Z

    if-eq v0, p1, :cond_5

    .line 2615
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->waste:Z

    .line 2616
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getComponentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recycle-list"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2617
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeRenderObjectChildWaste(JZ)V

    :cond_0
    const-string/jumbo v0, "visibility"

    if-eqz p1, :cond_2

    .line 2622
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    const-string v1, "hidden"

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2624
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2625
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    .line 2626
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->lazy(Z)V

    goto :goto_0

    .line 2629
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2632
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object p1

    const-string/jumbo v1, "visible"

    invoke-virtual {p1, v0, v1}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2633
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2634
    iget-boolean p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mLazy:Z

    if-eqz p1, :cond_5

    .line 2635
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVContainer;->isLazy()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2636
    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->lazy(Z)V

    goto :goto_0

    .line 2638
    :cond_3
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-static {p0, p1}, Lcom/taobao/weex/ui/component/binding/Statements;->initLazyComponent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)V

    goto :goto_0

    .line 2642
    :cond_4
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public updateActivePseudo(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isSet"
        }
    .end annotation

    .line 2440
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ":active"

    .line 2441
    invoke-virtual {p0, v0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->setPseudoClassStatus(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public updateAttrs(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p1}, Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;->getAttrs()Lio/dcloud/feature/uniapp/dom/AbsAttr;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public updateAttrs(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
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

    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected updateBoxShadow(IIZ)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "isRender"
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v0, p1

    move/from16 v1, p2

    .line 1323
    invoke-static {}, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->isBoxShadowEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    iget v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mElevation:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v2

    const-string v4, "elevation"

    invoke-virtual {v2, v4}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_a

    .line 1330
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 1331
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v2

    const-string v4, "boxShadow"

    invoke-virtual {v2, v4}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1332
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    const-string v5, "shadowQuality"

    invoke-virtual {v4, v5}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-lez v0, :cond_14

    if-gtz v1, :cond_2

    goto/16 :goto_8

    :cond_2
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1341
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 1342
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidthWithFloat()F

    move-result v4

    const/16 v6, 0x8

    new-array v7, v6, [F

    .line 1344
    fill-array-data v7, :array_0

    .line 1345
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v9, :cond_3

    const-string v14, "borderTopLeftRadius"

    .line 1347
    invoke-virtual {v9, v14}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 1348
    invoke-static {v14, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v15

    aput v15, v7, v13

    .line 1349
    invoke-static {v14, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v14

    aput v14, v7, v12

    const-string v14, "borderTopRightRadius"

    .line 1351
    invoke-virtual {v9, v14}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    .line 1352
    invoke-static {v14, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v15

    aput v15, v7, v11

    .line 1353
    invoke-static {v14, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v14

    aput v14, v7, v10

    const-string v14, "borderBottomRightRadius"

    .line 1355
    invoke-virtual {v9, v14}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/4 v15, 0x4

    .line 1356
    invoke-static {v14, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v16

    aput v16, v7, v15

    const/4 v15, 0x5

    .line 1357
    invoke-static {v14, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v14

    aput v14, v7, v15

    const-string v14, "borderBottomLeftRadius"

    .line 1359
    invoke-virtual {v9, v14}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    const/4 v15, 0x6

    .line 1360
    invoke-static {v14, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v16

    aput v16, v7, v15

    const/4 v15, 0x7

    .line 1361
    invoke-static {v14, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v14

    aput v14, v7, v15

    const-string v14, "borderRadius"

    .line 1363
    invoke-virtual {v9, v14}, Lcom/taobao/weex/dom/WXStyle;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1364
    invoke-virtual {v9, v14}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_3

    .line 1366
    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXViewUtils;->getRealSubPxByWidth(FF)F

    move-result v14

    aput v14, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1371
    :cond_3
    iget-object v3, v8, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v0, v1, v7}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->equalsUniBoxShadowData(Ljava/lang/String;II[F)Z

    move-result v3

    if-eqz v3, :cond_4

    return-void

    .line 1374
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    move/from16 v1, p2

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->parseBoxShadow(IILjava/lang/String;[FFF)Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    move-result-object v9

    if-nez v9, :cond_5

    return-void

    .line 1378
    :cond_5
    iput-object v9, v8, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    .line 1379
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v9, v0}, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->getNormalBoxShadowDrawable(Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;Landroid/content/res/Resources;)Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    move-result-object v14

    .line 1380
    invoke-static {v9}, Lio/dcloud/feature/uniapp/utils/UniBoxShadowUtil;->getInsetBoxShadowDrawable(Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;)Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    move-result-object v15

    if-nez v14, :cond_6

    if-eqz v15, :cond_16

    :cond_6
    if-eqz v14, :cond_d

    if-eqz v9, :cond_d

    if-eqz p3, :cond_d

    .line 1383
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 1384
    invoke-virtual {v9}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalMaxWidth()I

    move-result v2

    invoke-virtual {v9}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalMaxHeight()I

    move-result v3

    .line 1385
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_8

    .line 1386
    new-instance v1, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v1}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    goto :goto_2

    :cond_8
    iget-object v1, v8, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    :goto_2
    if-eqz v0, :cond_9

    .line 1387
    new-instance v4, Lcom/taobao/weex/dom/CSSShorthand;

    invoke-direct {v4}, Lcom/taobao/weex/dom/CSSShorthand;-><init>()V

    goto :goto_3

    :cond_9
    iget-object v4, v8, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v4}, Lcom/taobao/weex/ui/component/WXVContainer;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v4

    :goto_3
    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_4

    .line 1388
    :cond_a
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mParent:Lcom/taobao/weex/ui/component/WXVContainer;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildrenLayoutTopOffset()I

    move-result v0

    .line 1392
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1393
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/WXSDKInstance;->getRenderContainerPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getRenderContainerPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v4, v0

    goto :goto_5

    .line 1396
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v5

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .line 1397
    invoke-virtual {v1, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v6

    sub-float/2addr v5, v6

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 1398
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v6

    invoke-virtual {v6}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v6

    sget-object v7, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    .line 1399
    invoke-virtual {v1, v7}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    sub-float/2addr v6, v1

    sget-object v1, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v4, v1}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v1

    sub-float/2addr v6, v1

    float-to-int v1, v6

    add-int v4, v1, v0

    move v1, v5

    .line 1402
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    sget-object v5, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v5}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    float-to-int v5, v0

    .line 1403
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    sget-object v6, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual {v0, v6}, Lcom/taobao/weex/dom/CSSShorthand;->get(Ljava/lang/Enum;)F

    move-result v0

    float-to-int v7, v0

    .line 1405
    invoke-virtual {v9}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalLeft()I

    move-result v0

    div-int/2addr v0, v11

    sub-int v6, v1, v0

    .line 1406
    invoke-virtual {v9}, Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;->getNormalTop()I

    move-result v0

    div-int/2addr v0, v11

    sub-int v16, v4, v0

    .line 1408
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1409
    iget-object v1, v8, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    move-object/from16 v0, p0

    move v4, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/taobao/weex/ui/component/WXComponent;->setFixedHostLayoutParams(Landroid/view/View;IIIIII)V

    goto :goto_6

    .line 1411
    :cond_c
    iget-object v1, v8, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    move-object/from16 v0, p0

    move v4, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/ui/component/WXComponent;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    .line 1413
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBorder()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setPadding(Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;Lio/dcloud/feature/uniapp/dom/AbsCSSShorthand;)V

    .line 1415
    :cond_d
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz v0, :cond_13

    .line 1416
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->clearBoxShadow()V

    .line 1418
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_10

    if-eqz v14, :cond_e

    .line 1420
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v11, [Landroid/graphics/drawable/Drawable;

    aput-object v14, v1, v13

    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v2, v1, v12

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_e
    if-eqz v15, :cond_f

    .line 1422
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v11, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v2, v1, v13

    aput-object v15, v1, v12

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1424
    :cond_f
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v12, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v2, v1, v13

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_10
    if-eqz v14, :cond_11

    .line 1428
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v10, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v13

    aput-object v14, v1, v12

    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v2, v1, v11

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_11
    if-eqz v15, :cond_12

    .line 1430
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v10, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v13

    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v2, v1, v12

    aput-object v15, v1, v11

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1432
    :cond_12
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v1, v11, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mRippleBackground:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v13

    iget-object v2, v8, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    aput-object v2, v1, v12

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1435
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0, v8}, Lcom/taobao/weex/utils/WXViewUtils;->setBackGround(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 1436
    iput-object v9, v8, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    .line 1437
    iput-object v14, v8, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    .line 1438
    iput-object v15, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    .line 1439
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-virtual {v0, v9}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateBoxShadowData(Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;)V

    goto :goto_9

    .line 1441
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->clearBoxShadow()V

    .line 1442
    iput-object v9, v8, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    .line 1443
    iput-object v14, v8, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniNormalBoxShadowDrawable;

    .line 1444
    iput-object v15, v8, Lcom/taobao/weex/ui/component/WXComponent;->mInsetBoxShadowDrawable:Lio/dcloud/feature/uniapp/ui/shadow/UniInsetBoxShadowLayer;

    .line 1445
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getOrCreateBorder()Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->updateBoxShadowData(Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;)V

    goto :goto_9

    :cond_14
    :goto_8
    return-void

    :cond_15
    const-string v0, "Can not resolve styles"

    .line 1450
    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;)V

    :cond_16
    :goto_9
    return-void

    :cond_17
    :goto_a
    const-string v0, "BoxShadow"

    const-string v1, "box-shadow disabled"

    .line 1324
    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    iget-object v0, v8, Lcom/taobao/weex/ui/component/WXComponent;->mBoxShadowData:Lio/dcloud/feature/uniapp/ui/shadow/UniBoxShadowData;

    if-eqz v0, :cond_18

    .line 1326
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->clearBoxShadow()V

    :cond_18
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public updateDemission(FFFFFF)V
    .locals 1
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
            "top",
            "bottom",
            "left",
            "right",
            "height",
            "width"
        }
    .end annotation

    .line 754
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/action/GraphicPosition;->update(FFFF)V

    .line 755
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object p1

    invoke-virtual {p1, p6, p5}, Lcom/taobao/weex/ui/action/GraphicSize;->update(FF)V

    return-void
.end method

.method public updateNativeAttr(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
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

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 2746
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/WXAttr;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2747
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeUpdateRenderObjectAttr(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateNativeStyle(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
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

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 2773
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/weex/dom/WXStyle;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2774
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeUpdateRenderObjectStyle(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateNativeStyles(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dynamic"
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

    .line 2778
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 2782
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2783
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2784
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2785
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2788
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateNativeStyle(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateProperties(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "props"
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_9

    .line 773
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHost:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isVirtualComponent()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 777
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 778
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 779
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    .line 780
    invoke-static {v0, v3}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_3

    .line 783
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_NULL_KEY:Lcom/taobao/weex/common/WXErrorCode;

    sget-object v2, Lcom/taobao/weex/common/WXErrorCode;->WX_RENDER_ERR_NULL_KEY:Lcom/taobao/weex/common/WXErrorCode;

    .line 785
    invoke-virtual {v2}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    const-string v4, "updateProperties"

    .line 783
    invoke-static {v0, v1, v4, v2, v3}, Lcom/taobao/weex/utils/WXExceptionUtils;->commitCriticalExceptionRT(Ljava/lang/String;Lcom/taobao/weex/common/WXErrorCode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 787
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 788
    invoke-virtual {p0, v2, v4}, Lcom/taobao/weex/ui/component/WXComponent;->convertEmptyProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 790
    :cond_4
    invoke-virtual {p0, v2, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 791
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_1

    .line 794
    :cond_5
    iget-object v3, p0, Lcom/taobao/weex/ui/component/WXComponent;->mHolder:Lcom/taobao/weex/ui/IFComponentHolder;

    invoke-interface {v3, v2}, Lcom/taobao/weex/ui/IFComponentHolder;->getPropertyInvoker(Ljava/lang/String;)Lcom/taobao/weex/bridge/Invoker;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 797
    :try_start_0
    invoke-interface {v2}, Lcom/taobao/weex/bridge/Invoker;->getParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 798
    array-length v4, v3

    if-eq v4, v1, :cond_6

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WXComponent] setX method only one parameter\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    return-void

    :cond_6
    const/4 v4, 0x0

    .line 802
    aget-object v3, v3, v4

    invoke-static {v3, v0}, Lcom/taobao/weex/utils/WXReflectionUtils;->parseArgument(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    .line 803
    invoke-interface {v2, p0, v1}, Lcom/taobao/weex/bridge/Invoker;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WXComponent] updateProperties :class:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "method:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :goto_1
    return-void

    .line 811
    :cond_8
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->readyToRender()V

    .line 812
    instance-of p1, p0, Lcom/taobao/weex/ui/flat/FlatComponent;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    if-eqz p1, :cond_9

    .line 813
    move-object p1, p0

    check-cast p1, Lcom/taobao/weex/ui/flat/FlatComponent;

    .line 814
    invoke-interface {p1, v1}, Lcom/taobao/weex/ui/flat/FlatComponent;->promoteToView(Z)Z

    move-result v0

    if-nez v0, :cond_9

    .line 815
    invoke-interface {p1}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object v0

    instance-of v0, v0, Lcom/taobao/weex/ui/flat/widget/AndroidViewWidget;

    if-nez v0, :cond_9

    .line 816
    invoke-interface {p1}, Lcom/taobao/weex/ui/flat/FlatComponent;->getOrCreateFlatWidget()Lcom/taobao/weex/ui/flat/widget/Widget;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXComponent;->mBackgroundDrawable:Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-interface {p1, v0}, Lcom/taobao/weex/ui/flat/widget/Widget;->setBackgroundAndBorder(Lcom/taobao/weex/ui/view/border/BorderDrawable;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public updateStyles(Lcom/taobao/weex/ui/component/WXComponent;)V
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

    .line 280
    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 281
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->applyBorder(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    :cond_0
    return-void
.end method

.method public updateStyles(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "styles"
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

    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 288
    invoke-direct {p0, p0}, Lcom/taobao/weex/ui/component/WXComponent;->applyBorder(Lio/dcloud/feature/uniapp/ui/component/AbsBasicComponent;)V

    :cond_0
    return-void
.end method

.method public useFeature()Z
    .locals 2

    .line 2077
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
