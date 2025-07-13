.class public Lcom/baidu/mapapi/search/building/BuildingResult;
.super Lcom/baidu/mapapi/search/core/SearchResult;
.source "BuildingResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/baidu/mapapi/search/building/BuildingResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/BuildingInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/baidu/mapapi/search/building/a;

    invoke-direct {v0}, Lcom/baidu/mapapi/search/building/a;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/search/building/BuildingResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/baidu/mapapi/search/core/SearchResult;-><init>()V

    .line 29
    sget-object v0, Lcom/baidu/mapapi/search/core/BuildingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mapapi/search/building/BuildingResult;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBuildingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/BuildingInfo;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/baidu/mapapi/search/building/BuildingResult;->a:Ljava/util/List;

    return-object v0
.end method

.method public getRelation()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/baidu/mapapi/search/building/BuildingResult;->b:I

    return v0
.end method

.method public setBuildingList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/search/core/BuildingInfo;",
            ">;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/baidu/mapapi/search/building/BuildingResult;->a:Ljava/util/List;

    return-void
.end method

.method public setRelation(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/baidu/mapapi/search/building/BuildingResult;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "BuidingResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/baidu/mapapi/search/building/BuildingResult;->a:Ljava/util/List;

    const-string v2, "null"

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 97
    :goto_0
    iget-object v3, p0, Lcom/baidu/mapapi/search/building/BuildingResult;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    const-string v3, " "

    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    iget-object v3, p0, Lcom/baidu/mapapi/search/building/BuildingResult;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/mapapi/search/core/BuildingInfo;

    if-nez v3, :cond_1

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 104
    :cond_1
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/core/BuildingInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_2
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 70
    iget-object p2, p0, Lcom/baidu/mapapi/search/building/BuildingResult;->a:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
