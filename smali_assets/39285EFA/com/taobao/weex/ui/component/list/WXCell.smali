.class public Lcom/taobao/weex/ui/component/list/WXCell;
.super Lcom/taobao/weex/ui/flat/WidgetContainer;
.source "WXCell.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;,
        Lcom/taobao/weex/ui/component/list/WXCell$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/flat/WidgetContainer<",
        "Lcom/taobao/weex/ui/view/WXFrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private cellAppendTreeListener:Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;

.field private isAppendTreeDone:Z

.field private isSourceUsed:Z

.field private mFlatUIEnabled:Z

.field private mHeadView:Landroid/view/View;

.field private mLastLocationY:I

.field private mRealView:Landroid/view/ViewGroup;

.field private mScrollPosition:I

.field private mTempStickyView:Landroid/view/View;

.field private renderData:Ljava/lang/Object;


# direct methods
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

    .line 88
    invoke-direct {p0, p1, p2, p5}, Lcom/taobao/weex/ui/flat/WidgetContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mLastLocationY:I

    const/4 p2, -0x1

    .line 65
    iput p2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mScrollPosition:I

    .line 66
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mFlatUIEnabled:Z

    .line 71
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isSourceUsed:Z

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 1
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

    const-string p3, "flat"

    .line 92
    invoke-direct {p0, p1, p2, p4}, Lcom/taobao/weex/ui/flat/WidgetContainer;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p2, 0x0

    .line 59
    iput p2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mLastLocationY:I

    const/4 p4, -0x1

    .line 65
    iput p4, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mScrollPosition:I

    .line 66
    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mFlatUIEnabled:Z

    .line 71
    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isSourceUsed:Z

    const/4 p4, 0x1

    .line 93
    invoke-virtual {p0, p4}, Lcom/taobao/weex/ui/component/list/WXCell;->lazy(Z)V

    .line 94
    new-instance p4, Lcom/taobao/weex/ui/component/list/WXCell$1;

    invoke-direct {p4, p0}, Lcom/taobao/weex/ui/component/list/WXCell$1;-><init>(Lcom/taobao/weex/ui/component/list/WXCell;)V

    invoke-virtual {p0, p4}, Lcom/taobao/weex/ui/component/list/WXCell;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    .line 112
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p4, v0, :cond_0

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p4

    .line 116
    invoke-virtual {p4, p3}, Lcom/taobao/weex/dom/WXAttr;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p4, p3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mFlatUIEnabled:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 120
    invoke-static {p2}, Lcom/taobao/weex/utils/WXLogUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Cell"

    invoke-static {p3, p2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->canRecycled()Z

    move-result p2

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    if-nez p2, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p2

    const-string/jumbo v0, "wxCellDataUnRecycleCount"

    invoke-virtual {p2, v0, p3, p4}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/weex/dom/WXAttr;->getScope()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 127
    invoke-virtual {p1}, Lcom/taobao/weex/WXSDKInstance;->getApmForInstance()Lcom/taobao/weex/performance/WXInstanceApm;

    move-result-object p1

    const-string/jumbo p2, "wxCellUnReUseCount"

    invoke-virtual {p1, p2, p3, p4}, Lcom/taobao/weex/performance/WXInstanceApm;->updateDiffStats(Ljava/lang/String;D)V

    :cond_2
    return-void
.end method


# virtual methods
.method public appendTreeCreateFinish()V
    .locals 1

    .line 281
    invoke-super {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->appendTreeCreateFinish()V

    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isAppendTreeDone:Z

    .line 283
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->cellAppendTreeListener:Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;

    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v0}, Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;->onAppendTreeDone()V

    :cond_0
    return-void
.end method

.method public createViewImpl()V
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 305
    :cond_0
    invoke-super {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->createViewImpl()V

    return-void
.end method

.method public getLocationFromStart()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mLastLocationY:I

    return v0
.end method

.method public bridge synthetic getRealView()Landroid/view/View;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getRealView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRealView()Landroid/view/ViewGroup;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mRealView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRenderData()Ljava/lang/Object;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->renderData:Ljava/lang/Object;

    return-object v0
.end method

.method public getScrollPositon()I
    .locals 1

    .line 179
    iget v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mScrollPosition:I

    return v0
.end method

.method public getStickyOffset()I
    .locals 2

    .line 251
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    const-string v1, "stickyOffset"

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXUtils;->getFloat(Ljava/lang/Object;)F

    move-result v0

    .line 255
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getViewPortWidthForFloat()F

    move-result v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXViewUtils;->getRealPxByWidth(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "context"
        }
    .end annotation

    .line 55
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/list/WXCell;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isSticky()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/taobao/weex/ui/component/WXHeader;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXFrameLayout;-><init>(Landroid/content/Context;)V

    .line 158
    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mRealView:Landroid/view/ViewGroup;

    .line 159
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isFlatUIEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-object v0

    .line 148
    :cond_2
    :goto_0
    new-instance v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXFrameLayout;-><init>(Landroid/content/Context;)V

    .line 149
    new-instance v3, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-direct {v3, p1}, Lcom/taobao/weex/ui/view/WXFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mRealView:Landroid/view/ViewGroup;

    .line 150
    invoke-virtual {v0, v3}, Lcom/taobao/weex/ui/view/WXFrameLayout;->addView(Landroid/view/View;)V

    .line 152
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isFlatUIEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 153
    invoke-virtual {v0, v2, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    return-object v0
.end method

.method public intendToBeFlatContainer()Z
    .locals 2

    .line 247
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->getFlatUIContext()Lcom/taobao/weex/ui/flat/FlatGUIContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/weex/ui/flat/FlatGUIContext;->isFlatUIEnabled(Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/taobao/weex/ui/component/list/WXCell;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isSticky()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAppendTreeDone()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isAppendTreeDone:Z

    return v0
.end method

.method public isFlatUIEnabled()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mFlatUIEnabled:Z

    return v0
.end method

.method public isLazy()Z
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/taobao/weex/ui/flat/WidgetContainer;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->isFixed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSourceUsed()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isSourceUsed:Z

    return v0
.end method

.method protected mountFlatGUI()V
    .locals 2

    .line 230
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->widgets:Ljava/util/List;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->widgets:Ljava/util/List;

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->widgets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->mountFlatGUI(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public recoverySticky()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 209
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 211
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-lez v2, :cond_0

    .line 212
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mTempStickyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->removeView(Landroid/view/View;)V

    .line 222
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->addView(Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 224
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    return-void
.end method

.method public removeSticky()V
    .locals 5

    .line 188
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    const/4 v0, 0x2

    new-array v2, v0, [I

    new-array v0, v0, [I

    .line 192
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual {v3, v2}, Lcom/taobao/weex/ui/view/WXFrameLayout;->getLocationOnScreen([I)V

    .line 193
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getParentScroller()Lcom/taobao/weex/ui/component/Scrollable;

    move-result-object v3

    invoke-interface {v3}, Lcom/taobao/weex/ui/component/Scrollable;->getView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 194
    aget v2, v2, v1

    aget v0, v0, v1

    sub-int/2addr v2, v0

    .line 195
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getHostView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 196
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v3, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/taobao/weex/ui/view/WXFrameLayout;->removeView(Landroid/view/View;)V

    .line 197
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mRealView:Landroid/view/ViewGroup;

    .line 198
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mTempStickyView:Landroid/view/View;

    .line 199
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getLayoutWidth()F

    move-result v3

    float-to-int v3, v3

    .line 200
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getLayoutHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 201
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/taobao/weex/ui/view/WXFrameLayout;

    iget-object v4, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mTempStickyView:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Lcom/taobao/weex/ui/view/WXFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 203
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mHeadView:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setCellAppendTreeListener(Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cellAppendTreeListener"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->cellAppendTreeListener:Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;

    .line 290
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isAppendTreeDone:Z

    if-eqz v0, :cond_0

    .line 291
    invoke-interface {p1}, Lcom/taobao/weex/ui/component/list/WXCell$CellAppendTreeListener;->onAppendTreeDone()V

    :cond_0
    return-void
.end method

.method public setLocationFromStart(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 171
    iput p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mLastLocationY:I

    return-void
.end method

.method public setRenderData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderData"
        }
    .end annotation

    .line 263
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->renderData:Ljava/lang/Object;

    return-void
.end method

.method setScrollPositon(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 175
    iput p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->mScrollPosition:I

    return-void
.end method

.method public setSourceUsed(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sourceUsed"
        }
    .end annotation

    .line 271
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/WXCell;->isSourceUsed:Z

    return-void
.end method

.method public unmountFlatGUI()V
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/list/WXCell;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXFrameLayout;->unmountFlatGUI()V

    :cond_0
    return-void
.end method
