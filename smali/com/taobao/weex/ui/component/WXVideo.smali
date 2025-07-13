.class public Lcom/taobao/weex/ui/component/WXVideo;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "WXVideo.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/taobao/weex/ui/component/WXComponent<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mAutoPlay:Z

.field private mError:Z

.field mPrepared:Z

.field private mStopped:Z

.field private mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;


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

    .line 58
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/WXVideo;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

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

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    return-void
.end method

.method static synthetic access$002(Lcom/taobao/weex/ui/component/WXVideo;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mError:Z

    return p1
.end method

.method static synthetic access$100(Lcom/taobao/weex/ui/component/WXVideo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXVideo;->notify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/taobao/weex/ui/component/WXVideo;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mAutoPlay:Z

    return p0
.end method

.method static synthetic access$300(Lcom/taobao/weex/ui/component/WXVideo;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    return p0
.end method

.method static synthetic access$302(Lcom/taobao/weex/ui/component/WXVideo;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    return p1
.end method

.method private notify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "newStatus"
        }
    .end annotation

    .line 156
    new-instance v4, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "playStatus"

    .line 157
    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timeStamp"

    invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 161
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 162
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "attrs"

    .line 163
    invoke-interface {v5, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVideo;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVideo;->getRef()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/WXSDKManager;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
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

    .line 170
    invoke-super {p0, p1}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    const-string p1, "appear"

    .line 171
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXVideo;->addEvent(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 182
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

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

    .line 43
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXVideo;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-direct {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance p1, Lcom/taobao/weex/ui/component/WXVideo$1;

    invoke-direct {p1, p0, v0}, Lcom/taobao/weex/ui/component/WXVideo$1;-><init>(Lcom/taobao/weex/ui/component/WXVideo;Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 86
    new-instance p1, Lcom/taobao/weex/ui/component/WXVideo$2;

    invoke-direct {p1, p0, v0}, Lcom/taobao/weex/ui/component/WXVideo$2;-><init>(Lcom/taobao/weex/ui/component/WXVideo;Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 115
    new-instance p1, Lcom/taobao/weex/ui/component/WXVideo$3;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXVideo$3;-><init>(Lcom/taobao/weex/ui/component/WXVideo;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 128
    new-instance p1, Lcom/taobao/weex/ui/component/WXVideo$4;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/component/WXVideo$4;-><init>(Lcom/taobao/weex/ui/component/WXVideo;)V

    invoke-virtual {v0, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setOnVideoPauseListener(Lcom/taobao/weex/ui/view/WXVideoView$VideoPlayListener;)V

    .line 151
    iput-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    return-object v0
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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

    .line 176
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->createVideoViewIfVisible()Z

    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "autoPlay"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoPlay"
        }
    .end annotation

    .line 232
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mAutoPlay:Z

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->createIfNotExist()Lcom/taobao/weex/ui/view/WXVideoView;

    .line 235
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->start()V

    :cond_0
    return-void
.end method

.method public setControls(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "controls"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controls"
        }
    .end annotation

    const-string v0, "controls"

    .line 241
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setControls(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "nocontrols"

    .line 243
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 244
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setControls(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlaystatus(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "playStatus"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playstatus"
        }
    .end annotation

    .line 253
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mPrepared:Z

    const-string v1, "play"

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mError:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    if-nez v0, :cond_2

    .line 254
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->start()V

    goto :goto_0

    :cond_0
    const-string v0, "pause"

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->pause()V

    goto :goto_0

    :cond_1
    const-string v0, "stop"

    .line 258
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 259
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->stopPlayback()V

    const/4 p1, 0x1

    .line 260
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    goto :goto_0

    .line 262
    :cond_2
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mError:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mStopped:Z

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 263
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mError:Z

    .line 264
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->resume()V

    .line 266
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {v0}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
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

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "playStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v0, "autoplay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "autoPlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v0, "src"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "zOrderTop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_0

    .line 214
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 208
    :pswitch_0
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 210
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXVideo;->setPlaystatus(Ljava/lang/String;)V

    :cond_5
    return v1

    .line 196
    :pswitch_1
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 198
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXVideo;->setAutoPlay(Z)V

    :cond_6
    return v1

    .line 189
    :pswitch_2
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 191
    invoke-virtual {p0, p1}, Lcom/taobao/weex/ui/component/WXVideo;->setSrc(Ljava/lang/String;)V

    :cond_7
    return v1

    .line 202
    :pswitch_3
    invoke-static {p2, v0}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 204
    iget-object p2, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p2}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getVideoView()Lcom/taobao/weex/ui/view/WXVideoView;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/taobao/weex/ui/view/WXVideoView;->setZOrderOnTop(Z)V

    :cond_8
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x9f6de3f -> :sswitch_4
        0x1bde4 -> :sswitch_3
        0x55bf6d83 -> :sswitch_2
        0x55cdf963 -> :sswitch_1
        0x5e571046 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "src"
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVideo;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXVideo;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v2, "video"

    invoke-virtual {v0, p1, v2}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->setVideoURI(Landroid/net/Uri;)V

    .line 226
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo;->mWrapper:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
