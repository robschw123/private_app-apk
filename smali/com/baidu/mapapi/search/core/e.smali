.class final Lcom/baidu/mapapi/search/core/e;
.super Ljava/lang/Object;
.source "PlaneInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/core/PlaneInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/core/PlaneInfo;
    .locals 1

    .line 58
    new-instance v0, Lcom/baidu/mapapi/search/core/PlaneInfo;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/core/PlaneInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/core/PlaneInfo;
    .locals 0

    .line 63
    new-array p1, p1, [Lcom/baidu/mapapi/search/core/PlaneInfo;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/core/e;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/core/PlaneInfo;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/core/e;->a(I)[Lcom/baidu/mapapi/search/core/PlaneInfo;

    move-result-object p1

    return-object p1
.end method
