.class Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;
.super Landroid/os/Handler;
.source "CircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;


# direct methods
.method constructor <init>(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 319
    iput-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 322
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 323
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x271a

    if-ne p1, v0, :cond_1

    .line 324
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    invoke-static {p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->access$000(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    iget-object p1, p1, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;->this$0:Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;

    iget-object p1, p1, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar;->mProgressDrawable:Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;

    invoke-virtual {p1}, Lcom/taobao/weex/ui/view/refresh/circlebar/MaterialProgressDrawable;->start()V

    goto :goto_0

    .line 327
    :cond_0
    new-instance p1, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1$1;

    invoke-direct {p1, p0}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1$1;-><init>(Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Lcom/taobao/weex/ui/view/refresh/circlebar/CircleProgressBar$1;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
