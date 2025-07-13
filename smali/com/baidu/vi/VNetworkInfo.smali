.class public Lcom/baidu/vi/VNetworkInfo;
.super Ljava/lang/Object;
.source "VNetworkInfo.java"


# instance fields
.field public state:I

.field public type:I

.field public typename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/NetworkInfo;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/vi/VNetworkInfo;->typename:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/baidu/vi/VNetworkInfo;->type:I

    .line 22
    sget-object v0, Lcom/baidu/vi/i;->a:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/baidu/vi/VNetworkInfo;->state:I

    goto :goto_0

    .line 27
    :cond_0
    iput v1, p0, Lcom/baidu/vi/VNetworkInfo;->state:I

    goto :goto_0

    .line 24
    :cond_1
    iput v0, p0, Lcom/baidu/vi/VNetworkInfo;->state:I

    :goto_0
    return-void
.end method
