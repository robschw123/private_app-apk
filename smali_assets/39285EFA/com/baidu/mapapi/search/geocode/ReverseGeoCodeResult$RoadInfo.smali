.class public Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;
.super Ljava/lang/Object;
.source "ReverseGeoCodeResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoadInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public distance:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 617
    new-instance v0, Lcom/baidu/mapapi/search/geocode/e;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/geocode/e;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;->name:Ljava/lang/String;

    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;->distance:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 636
    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 637
    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult$RoadInfo;->distance:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
