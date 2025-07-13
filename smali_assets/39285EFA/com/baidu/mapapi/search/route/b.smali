.class final Lcom/baidu/mapapi/search/route/b;
.super Ljava/lang/Object;
.source "BikingRouteLine.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;
    .locals 1

    .line 272
    new-instance v0, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;
    .locals 0

    .line 276
    new-array p1, p1, [Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/b;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 270
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/search/route/b;->a(I)[Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;

    move-result-object p1

    return-object p1
.end method
