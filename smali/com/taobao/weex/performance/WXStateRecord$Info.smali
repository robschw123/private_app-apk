.class Lcom/taobao/weex/performance/WXStateRecord$Info;
.super Ljava/lang/Object;
.source "WXStateRecord.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/performance/WXStateRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/taobao/weex/performance/WXStateRecord$Info;",
        ">;"
    }
.end annotation


# instance fields
.field private instanceId:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "time",
            "instance",
            "msg"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-wide p1, p0, Lcom/taobao/weex/performance/WXStateRecord$Info;->time:J

    .line 171
    iput-object p3, p0, Lcom/taobao/weex/performance/WXStateRecord$Info;->instanceId:Ljava/lang/String;

    .line 172
    iput-object p4, p0, Lcom/taobao/weex/performance/WXStateRecord$Info;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/taobao/weex/performance/WXStateRecord$Info;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "next"
        }
    .end annotation

    .line 184
    iget-wide v0, p0, Lcom/taobao/weex/performance/WXStateRecord$Info;->time:J

    iget-wide v2, p1, Lcom/taobao/weex/performance/WXStateRecord$Info;->time:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "next"
        }
    .end annotation

    .line 164
    check-cast p1, Lcom/taobao/weex/performance/WXStateRecord$Info;

    invoke-virtual {p0, p1}, Lcom/taobao/weex/performance/WXStateRecord$Info;->compareTo(Lcom/taobao/weex/performance/WXStateRecord$Info;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/performance/WXStateRecord$Info;->instanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/taobao/weex/performance/WXStateRecord$Info;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/weex/performance/WXStateRecord$Info;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
