.class Lcom/taobao/weex/ui/component/WXVideo$2;
.super Ljava/lang/Object;
.source "WXVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/ui/component/WXVideo;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/component/WXVideo;

.field final synthetic val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/component/WXVideo;Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$video"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPlayer"
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Video"

    const-string v0, "onPrepared"

    .line 91
    invoke-static {p1, v0}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/taobao/weex/ui/component/WXVideo;->mPrepared:Z

    .line 95
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXVideo;->access$200(Lcom/taobao/weex/ui/component/WXVideo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->start()V

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getVideoView()Lcom/taobao/weex/ui/view/WXVideoView;

    move-result-object p1

    const/4 v0, 0x5

    .line 101
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/view/WXVideoView;->seekTo(I)V

    .line 103
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getMediaController()Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-static {p1}, Lcom/taobao/weex/ui/component/WXVideo;->access$300(Lcom/taobao/weex/ui/component/WXVideo;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getMediaController()Landroid/widget/MediaController;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 107
    :cond_2
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getMediaController()Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 111
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$2;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/taobao/weex/ui/component/WXVideo;->access$302(Lcom/taobao/weex/ui/component/WXVideo;Z)Z

    return-void
.end method
