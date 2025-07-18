.class public Lnet/lingala/zip4j/progress/ProgressMonitor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lingala/zip4j/progress/ProgressMonitor$Task;,
        Lnet/lingala/zip4j/progress/ProgressMonitor$Result;,
        Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    }
.end annotation


# instance fields
.field private cancelAllTasks:Z

.field private currentTask:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

.field private exception:Ljava/lang/Exception;

.field private fileName:Ljava/lang/String;

.field private pause:Z

.field private percentDone:I

.field private result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

.field private state:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

.field private totalWork:J

.field private workCompleted:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 1
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->NONE:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->currentTask:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    .line 2
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$State;->READY:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-void
.end method


# virtual methods
.method public endProgressMonitor()V
    .locals 1

    .line 1
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->SUCCESS:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 3
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    return-void
.end method

.method public endProgressMonitor(Ljava/lang/Exception;)V
    .locals 1

    .line 4
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Result;->ERROR:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    .line 5
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Exception;

    .line 6
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    return-void
.end method

.method public fullReset()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->reset()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    .line 4
    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    return-void
.end method

.method public getCurrentTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->currentTask:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentDone()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    return v0
.end method

.method public getResult()Lnet/lingala/zip4j/progress/ProgressMonitor$Result;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    return-object v0
.end method

.method public getState()Lnet/lingala/zip4j/progress/ProgressMonitor$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-object v0
.end method

.method public getTotalWork()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    return-wide v0
.end method

.method public getWorkCompleted()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    return-wide v0
.end method

.method public isCancelAllTasks()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->cancelAllTasks:Z

    return v0
.end method

.method public isPause()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->pause:Z

    return v0
.end method

.method public setCancelAllTasks(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->cancelAllTasks:Z

    return-void
.end method

.method public setCurrentTask(Lnet/lingala/zip4j/progress/ProgressMonitor$Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->currentTask:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->exception:Ljava/lang/Exception;

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setPause(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->pause:Z

    return-void
.end method

.method public setPercentDone(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    return-void
.end method

.method public setResult(Lnet/lingala/zip4j/progress/ProgressMonitor$Result;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->result:Lnet/lingala/zip4j/progress/ProgressMonitor$Result;

    return-void
.end method

.method public setState(Lnet/lingala/zip4j/progress/ProgressMonitor$State;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->state:Lnet/lingala/zip4j/progress/ProgressMonitor$State;

    return-void
.end method

.method public setTotalWork(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    return-void
.end method

.method public updateWorkCompleted(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->workCompleted:J

    .line 3
    iget-wide p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->totalWork:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    .line 4
    div-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    const/16 p2, 0x64

    if-le p1, p2, :cond_0

    .line 6
    iput p2, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->percentDone:I

    .line 10
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lnet/lingala/zip4j/progress/ProgressMonitor;->pause:Z

    if-eqz p1, :cond_1

    const-wide/16 p1, 0x96

    .line 12
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    return-void
.end method
