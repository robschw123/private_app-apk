.class Lcom/baidu/mapapi/map/af;
.super Ljava/lang/Object;
.source "TileOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/mapapi/map/TileOverlay;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/map/TileOverlay;IIILjava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/baidu/mapapi/map/af;->e:Lcom/baidu/mapapi/map/TileOverlay;

    iput p2, p0, Lcom/baidu/mapapi/map/af;->a:I

    iput p3, p0, Lcom/baidu/mapapi/map/af;->b:I

    iput p4, p0, Lcom/baidu/mapapi/map/af;->c:I

    iput-object p5, p0, Lcom/baidu/mapapi/map/af;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/baidu/mapapi/map/af;->e:Lcom/baidu/mapapi/map/TileOverlay;

    invoke-static {v0}, Lcom/baidu/mapapi/map/TileOverlay;->a(Lcom/baidu/mapapi/map/TileOverlay;)Lcom/baidu/mapapi/map/TileProvider;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/FileTileProvider;

    iget v1, p0, Lcom/baidu/mapapi/map/af;->a:I

    iget v2, p0, Lcom/baidu/mapapi/map/af;->b:I

    iget v3, p0, Lcom/baidu/mapapi/map/af;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mapapi/map/FileTileProvider;->getTile(III)Lcom/baidu/mapapi/map/Tile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    iget v1, v0, Lcom/baidu/mapapi/map/Tile;->width:I

    const/16 v2, 0x100

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/baidu/mapapi/map/Tile;->height:I

    if-ne v1, v2, :cond_0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/baidu/mapapi/map/af;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/baidu/mapapi/map/af;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/baidu/mapapi/map/af;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/baidu/mapapi/map/af;->e:Lcom/baidu/mapapi/map/TileOverlay;

    invoke-static {v2, v1, v0}, Lcom/baidu/mapapi/map/TileOverlay;->a(Lcom/baidu/mapapi/map/TileOverlay;Ljava/lang/String;Lcom/baidu/mapapi/map/Tile;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-static {}, Lcom/baidu/mapapi/map/TileOverlay;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTile pic must be 256 * 256"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {}, Lcom/baidu/mapapi/map/TileOverlay;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileTile pic is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/map/af;->e:Lcom/baidu/mapapi/map/TileOverlay;

    invoke-static {v0}, Lcom/baidu/mapapi/map/TileOverlay;->b(Lcom/baidu/mapapi/map/TileOverlay;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mapapi/map/af;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
