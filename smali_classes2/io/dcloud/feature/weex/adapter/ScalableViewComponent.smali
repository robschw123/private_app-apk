.class public Lio/dcloud/feature/weex/adapter/ScalableViewComponent;
.super Lcom/taobao/weex/ui/component/WXDiv;
.source "ScalableViewComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/adapter/ScalableViewComponent$Ceator;
    }
.end annotation


# instance fields
.field private isScalable:Z


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
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

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/weex/ui/component/WXDiv;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;->isScalable:Z

    return-void
.end method


# virtual methods
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

    .line 16
    invoke-virtual {p0, p1}, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXFrameLayout;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 26
    new-instance v0, Lio/dcloud/feature/weex/adapter/ScalableView;

    invoke-direct {v0, p1}, Lio/dcloud/feature/weex/adapter/ScalableView;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {v0, p0}, Lio/dcloud/feature/weex/adapter/ScalableView;->holdComponent(Lcom/taobao/weex/ui/component/WXDiv;)V

    return-object v0
.end method

.method public isScalable()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;->isScalable:Z

    return v0
.end method

.method protected bridge synthetic setHostLayoutParams(Landroid/view/View;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
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

    .line 16
    check-cast p1, Lcom/taobao/weex/ui/view/WXFrameLayout;

    invoke-virtual/range {p0 .. p7}, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;->setHostLayoutParams(Lcom/taobao/weex/ui/view/WXFrameLayout;IIIIII)V

    return-void
.end method

.method protected setHostLayoutParams(Lcom/taobao/weex/ui/view/WXFrameLayout;IIIIII)V
    .locals 9
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

    .line 47
    invoke-virtual {p0}, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;->isScalable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 48
    invoke-super/range {v1 .. v8}, Lcom/taobao/weex/ui/component/WXDiv;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/ui/component/WXDiv;->setHostLayoutParams(Landroid/view/View;IIIIII)V

    :goto_0
    return-void
.end method

.method public setScalable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scalable"
        }
    .end annotation

    .line 36
    iput-boolean p1, p0, Lio/dcloud/feature/weex/adapter/ScalableViewComponent;->isScalable:Z

    return-void
.end method
