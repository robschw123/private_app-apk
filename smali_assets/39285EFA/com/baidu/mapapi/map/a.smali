.class Lcom/baidu/mapapi/map/a;
.super Ljava/lang/Object;
.source "BaiduMap.java"

# interfaces
.implements Lcom/baidu/mapapi/map/Overlay$a;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/BaiduMap;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mapapi/map/Overlay;)Lcom/baidu/mapapi/model/LatLngBounds;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 530
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 531
    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 532
    iget-object p1, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->b(Landroid/os/Bundle;)Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/baidu/mapapi/map/Overlay;)V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->b(Lcom/baidu/mapapi/map/BaiduMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 540
    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->c(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 541
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Overlay;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->f(Landroid/os/Bundle;)V

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->c(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_3

    .line 548
    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->d(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 549
    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->d(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 552
    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->e(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 553
    check-cast p1, Lcom/baidu/mapapi/map/Marker;

    .line 554
    iget-object v0, p1, Lcom/baidu/mapapi/map/Marker;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 555
    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->e(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 556
    iget-object p1, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p1}, Lcom/baidu/mapapi/map/BaiduMap;->e(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 557
    iget-object p1, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 558
    iget-object p1, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {p1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->c(Z)V

    :cond_4
    return-void
.end method

.method public c(Lcom/baidu/mapapi/map/Overlay;)V
    .locals 5

    .line 566
    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->b(Lcom/baidu/mapapi/map/BaiduMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 569
    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->c(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 571
    instance-of v1, p1, Lcom/baidu/mapapi/map/Marker;

    if-eqz v1, :cond_3

    .line 572
    move-object v1, p1

    check-cast v1, Lcom/baidu/mapapi/map/Marker;

    .line 574
    iget-object v2, v1, Lcom/baidu/mapapi/map/Marker;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 575
    iget-object v2, v1, Lcom/baidu/mapapi/map/Marker;->s:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/baidu/mapapi/map/Marker;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 576
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 577
    iget-object v4, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v4}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v4}, Lcom/baidu/mapapi/map/BaiduMap;->b(Lcom/baidu/mapapi/map/BaiduMap;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 578
    invoke-virtual {v1}, Lcom/baidu/mapapi/map/Marker;->remove()V

    .line 579
    iget-object v0, v1, Lcom/baidu/mapapi/map/Marker;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 580
    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v0

    invoke-virtual {p1, v2}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/d;->c(Landroid/os/Bundle;)V

    .line 581
    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->c(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    .line 587
    :cond_1
    iget-object v2, v1, Lcom/baidu/mapapi/map/Marker;->s:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/baidu/mapapi/map/Marker;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 588
    iget-object v2, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v2}, Lcom/baidu/mapapi/map/BaiduMap;->e(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 589
    iget-object v2, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v2}, Lcom/baidu/mapapi/map/BaiduMap;->e(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 591
    :cond_2
    iget-object v2, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v2}, Lcom/baidu/mapapi/map/BaiduMap;->e(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v1, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 593
    iget-object v1, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/baidu/mapsdkplatform/comapi/map/d;->c(Z)V

    .line 599
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->b(Lcom/baidu/mapapi/map/BaiduMap;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 600
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 601
    iget-object v1, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v1}, Lcom/baidu/mapapi/map/BaiduMap;->a(Lcom/baidu/mapapi/map/BaiduMap;)Lcom/baidu/mapsdkplatform/comapi/map/d;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapsdkplatform/comapi/map/d;->e(Landroid/os/Bundle;)V

    .line 605
    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->d(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 606
    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->d(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 609
    :cond_5
    instance-of v0, p1, Lcom/baidu/mapapi/map/Marker;

    if-eqz v0, :cond_6

    .line 610
    check-cast p1, Lcom/baidu/mapapi/map/Marker;

    .line 611
    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->d(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public d(Lcom/baidu/mapapi/map/Overlay;)Z
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->c(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/map/a;->a:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BaiduMap;->c(Lcom/baidu/mapapi/map/BaiduMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
