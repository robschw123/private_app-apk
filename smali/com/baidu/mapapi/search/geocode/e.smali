.class final Lcom/baidu/mapapi/search/geocode/e;
.super Ljava/lang/Object;
.source "ReverseGeoCodeResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;
    .locals 1

    .line 620
    new-instance v0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;
    .locals 0

    .line 625
    new-array p1, p1, [Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 617
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/geocode/e;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 617
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/geocode/e;->a(I)[Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;

    move-result-object p1

    return-object p1
.end method
