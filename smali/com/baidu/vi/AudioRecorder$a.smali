.class Lcom/baidu/vi/AudioRecorder$a;
.super Ljava/lang/Object;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/vi/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/baidu/vi/AudioRecorder;

.field b:[B

.field c:I

.field final synthetic d:Lcom/baidu/vi/AudioRecorder;


# direct methods
.method public constructor <init>(Lcom/baidu/vi/AudioRecorder;Lcom/baidu/vi/AudioRecorder;[BI)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/baidu/vi/AudioRecorder$a;->d:Lcom/baidu/vi/AudioRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/baidu/vi/AudioRecorder$a;->a:Lcom/baidu/vi/AudioRecorder;

    .line 70
    iput-object p3, p0, Lcom/baidu/vi/AudioRecorder$a;->b:[B

    .line 71
    iput p4, p0, Lcom/baidu/vi/AudioRecorder$a;->c:I

    return-void
.end method
