.class public Lcom/baidu/mapapi/map/WearMapView$AnimationTask;
.super Ljava/util/TimerTask;
.source "WearMapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/map/WearMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationTask"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/WearMapView;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/WearMapView;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->a:Lcom/baidu/mapapi/map/WearMapView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 740
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 741
    iput v1, v0, Landroid/os/Message;->what:I

    .line 742
    iget-object v1, p0, Lcom/baidu/mapapi/map/WearMapView$AnimationTask;->a:Lcom/baidu/mapapi/map/WearMapView;

    iget-object v1, v1, Lcom/baidu/mapapi/map/WearMapView;->mTimerHandler:Lcom/baidu/mapapi/map/WearMapView$a;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/WearMapView$a;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
