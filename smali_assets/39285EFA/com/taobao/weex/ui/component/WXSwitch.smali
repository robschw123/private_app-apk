.class public Lcom/taobao/weex/ui/component/WXSwitch;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "WXSwitch.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Lcom/taobao/weex/ui/view/WXSwitchView;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 46
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/WXSwitch;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
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

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 51
    new-instance p2, Lcom/taobao/weex/ui/component/WXSwitch$1;

    invoke-direct {p2, p0, p1}, Lcom/taobao/weex/ui/component/WXSwitch$1;-><init>(Lcom/taobao/weex/ui/component/WXSwitch;Lcom/taobao/weex/WXSDKInstance;)V

    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/WXSwitch;->setContentBoxMeasurement(Lcom/taobao/weex/layout/ContentBoxMeasurement;)V

    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 95
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->addEvent(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v0, "change"

    .line 96
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSwitch;->getHostView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXSwitch;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-nez p1, :cond_0

    .line 98
    new-instance p1, Lcom/taobao/weex/ui/component/WXSwitch$2;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXSwitch$2;-><init>(Lcom/taobao/weex/ui/component/WXSwitch;)V

    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXSwitch;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSwitch;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXSwitchView;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSwitch;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-void
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

    .line 38
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSwitch;->initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXSwitchView;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Lcom/taobao/weex/ui/view/WXSwitchView;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/taobao/weex/ui/view/WXSwitchView;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXSwitchView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected removeEventFromView(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 118
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->removeEventFromView(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSwitch;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "change"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSwitch;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXSwitchView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "checked"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checked"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSwitch;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXSwitchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/view/WXSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSwitch;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/taobao/weex/ui/view/WXSwitchView;

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXSwitchView;->setChecked(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXSwitch;->getHostView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/weex/ui/view/WXSwitchView;

    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXSwitch;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
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

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 128
    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXSwitch;->setChecked(Z)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
