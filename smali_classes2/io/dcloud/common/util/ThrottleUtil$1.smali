.class Lio/dcloud/common/util/ThrottleUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/dcloud/common/util/ThrottleUtil;->throttlePost(Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/common/util/ThrottleUtil;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/dcloud/common/util/ThrottleUtil;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/dcloud/common/util/ThrottleUtil$1;->this$0:Lio/dcloud/common/util/ThrottleUtil;

    iput-object p2, p0, Lio/dcloud/common/util/ThrottleUtil$1;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/dcloud/common/util/ThrottleUtil$1;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
