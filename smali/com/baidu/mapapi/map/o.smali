.class Lcom/baidu/mapapi/map/o;
.super Ljava/lang/Object;
.source "HeatMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/baidu/mapapi/map/HeatMap;


# virtual methods
.method public run()V
    .locals 4

    .line 642
    iget-object v0, p0, Lcom/baidu/mapapi/map/o;->d:Lcom/baidu/mapapi/map/HeatMap;

    iget v1, p0, Lcom/baidu/mapapi/map/o;->a:I

    iget v2, p0, Lcom/baidu/mapapi/map/o;->b:I

    iget v3, p0, Lcom/baidu/mapapi/map/o;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mapapi/map/HeatMap;->a(Lcom/baidu/mapapi/map/HeatMap;III)V

    return-void
.end method
