.class public Lcom/baidu/mapapi/map/Tile;
.super Ljava/lang/Object;
.source "Tile.java"


# instance fields
.field public final data:[B

.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/baidu/mapapi/map/Tile;->width:I

    .line 12
    iput p2, p0, Lcom/baidu/mapapi/map/Tile;->height:I

    .line 13
    iput-object p3, p0, Lcom/baidu/mapapi/map/Tile;->data:[B

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    iget v1, p0, Lcom/baidu/mapapi/map/Tile;->width:I

    const-string v2, "image_width"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    iget v1, p0, Lcom/baidu/mapapi/map/Tile;->height:I

    const-string v2, "image_height"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    iget-object v1, p0, Lcom/baidu/mapapi/map/Tile;->data:[B

    const-string v2, "image_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method
