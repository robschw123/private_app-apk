.class public Lcom/baidu/mapapi/map/GradientLineOptions;
.super Lcom/baidu/mapapi/map/OverlayOptions;
.source "GradientLineOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/baidu/mapapi/map/OverlayOptions;-><init>()V

    const/4 v0, 0x5

    .line 31
    iput v0, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->d:I

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->e:Z

    .line 33
    sget-object v0, Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;->NONE:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    iput-object v0, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->f:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    return-void
.end method


# virtual methods
.method a()Lcom/baidu/mapapi/map/Overlay;
    .locals 6

    .line 193
    new-instance v0, Lcom/baidu/mapapi/map/GradientLine;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/GradientLine;-><init>()V

    .line 194
    iget v1, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->d:I

    iput v1, v0, Lcom/baidu/mapapi/map/GradientLine;->d:I

    .line 195
    iget-boolean v1, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->e:Z

    iput-boolean v1, v0, Lcom/baidu/mapapi/map/GradientLine;->H:Z

    .line 196
    iget-object v1, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->f:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    iput-object v1, v0, Lcom/baidu/mapapi/map/GradientLine;->e:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    .line 197
    iget-object v1, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->a:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_6

    .line 200
    iget-object v1, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->a:Ljava/util/List;

    iput-object v1, v0, Lcom/baidu/mapapi/map/GradientLine;->a:Ljava/util/List;

    .line 202
    iget-object v1, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->c:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 206
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    iget-object v1, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 212
    iget-object v2, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 213
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 216
    :cond_0
    iput-object v1, v0, Lcom/baidu/mapapi/map/GradientLine;->c:[I

    .line 217
    iget-object v1, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->b:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 221
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 226
    iget-object v2, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 227
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 230
    :cond_1
    iput-object v1, v0, Lcom/baidu/mapapi/map/GradientLine;->b:[I

    return-object v0

    .line 222
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BDMapSDKException: Indexs list size can not be Equal to zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BDMapSDKException: Indexs list can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BDMapSDKException: colors list size can not be Equal to zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BDMapSDKException: colors list can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "BDMapSDKException: when you add GradientLine, you must at least supply 2 points"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public getColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->c:Ljava/util/List;

    return-object v0
.end method

.method public getIndexs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public getLineDirectionCross180()Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->f:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->a:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->d:I

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->e:Z

    return v0
.end method

.method public setColorIndex(Ljava/util/List;)Lcom/baidu/mapapi/map/GradientLineOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/baidu/mapapi/map/GradientLineOptions;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 69
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iput-object p1, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->b:Ljava/util/List;

    return-object p0

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: indexs list size can not be Equal to zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: indexs list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: indexs list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setColorsValues(Ljava/util/List;)Lcom/baidu/mapapi/map/GradientLineOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/baidu/mapapi/map/GradientLineOptions;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 104
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iput-object p1, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->c:Ljava/util/List;

    return-object p0

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "BDMapSDKException: colors list list size can not be Equal to zero"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: colors list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: colors list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLineDirectionCross180(Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;)Lcom/baidu/mapapi/map/GradientLineOptions;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->f:Lcom/baidu/mapapi/map/GradientLineOptions$LineDirectionCross180;

    return-object p0
.end method

.method public setPoints(Ljava/util/List;)Lcom/baidu/mapapi/map/GradientLineOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)",
            "Lcom/baidu/mapapi/map/GradientLineOptions;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 50
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iput-object p1, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->a:Ljava/util/List;

    return-object p0

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not contains null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points count can not less than 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "BDMapSDKException: points list can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWidth(I)Lcom/baidu/mapapi/map/GradientLineOptions;
    .locals 0

    if-lez p1, :cond_0

    .line 88
    iput p1, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->d:I

    :cond_0
    return-object p0
.end method

.method public visible(Z)Lcom/baidu/mapapi/map/GradientLineOptions;
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/GradientLineOptions;->e:Z

    return-object p0
.end method
