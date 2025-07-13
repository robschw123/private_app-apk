.class Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;
.super Ljava/lang/Object;
.source "DCWeexBaseRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->beginRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field offset:I

.field final synthetic this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;


# direct methods
.method constructor <init>(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 423
    iput-object p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 424
    iput p1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->offset:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 428
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->offset:I

    int-to-float v0, v0

    iget-object v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    iget v1, v1, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mTotalDragDistance:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 429
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    iget v1, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->offset:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$700(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;F)V

    .line 430
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 431
    iget v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->offset:I

    add-int/lit8 v0, v0, 0xf

    iput v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->offset:I

    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->access$800(Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;ZZ)V

    .line 434
    iget-object v0, p0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout$2;->this$0:Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/dcloud/feature/weex/adapter/widget/refresh/DCWeexBaseRefreshLayout;->mBeginRefresh:Z

    :goto_0
    return-void
.end method
