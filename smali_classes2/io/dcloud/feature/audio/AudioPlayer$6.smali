.class Lio/dcloud/feature/audio/AudioPlayer$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/audio/AudioPlayer;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/feature/audio/AudioPlayer;


# direct methods
.method constructor <init>(Lio/dcloud/feature/audio/AudioPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/feature/audio/AudioPlayer$6;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/16 v0, 0x64

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x517

    .line 1
    iget-object v0, p0, Lio/dcloud/feature/audio/AudioPlayer$6;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-static {v0}, Lio/dcloud/feature/audio/AudioPlayer;->access$200(Lio/dcloud/feature/audio/AudioPlayer;)Lio/dcloud/common/DHInterface/IWebview;

    move-result-object v0

    invoke-interface {v0}, Lio/dcloud/common/DHInterface/IWebview;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lio/dcloud/base/R$string;->dcloud_audio_abnormal_rebuild:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 p2, -0x63

    .line 2
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_UNKNOWN_ERROR:Ljava/lang/String;

    :goto_0
    const/16 v1, -0x3f2

    if-eq p3, v1, :cond_5

    const/16 v1, -0x3ef

    if-eq p3, v1, :cond_4

    const/16 v1, -0x3ec

    if-eq p3, v1, :cond_3

    const/16 v1, -0x6e

    if-eq p3, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 p2, -0x516

    .line 24
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_AUDIO_ERROR_TIMED_OUT:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 p2, -0x5

    const-string v0, "IO Error"

    goto :goto_1

    :cond_4
    const/16 p2, -0x515

    .line 25
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_AUDIO_ERROR_MALFORMED:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 p2, -0x3

    .line 29
    sget-object v0, Lio/dcloud/common/constant/DOMException;->MSG_NOT_SUPPORT:Ljava/lang/String;

    :goto_1
    if-eqz p2, :cond_6

    .line 37
    iget-object p3, p0, Lio/dcloud/feature/audio/AudioPlayer$6;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-virtual {p3, p2, v0}, Lio/dcloud/feature/audio/AudioPlayer;->failCallback(ILjava/lang/String;)V

    .line 38
    iget-object p3, p0, Lio/dcloud/feature/audio/AudioPlayer$6;->this$0:Lio/dcloud/feature/audio/AudioPlayer;

    invoke-static {p2, v0}, Lio/dcloud/common/constant/DOMException;->toJSON(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "error"

    invoke-virtual {p3, v0, p2}, Lio/dcloud/feature/audio/AudioPlayer;->execEvents(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return p1
.end method
