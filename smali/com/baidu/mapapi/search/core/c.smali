.class final Lcom/baidu/mapapi/search/core/c;
.super Ljava/lang/Object;
.source "CityInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/core/CityInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/core/CityInfo;
    .locals 1

    .line 33
    new-instance v0, Lcom/baidu/mapapi/search/core/CityInfo;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/core/CityInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/core/CityInfo;
    .locals 0

    .line 27
    new-array p1, p1, [Lcom/baidu/mapapi/search/core/CityInfo;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/core/c;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/core/CityInfo;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/core/c;->a(I)[Lcom/baidu/mapapi/search/core/CityInfo;

    move-result-object p1

    return-object p1
.end method
