.class public Lcom/baidu/mapapi/map/HeatMapAnimation;
.super Ljava/lang/Object;
.source "HeatMapAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

.field private c:Z


# direct methods
.method public constructor <init>(ZILcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 5
    iput v0, p0, Lcom/baidu/mapapi/map/HeatMapAnimation;->a:I

    .line 6
    sget-object v0, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->Linear:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    iput-object v0, p0, Lcom/baidu/mapapi/map/HeatMapAnimation;->b:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    if-ltz p2, :cond_0

    .line 36
    iput p2, p0, Lcom/baidu/mapapi/map/HeatMapAnimation;->a:I

    .line 38
    :cond_0
    iput-object p3, p0, Lcom/baidu/mapapi/map/HeatMapAnimation;->b:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    .line 39
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/HeatMapAnimation;->c:Z

    return-void
.end method


# virtual methods
.method public getAnimationType()I
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/baidu/mapapi/map/HeatMapAnimation;->b:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/baidu/mapapi/map/HeatMapAnimation;->a:I

    return v0
.end method

.method public getIsAnimation()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/HeatMapAnimation;->c:Z

    return v0
.end method

.method public setAnimation(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/baidu/mapapi/map/HeatMapAnimation;->c:Z

    return-void
.end method

.method public setAnimationType(Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/baidu/mapapi/map/HeatMapAnimation;->b:Lcom/baidu/mapapi/map/HeatMapAnimation$AnimationType;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/baidu/mapapi/map/HeatMapAnimation;->a:I

    return-void
.end method
