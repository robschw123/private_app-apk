.class final Lcom/baidu/mapapi/map/p;
.super Ljava/lang/Object;
.source "MapStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/baidu/mapapi/map/MapStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/baidu/mapapi/map/MapStatus;
    .locals 1

    .line 340
    new-instance v0, Lcom/baidu/mapapi/map/MapStatus;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/map/MapStatus;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/baidu/mapapi/map/MapStatus;
    .locals 0

    .line 344
    new-array p1, p1, [Lcom/baidu/mapapi/map/MapStatus;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 338
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/p;->a(Landroid/os/Parcel;)Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 338
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/map/p;->a(I)[Lcom/baidu/mapapi/map/MapStatus;

    move-result-object p1

    return-object p1
.end method
