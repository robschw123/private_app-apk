.class final Lcom/baidu/mapapi/model/b;
.super Ljava/lang/Object;
.source "LatLngBounds.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/model/LatLngBounds;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 1

    .line 220
    new-instance v0, Lcom/baidu/mapapi/model/LatLngBounds;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/model/LatLngBounds;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 0

    .line 225
    new-array p1, p1, [Lcom/baidu/mapapi/model/LatLngBounds;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 217
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/model/b;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 217
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/model/b;->a(I)[Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object p1

    return-object p1
.end method
