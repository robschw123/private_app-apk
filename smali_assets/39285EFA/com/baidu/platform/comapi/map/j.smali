.class public abstract Lcom/baidu/platform/comapi/map/j;
.super Ljava/lang/Object;
.source "Geometry.java"


# instance fields
.field protected a:Lcom/baidu/platform/comapi/map/ap;

.field public b:Z

.field public c:Z

.field protected d:[D

.field protected e:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

.field protected f:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

.field protected g:Z

.field protected h:Lcom/baidu/platform/comapi/util/JsonBuilder;

.field protected i:I

.field protected j:I


# direct methods
.method public constructor <init>(Lcom/baidu/platform/comapi/map/ap;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/j;->e:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    .line 35
    new-instance v0, Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-direct {v0, v1, v1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/j;->f:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/baidu/platform/comapi/map/j;->g:Z

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/baidu/platform/comapi/map/j;->i:I

    .line 44
    iput v1, p0, Lcom/baidu/platform/comapi/map/j;->j:I

    .line 52
    iput-object p1, p0, Lcom/baidu/platform/comapi/map/j;->a:Lcom/baidu/platform/comapi/map/ap;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method protected a(I)Ljava/lang/String;
    .locals 8

    .line 64
    new-instance v0, Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-direct {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;-><init>()V

    iput-object v0, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 66
    invoke-virtual {v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "path"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->arrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 70
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->d:[D

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 71
    :goto_0
    iget-object v4, p0, Lcom/baidu/platform/comapi/map/j;->d:[D

    array-length v5, v4

    if-ge p1, v5, :cond_0

    .line 72
    iget-object v5, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    aget-wide v6, v4, p1

    invoke-virtual {v5, v6, v7}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(D)Lcom/baidu/platform/comapi/util/JsonBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endArrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto/16 :goto_3

    :cond_1
    if-ne p1, v2, :cond_5

    .line 78
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "sgeo"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 79
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 81
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "bound"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->arrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 82
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->e:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/j;->f:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    if-eqz v4, :cond_2

    .line 83
    iget-object v4, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(D)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 84
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/j;->e:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(D)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 85
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/j;->f:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(D)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 86
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    iget-object v4, p0, Lcom/baidu/platform/comapi/map/j;->f:Lcom/baidu/platform/comapi/basestruct/GeoPoint;

    invoke-virtual {v4}, Lcom/baidu/platform/comapi/basestruct/GeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(D)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endArrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 90
    iget p1, p0, Lcom/baidu/platform/comapi/map/j;->j:I

    const-string v4, "type"

    if-ne p1, v0, :cond_3

    .line 91
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto :goto_1

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget v4, p0, Lcom/baidu/platform/comapi/map/j;->j:I

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 96
    :goto_1
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "elements"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->arrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 97
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 98
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "points"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->arrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 99
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->d:[D

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 100
    :goto_2
    iget-object v4, p0, Lcom/baidu/platform/comapi/map/j;->d:[D

    array-length v5, v4

    if-ge p1, v5, :cond_4

    .line 101
    iget-object v5, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    aget-wide v6, v4, p1

    invoke-virtual {v5, v6, v7}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(D)Lcom/baidu/platform/comapi/util/JsonBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 104
    :cond_4
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endArrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 105
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 106
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endArrayValue()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 107
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 110
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "ud"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 111
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v4, "dir"

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 113
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->a:Lcom/baidu/platform/comapi/map/ap;

    const-string v4, "ty"

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/map/ap;->a()I

    move-result p1

    if-eqz p1, :cond_6

    .line 114
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v5, "nst"

    invoke-virtual {p1, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget-object v5, p0, Lcom/baidu/platform/comapi/map/j;->a:Lcom/baidu/platform/comapi/map/ap;

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/map/ap;->a()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 115
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v5, "fst"

    invoke-virtual {p1, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget-object v5, p0, Lcom/baidu/platform/comapi/map/j;->a:Lcom/baidu/platform/comapi/map/ap;

    invoke-virtual {v5}, Lcom/baidu/platform/comapi/map/ap;->a()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 116
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto :goto_4

    .line 117
    :cond_6
    iget p1, p0, Lcom/baidu/platform/comapi/map/j;->j:I

    if-ne p1, v1, :cond_7

    .line 118
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    const/16 v5, 0xc1c

    invoke-virtual {p1, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto :goto_4

    :cond_7
    if-ne p1, v0, :cond_8

    .line 120
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    const/16 v5, 0xc80

    invoke-virtual {p1, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    goto :goto_4

    .line 122
    :cond_8
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 124
    :goto_4
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v5, "of"

    invoke-virtual {p1, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 125
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v5, "in"

    invoke-virtual {p1, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 126
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v5, "tx"

    invoke-virtual {p1, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    const-string v5, ""

    invoke-virtual {p1, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 127
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v5, "dis"

    invoke-virtual {p1, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 128
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v5, "align"

    invoke-virtual {p1, v5}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 129
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/j;->b:Z

    if-eqz p1, :cond_9

    .line 130
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v3, "dash"

    invoke-virtual {p1, v3}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 131
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1, v4}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget v2, p0, Lcom/baidu/platform/comapi/map/j;->j:I

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 133
    :cond_9
    iget-boolean p1, p0, Lcom/baidu/platform/comapi/map/j;->c:Z

    if-eqz p1, :cond_a

    .line 134
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "trackMove"

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 135
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "pointStyle"

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/j;->a:Lcom/baidu/platform/comapi/map/ap;

    check-cast v2, Lcom/baidu/platform/comapi/map/ar;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/ar;->e()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 136
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 139
    :cond_a
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "style"

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->object()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 140
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->a:Lcom/baidu/platform/comapi/map/ap;

    if-eqz p1, :cond_c

    .line 141
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string/jumbo v2, "width"

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/j;->a:Lcom/baidu/platform/comapi/map/ap;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/ap;->c()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 142
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v2, "color"

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/baidu/platform/comapi/map/j;->a:Lcom/baidu/platform/comapi/map/ap;

    invoke-virtual {v2}, Lcom/baidu/platform/comapi/map/ap;->b()I

    move-result v2

    invoke-static {v2}, Lcom/baidu/platform/comapi/map/ap;->c(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 143
    iget p1, p0, Lcom/baidu/platform/comapi/map/j;->j:I

    if-eq p1, v1, :cond_b

    if-ne p1, v0, :cond_c

    .line 144
    :cond_b
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    const-string v0, "scolor"

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->key(Ljava/lang/String;)Lcom/baidu/platform/comapi/util/JsonBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/baidu/platform/comapi/map/j;->a:Lcom/baidu/platform/comapi/map/ap;

    invoke-virtual {v0}, Lcom/baidu/platform/comapi/map/ap;->d()I

    move-result v0

    invoke-static {v0}, Lcom/baidu/platform/comapi/map/ap;->c(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/baidu/platform/comapi/util/JsonBuilder;->value(I)Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 147
    :cond_c
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 150
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->endObject()Lcom/baidu/platform/comapi/util/JsonBuilder;

    .line 152
    iget-object p1, p0, Lcom/baidu/platform/comapi/map/j;->h:Lcom/baidu/platform/comapi/util/JsonBuilder;

    invoke-virtual {p1}, Lcom/baidu/platform/comapi/util/JsonBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
