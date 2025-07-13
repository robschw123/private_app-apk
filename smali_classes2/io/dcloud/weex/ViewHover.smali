.class public Lio/dcloud/weex/ViewHover;
.super Ljava/lang/Object;
.source "ViewHover.java"


# static fields
.field public static final VIEW_HOVER_EVENT:Ljava/lang/String; = "view_hover_event"


# instance fields
.field private component:Lcom/taobao/weex/ui/component/WXComponent;

.field private handler:Landroid/os/Handler;

.field private hoverClass:Lcom/alibaba/fastjson/JSONObject;

.field private hoverStartTime:I

.field private hoverStayTime:I

.field private hoverStopPropagation:Z

.field private isHover:Z

.field private isReceiveTouch:Z

.field private originalStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public touchEndRunnable:Ljava/lang/Runnable;

.field public touchStartRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lio/dcloud/weex/ViewHover;-><init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/ui/component/WXComponent;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "data"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lio/dcloud/weex/ViewHover;->hoverStopPropagation:Z

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lio/dcloud/weex/ViewHover;->hoverClass:Lcom/alibaba/fastjson/JSONObject;

    const/16 v1, 0x32

    .line 35
    iput v1, p0, Lio/dcloud/weex/ViewHover;->hoverStartTime:I

    const/16 v1, 0x190

    .line 36
    iput v1, p0, Lio/dcloud/weex/ViewHover;->hoverStayTime:I

    .line 38
    iput-boolean v0, p0, Lio/dcloud/weex/ViewHover;->isHover:Z

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lio/dcloud/weex/ViewHover;->isReceiveTouch:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/dcloud/weex/ViewHover;->handler:Landroid/os/Handler;

    .line 51
    new-instance v0, Lio/dcloud/weex/ViewHover$1;

    invoke-direct {v0, p0}, Lio/dcloud/weex/ViewHover$1;-><init>(Lio/dcloud/weex/ViewHover;)V

    iput-object v0, p0, Lio/dcloud/weex/ViewHover;->touchStartRunnable:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Lio/dcloud/weex/ViewHover$2;

    invoke-direct {v0, p0}, Lio/dcloud/weex/ViewHover$2;-><init>(Lio/dcloud/weex/ViewHover;)V

    iput-object v0, p0, Lio/dcloud/weex/ViewHover;->touchEndRunnable:Ljava/lang/Runnable;

    .line 47
    invoke-virtual {p0, p2}, Lio/dcloud/weex/ViewHover;->update(Lcom/alibaba/fastjson/JSONObject;)V

    .line 48
    iput-object p1, p0, Lio/dcloud/weex/ViewHover;->component:Lcom/taobao/weex/ui/component/WXComponent;

    return-void
.end method

.method static synthetic access$000(Lio/dcloud/weex/ViewHover;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lio/dcloud/weex/ViewHover;->isHover:Z

    return p0
.end method

.method static synthetic access$002(Lio/dcloud/weex/ViewHover;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lio/dcloud/weex/ViewHover;->isHover:Z

    return p1
.end method

.method static synthetic access$100(Lio/dcloud/weex/ViewHover;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 0

    .line 31
    iget-object p0, p0, Lio/dcloud/weex/ViewHover;->component:Lcom/taobao/weex/ui/component/WXComponent;

    return-object p0
.end method

.method static synthetic access$202(Lio/dcloud/weex/ViewHover;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 31
    iput-object p1, p0, Lio/dcloud/weex/ViewHover;->originalStyles:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lio/dcloud/weex/ViewHover;->component:Lcom/taobao/weex/ui/component/WXComponent;

    .line 166
    iput-object v0, p0, Lio/dcloud/weex/ViewHover;->originalStyles:Ljava/util/Map;

    return-void
.end method

.method public getHoverStartTime()I
    .locals 1

    .line 96
    iget v0, p0, Lio/dcloud/weex/ViewHover;->hoverStartTime:I

    return v0
.end method

.method public getHoverStayTime()I
    .locals 1

    .line 104
    iget v0, p0, Lio/dcloud/weex/ViewHover;->hoverStayTime:I

    return v0
.end method

.method public handleMotionEvent(Lcom/taobao/weex/ui/view/gesture/WXGestureType;Landroid/view/MotionEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wxGestureType",
            "motionEvent"
        }
    .end annotation

    .line 112
    iget-object p2, p0, Lio/dcloud/weex/ViewHover;->hoverClass:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lio/dcloud/weex/ViewHover;->isReceiveTouch:Z

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 115
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "touchcancel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "touchend"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "touchstart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 132
    :pswitch_0
    iput-boolean v1, p0, Lio/dcloud/weex/ViewHover;->isHover:Z

    .line 133
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/dcloud/weex/ViewHover;->touchEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/dcloud/weex/ViewHover;->touchEndRunnable:Ljava/lang/Runnable;

    iget v0, p0, Lio/dcloud/weex/ViewHover;->hoverStayTime:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 126
    :pswitch_1
    iput-boolean v1, p0, Lio/dcloud/weex/ViewHover;->isHover:Z

    .line 127
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/dcloud/weex/ViewHover;->touchEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/dcloud/weex/ViewHover;->touchEndRunnable:Ljava/lang/Runnable;

    iget v0, p0, Lio/dcloud/weex/ViewHover;->hoverStayTime:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 117
    :pswitch_2
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/dcloud/weex/ViewHover;->touchEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 118
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/dcloud/weex/ViewHover;->touchStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lio/dcloud/weex/ViewHover;->touchStartRunnable:Ljava/lang/Runnable;

    iget v0, p0, Lio/dcloud/weex/ViewHover;->hoverStartTime:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5e176b7d -> :sswitch_2
        -0x30d912c4 -> :sswitch_1
        0x7ed66279 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isHoverStopPropagation()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lio/dcloud/weex/ViewHover;->hoverStopPropagation:Z

    return v0
.end method

.method public setHoverStartTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hoverStartTime"
        }
    .end annotation

    .line 100
    iput p1, p0, Lio/dcloud/weex/ViewHover;->hoverStartTime:I

    return-void
.end method

.method public setHoverStayTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hoverStayTime"
        }
    .end annotation

    .line 108
    iput p1, p0, Lio/dcloud/weex/ViewHover;->hoverStayTime:I

    return-void
.end method

.method public setHoverStopPropagation(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hoverStopPropagation"
        }
    .end annotation

    .line 92
    iput-boolean p1, p0, Lio/dcloud/weex/ViewHover;->hoverStopPropagation:Z

    return-void
.end method

.method public setReceiveTouch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receiveTouch"
        }
    .end annotation

    .line 161
    iput-boolean p1, p0, Lio/dcloud/weex/ViewHover;->isReceiveTouch:Z

    return-void
.end method

.method public update(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lio/dcloud/weex/ViewHover;->hoverClass:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_1

    .line 81
    iput-object p1, p0, Lio/dcloud/weex/ViewHover;->hoverClass:Lcom/alibaba/fastjson/JSONObject;

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public updateStatusAndGetUpdateStyles(Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    .line 143
    iget-object v0, p0, Lio/dcloud/weex/ViewHover;->hoverClass:Lcom/alibaba/fastjson/JSONObject;

    goto :goto_1

    .line 145
    :cond_0
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->originalStyles:Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 146
    iget-object p1, p0, Lio/dcloud/weex/ViewHover;->hoverClass:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 147
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 148
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lio/dcloud/weex/ViewHover;->originalStyles:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lio/dcloud/weex/ViewHover;->originalStyles:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 152
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method
