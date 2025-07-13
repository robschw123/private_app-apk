.class public Lio/dcloud/feature/weex/extend/result/Result$AggregateError;
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
    name = "AggregateError"
.end annotation


# instance fields
.field public errors:[Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "errors",
            "message"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AggregateError"

    .line 51
    iput-object v0, p0, Lio/dcloud/feature/weex/extend/result/Result$AggregateError;->name:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lio/dcloud/feature/weex/extend/result/Result$AggregateError;->name:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lio/dcloud/feature/weex/extend/result/Result$AggregateError;->errors:[Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lio/dcloud/feature/weex/extend/result/Result$AggregateError;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJsonObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 6

    .line 63
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 64
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/result/Result$AggregateError;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/result/Result$AggregateError;->errors:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lio/dcloud/feature/weex/extend/result/Result$AggregateError;->errors:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 68
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "]"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "errors"

    .line 71
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_1
    iget-object v1, p0, Lio/dcloud/feature/weex/extend/result/Result$AggregateError;->message:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "message"

    .line 74
    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method
