.class final Lcom/baidu/mapapi/search/district/a;
.super Ljava/lang/Object;
.source "DistrictResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/district/DistrictResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/district/DistrictResult;
    .locals 1

    .line 115
    new-instance v0, Lcom/baidu/mapapi/search/district/DistrictResult;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/district/DistrictResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/district/DistrictResult;
    .locals 0

    .line 120
    new-array p1, p1, [Lcom/baidu/mapapi/search/district/DistrictResult;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/district/a;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/district/DistrictResult;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/district/a;->a(I)[Lcom/baidu/mapapi/search/district/DistrictResult;

    move-result-object p1

    return-object p1
.end method
