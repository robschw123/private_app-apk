.class final Lcom/baidu/mapapi/search/poi/a;
.super Ljava/lang/Object;
.source "PoiDetailResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/poi/PoiDetailResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/poi/PoiDetailResult;
    .locals 1

    .line 624
    new-instance v0, Lcom/baidu/mapapi/search/poi/PoiDetailResult;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/poi/PoiDetailResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/poi/PoiDetailResult;
    .locals 0

    .line 629
    new-array p1, p1, [Lcom/baidu/mapapi/search/poi/PoiDetailResult;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 621
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/poi/a;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/poi/PoiDetailResult;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 621
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/poi/a;->a(I)[Lcom/baidu/mapapi/search/poi/PoiDetailResult;

    move-result-object p1

    return-object p1
.end method
