.class Lcom/taobao/weex/ui/component/WXVideo$1;
.super Ljava/lang/Object;
.source "WXVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    .line 68
    iput-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    iput-object p2, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mp",
            "what",
            "extra"
        }
    .end annotation

    .line 72
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onError:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Video"

    invoke-static {p2, p1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->val$video:Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/WXVideoView$Wrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 76
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/taobao/weex/ui/component/WXVideo;->mPrepared:Z

    .line 77
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/taobao/weex/ui/component/WXVideo;->access$002(Lcom/taobao/weex/ui/component/WXVideo;Z)Z

    .line 79
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXVideo;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object p1

    const-string p3, "fail"

    invoke-virtual {p1, p3}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 80
    iget-object p1, p0, Lcom/taobao/weex/ui/component/WXVideo$1;->this$0:Lcom/taobao/weex/ui/component/WXVideo;

    const-string v0, "stop"

    invoke-static {p1, p3, v0}, Lcom/taobao/weex/ui/component/WXVideo;->access$100(Lcom/taobao/weex/ui/component/WXVideo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p2
.end method
