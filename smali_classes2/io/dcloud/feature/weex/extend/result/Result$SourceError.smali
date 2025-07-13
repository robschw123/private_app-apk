.class public Lio/dcloud/feature/weex/extend/result/Result$SourceError;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Lio/dcloud/feature/weex/extend/result/Result$IError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/feature/weex/extend/result/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceError"
.end annotation


# static fields
.field public static final EMPTY_CODE:I = -0xf423f


# instance fields
.field public cause:Lio/dcloud/feature/weex/extend/result/Result$SourceError;

.field public code:I

.field public message:Ljava/lang/String;

.field public subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lio/dcloud/feature/weex/extend/result/Result$SourceError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "subject",
            "code",
            "message",
            "cause"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/result/Result$SourceError;->subject:Ljava/lang/String;

    .line 26
    iput p2, p0, Lio/dcloud/feature/weex/extend/result/Result$SourceError;->code:I

    .line 27
    iput-object p3, p0, Lio/dcloud/feature/weex/extend/result/Result$SourceError;->message:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lio/dcloud/feature/weex/extend/result/Result$SourceError;->cause:Lio/dcloud/feature/weex/extend/result/Result$SourceError;

    return-void
.end method


# virtual methods
.method public toJsonObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 3

    .line 32
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 33
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/result/Result$SourceError;->subject:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "subject"

    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    iget v1, p0, Lio/dcloud/feature/weex/extend/result/Result$SourceError;->code:I

    const v2, -0xf423f

    if-eq v1, v2, :cond_1

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_1
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/result/Result$SourceError;->message:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "message"

    .line 40
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_2
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/result/Result$SourceError;->cause:Lio/dcloud/feature/weex/extend/result/Result$SourceError;

    if-eqz v1, :cond_3

    .line 43
    invoke-virtual {v1}, Lio/dcloud/feature/weex/extend/result/Result$SourceError;->toJsonObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v2, "cause"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method
