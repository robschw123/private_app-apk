.class Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;
.super Landroid/os/Handler;
.source "DHMapFrameItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/dcloud/js/map/adapter/DHMapFrameItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;


# direct methods
.method public constructor <init>(Lio/dcloud/js/map/adapter/DHMapFrameItem;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "looper"
        }
    .end annotation

    .line 524
    iput-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    .line 525
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 538
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 544
    :pswitch_1
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$100(Lio/dcloud/js/map/adapter/DHMapFrameItem;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 586
    :pswitch_2
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/DHMapView;->showZoomControls(Z)V

    goto/16 :goto_0

    .line 582
    :pswitch_3
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/DHMapView;->setVisible(Z)V

    goto/16 :goto_0

    .line 578
    :pswitch_4
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/DHMapView;->setMapType(I)V

    goto/16 :goto_0

    .line 574
    :pswitch_5
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/DHMapView;->showUserLocation(Z)V

    goto/16 :goto_0

    .line 590
    :pswitch_6
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 591
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 592
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/dcloud/js/map/adapter/DHMapView;->setZoom(I)V

    .line 593
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    check-cast p1, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/DHMapView;->setCenter(Lcom/baidu/mapapi/model/LatLng;)V

    goto/16 :goto_0

    .line 570
    :pswitch_7
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 571
    iget-object p1, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object p1

    invoke-virtual {p1}, Lio/dcloud/js/map/adapter/DHMapView;->clearOverlays()V

    goto :goto_0

    .line 566
    :pswitch_8
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/DHMapView;->removeOverlay(Ljava/lang/Object;)V

    goto :goto_0

    .line 562
    :pswitch_9
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/DHMapView;->addOverlay(Ljava/lang/Object;)V

    goto :goto_0

    .line 551
    :pswitch_a
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/DHMapView;->setCenter(Lcom/baidu/mapapi/model/LatLng;)V

    goto :goto_0

    .line 547
    :pswitch_b
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$200(Lio/dcloud/js/map/adapter/DHMapFrameItem;)Lio/dcloud/js/map/adapter/DHMapView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lio/dcloud/js/map/adapter/DHMapView;->setZoom(I)V

    goto :goto_0

    .line 540
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    .line 541
    iget-object v0, p0, Lio/dcloud/js/map/adapter/DHMapFrameItem$MapHandler;->this$0:Lio/dcloud/js/map/adapter/DHMapFrameItem;

    invoke-static {v0, p1}, Lio/dcloud/js/map/adapter/DHMapFrameItem;->access$000(Lio/dcloud/js/map/adapter/DHMapFrameItem;Lorg/json/JSONArray;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
