.class public Lcom/baidu/platform/comapi/longlink/LongLinkClient;
.super Ljava/lang/Object;
.source "LongLinkClient.java"


# instance fields
.field private a:I

.field private b:J

.field private c:I


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-wide p1, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->b:J

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-wide p1, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->b:J

    .line 96
    iput p3, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->a:I

    return-void
.end method

.method public static create()Lcom/baidu/platform/comapi/longlink/LongLinkClient;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/platform/comapi/exception/ComInitException;
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/baidu/platform/comjni/base/longlink/NALongLink;->create()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 45
    new-instance v2, Lcom/baidu/platform/comapi/longlink/LongLinkClient;

    invoke-direct {v2, v0, v1}, Lcom/baidu/platform/comapi/longlink/LongLinkClient;-><init>(J)V

    return-object v2

    .line 48
    :cond_0
    new-instance v0, Lcom/baidu/platform/comapi/exception/ComInitException;

    const-string v1, "LongLink Component created failed!"

    invoke-direct {v0, v1}, Lcom/baidu/platform/comapi/exception/ComInitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(I)Lcom/baidu/platform/comapi/longlink/LongLinkClient;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/platform/comapi/exception/ComInitException;
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/baidu/platform/comjni/base/longlink/NALongLink;->create()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 54
    new-instance v2, Lcom/baidu/platform/comapi/longlink/LongLinkClient;

    invoke-direct {v2, v0, v1, p0}, Lcom/baidu/platform/comapi/longlink/LongLinkClient;-><init>(JI)V

    return-object v2

    .line 57
    :cond_0
    new-instance p0, Lcom/baidu/platform/comapi/exception/ComInitException;

    const-string v0, "LongLink Component created failed!"

    invoke-direct {p0, v0}, Lcom/baidu/platform/comapi/exception/ComInitException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized getRequestId()I
    .locals 1

    monitor-enter p0

    .line 123
    :try_start_0
    iget v0, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/platform/comapi/exception/InvalidComException;
        }
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-wide v0, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->b:J

    invoke-static {v0, v1, p1, p2}, Lcom/baidu/platform/comjni/base/longlink/NALongLink;->init(JLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 75
    :cond_0
    new-instance p1, Lcom/baidu/platform/comapi/exception/InvalidComException;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/exception/InvalidComException;-><init>()V

    throw p1
.end method

.method public isValid()Z
    .locals 5

    .line 113
    iget-wide v0, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized register(Lcom/baidu/platform/comapi/longlink/LongLinkDataCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/platform/comapi/exception/InvalidComException;
        }
    .end annotation

    monitor-enter p0

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-wide v0, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->b:J

    iget v2, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->a:I

    invoke-static {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/base/longlink/NALongLink;->register(JILjava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 137
    :cond_0
    :try_start_1
    new-instance p1, Lcom/baidu/platform/comapi/exception/InvalidComException;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/exception/InvalidComException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public release()I
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-wide v0, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->b:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/base/longlink/NALongLink;->release(J)I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    .line 88
    iput-wide v0, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->b:J

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized sendData([B)Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/platform/comapi/exception/InvalidComException;
        }
    .end annotation

    monitor-enter p0

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget v0, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->c:I

    .line 165
    invoke-static {}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->values()[Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->b:J

    iget v3, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->a:I

    iget v4, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->c:I

    invoke-static {v1, v2, v3, v4, p1}, Lcom/baidu/platform/comjni/base/longlink/NALongLink;->sendData(JII[B)I

    move-result p1

    aget-object p1, v0, p1

    .line 167
    iget v0, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->c:I

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->setRequestId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-object p1

    .line 170
    :cond_0
    :try_start_1
    new-instance p1, Lcom/baidu/platform/comapi/exception/InvalidComException;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/exception/InvalidComException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sendFileData(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/baidu/platform/comapi/longlink/LongLinkFileData;",
            ">;)",
            "Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/platform/comapi/exception/InvalidComException;
        }
    .end annotation

    monitor-enter p0

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget v0, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->c:I

    .line 186
    invoke-static {}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->values()[Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->b:J

    iget v3, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->a:I

    iget v4, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->c:I

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/baidu/platform/comjni/base/longlink/NALongLink;->sendFileData(JIILjava/lang/String;Ljava/util/ArrayList;)I

    move-result p1

    aget-object p1, v0, p1

    .line 188
    iget p2, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->c:I

    invoke-virtual {p1, p2}, Lcom/baidu/platform/comapi/longlink/ELongLinkStatus;->setRequestId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-object p1

    .line 191
    :cond_0
    :try_start_1
    new-instance p1, Lcom/baidu/platform/comapi/exception/InvalidComException;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/exception/InvalidComException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setModuleId(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->a:I

    return-void
.end method

.method public start()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/platform/comapi/exception/InvalidComException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-wide v0, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->b:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/base/longlink/NALongLink;->start(J)Z

    move-result v0

    return v0

    .line 205
    :cond_0
    new-instance v0, Lcom/baidu/platform/comapi/exception/InvalidComException;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/exception/InvalidComException;-><init>()V

    throw v0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/platform/comapi/exception/InvalidComException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-wide v0, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->b:J

    invoke-static {v0, v1}, Lcom/baidu/platform/comjni/base/longlink/NALongLink;->stop(J)Z

    return-void

    .line 219
    :cond_0
    new-instance v0, Lcom/baidu/platform/comapi/exception/InvalidComException;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/exception/InvalidComException;-><init>()V

    throw v0
.end method

.method public declared-synchronized unRegister(Lcom/baidu/platform/comapi/longlink/LongLinkDataCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/platform/comapi/exception/InvalidComException;
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-wide v0, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->b:J

    iget v2, p0, Lcom/baidu/platform/comapi/longlink/LongLinkClient;->a:I

    invoke-static {v0, v1, v2, p1}, Lcom/baidu/platform/comjni/base/longlink/NALongLink;->unRegister(JILjava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 151
    :cond_0
    :try_start_1
    new-instance p1, Lcom/baidu/platform/comapi/exception/InvalidComException;

    invoke-direct {p1}, Lcom/baidu/platform/comapi/exception/InvalidComException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
