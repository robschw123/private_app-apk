.class final Ldc/squareup/okhttp3/internal/ws/RealWebSocket$CancelRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldc/squareup/okhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CancelRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Ldc/squareup/okhttp3/internal/ws/RealWebSocket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$CancelRunnable;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ldc/squareup/okhttp3/internal/ws/RealWebSocket$CancelRunnable;->this$0:Ldc/squareup/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0}, Ldc/squareup/okhttp3/internal/ws/RealWebSocket;->cancel()V

    return-void
.end method
