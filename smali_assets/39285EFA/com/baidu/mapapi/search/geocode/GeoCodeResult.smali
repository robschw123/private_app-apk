.class public Lcom/baidu/mapapi/search/geocode/GeoCodeResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;
.source "GeoCodeResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/geocode/GeoCodeResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/baidu/mapapi/model/LatLng;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 182
    new-instance v0, Lcom/baidu/mapapi/search/geocode/a;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/geocode/a;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    .line 61
    const-class v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->a:Lcom/baidu/mapapi/model/LatLng;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->b:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->c:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->d:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->d:I

    return v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/baidu/mapapi/model/LatLng;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->a:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getPrecise()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->c:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->b:Ljava/lang/String;

    return-void
.end method

.method public setConfidence(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->d:I

    return-void
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->e:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Lcom/baidu/mapapi/model/LatLng;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->a:Lcom/baidu/mapapi/model/LatLng;

    return-void
.end method

.method public setPrecise(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->c:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "GeoCodeResult: \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "location = "

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "; precise = "

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; confidence = "

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "; level = "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 175
    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->a:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 176
    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget p2, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget p2, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object p2, p0, Lcom/baidu/mapapi/search/geocode/GeoCodeResult;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
