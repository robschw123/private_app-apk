.class Lio/dcloud/sdk/base/entry/AdData$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/sdk/base/entry/AdData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lio/dcloud/sdk/base/entry/AdData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lio/dcloud/sdk/base/entry/AdData;
    .locals 1

    .line 1
    new-instance v0, Lio/dcloud/sdk/base/entry/AdData;

    invoke-direct {v0, p1}, Lio/dcloud/sdk/base/entry/AdData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lio/dcloud/sdk/base/entry/AdData;
    .locals 0

    .line 2
    new-array p1, p1, [Lio/dcloud/sdk/base/entry/AdData;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/sdk/base/entry/AdData$d;->a(Landroid/os/Parcel;)Lio/dcloud/sdk/base/entry/AdData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/dcloud/sdk/base/entry/AdData$d;->a(I)[Lio/dcloud/sdk/base/entry/AdData;

    move-result-object p1

    return-object p1
.end method
