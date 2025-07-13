.class final Lcom/baidu/mapapi/search/route/g;
.super Ljava/lang/Object;
.source "IndoorRouteLine.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/route/IndoorRouteLine;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/IndoorRouteLine;
    .locals 1

    .line 212
    new-instance v0, Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/route/IndoorRouteLine;
    .locals 0

    .line 217
    new-array p1, p1, [Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 209
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/g;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 209
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/g;->a(I)[Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    move-result-object p1

    return-object p1
.end method
