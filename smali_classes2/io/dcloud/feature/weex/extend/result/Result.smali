.class public abstract Lio/dcloud/feature/weex/extend/result/Result;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/dcloud/feature/weex/extend/result/Result$AggregateError;,
        Lio/dcloud/feature/weex/extend/result/Result$SourceError;,
        Lio/dcloud/feature/weex/extend/result/Result$IError;
    }
.end annotation


# instance fields
.field public cause:Lio/dcloud/feature/weex/extend/result/Result$IError;

.field public data:Lcom/alibaba/fastjson/JSONObject;

.field public errCode:I

.field public errMsg:Ljava/lang/String;

.field public errSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "subject",
            "code",
            "message"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/result/Result;->errSubject:Ljava/lang/String;

    .line 89
    iput p2, p0, Lio/dcloud/feature/weex/extend/result/Result;->errCode:I

    .line 90
    iput-object p3, p0, Lio/dcloud/feature/weex/extend/result/Result;->errMsg:Ljava/lang/String;

    return-void
.end method

.method public static varargs boxCallBackResult(Z[Landroid/util/Pair;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "success",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/fastjson/JSONObject;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 95
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "type"

    if-eqz p0, :cond_0

    const-string p0, "success"

    .line 97
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "fail"

    .line 99
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :goto_0
    array-length p0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_2

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    goto :goto_2

    .line 105
    :cond_1
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static boxFailResult(Lio/dcloud/feature/weex/extend/result/Result;)Lcom/alibaba/fastjson/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 115
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lio/dcloud/feature/weex/extend/result/Result;->errSubject:Ljava/lang/String;

    const-string v2, "errSubject"

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    new-instance v1, Landroid/util/Pair;

    iget v2, p0, Lio/dcloud/feature/weex/extend/result/Result;->errCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "errCode"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lio/dcloud/feature/weex/extend/result/Result;->errMsg:Ljava/lang/String;

    const-string v4, "errMsg"

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    iget-object v3, p0, Lio/dcloud/feature/weex/extend/result/Result;->cause:Lio/dcloud/feature/weex/extend/result/Result$IError;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 120
    new-instance v3, Landroid/util/Pair;

    iget-object v5, p0, Lio/dcloud/feature/weex/extend/result/Result;->cause:Lio/dcloud/feature/weex/extend/result/Result$IError;

    invoke-interface {v5}, Lio/dcloud/feature/weex/extend/result/Result$IError;->toJsonObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    const-string v6, "cause"

    invoke-direct {v3, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 123
    :goto_0
    iget-object v5, p0, Lio/dcloud/feature/weex/extend/result/Result;->data:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_1

    .line 124
    new-instance v4, Landroid/util/Pair;

    iget-object p0, p0, Lio/dcloud/feature/weex/extend/result/Result;->data:Lcom/alibaba/fastjson/JSONObject;

    const-string v5, "data"

    invoke-direct {v4, v5, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x5

    new-array p0, p0, [Landroid/util/Pair;

    const/4 v5, 0x0

    aput-object v0, p0, v5

    const/4 v0, 0x1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    aput-object v2, p0, v0

    const/4 v0, 0x3

    aput-object v3, p0, v0

    const/4 v0, 0x4

    aput-object v4, p0, v0

    .line 126
    invoke-static {v5, p0}, Lio/dcloud/feature/weex/extend/result/Result;->boxCallBackResult(Z[Landroid/util/Pair;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static boxSuccessResult(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/util/Pair;

    .line 111
    new-instance v2, Landroid/util/Pair;

    const-string v3, "data"

    invoke-direct {v2, v3, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    invoke-static {v0, v1}, Lio/dcloud/feature/weex/extend/result/Result;->boxCallBackResult(Z[Landroid/util/Pair;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    return-object p0
.end method
