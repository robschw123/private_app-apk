.class public Lcom/baidu/mapapi/map/MapFragment;
.super Landroid/app/Fragment;
.source "MapFragment.java"


# static fields
.field private static final a:Ljava/lang/String; = "MapFragment"


# instance fields
.field private b:Lcom/baidu/mapapi/map/MapView;

.field private c:Lcom/baidu/mapapi/map/BaiduMapOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/baidu/mapapi/map/BaiduMapOptions;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/baidu/mapapi/map/MapFragment;->c:Lcom/baidu/mapapi/map/BaiduMapOptions;

    return-void
.end method

.method public static newInstance()Lcom/baidu/mapapi/map/MapFragment;
    .locals 1

    .line 38
    new-instance v0, Lcom/baidu/mapapi/map/MapFragment;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MapFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Lcom/baidu/mapapi/map/BaiduMapOptions;)Lcom/baidu/mapapi/map/MapFragment;
    .locals 1

    .line 48
    new-instance v0, Lcom/baidu/mapapi/map/MapFragment;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/MapFragment;-><init>(Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-object v0
.end method


# virtual methods
.method public getBaiduMap()Lcom/baidu/mapapi/map/BaiduMap;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapFragment;->b:Lcom/baidu/mapapi/map/MapView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    return-object v0
.end method

.method public getMapView()Lcom/baidu/mapapi/map/MapView;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapFragment;->b:Lcom/baidu/mapapi/map/MapView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 156
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 87
    new-instance p1, Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lcom/baidu/mapapi/map/MapFragment;->c:Lcom/baidu/mapapi/map/BaiduMapOptions;

    invoke-direct {p1, p2, p3}, Lcom/baidu/mapapi/map/MapView;-><init>(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    iput-object p1, p0, Lcom/baidu/mapapi/map/MapFragment;->b:Lcom/baidu/mapapi/map/MapView;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 144
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 137
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 139
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapFragment;->b:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 150
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 124
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 126
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapFragment;->b:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 111
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 113
    iget-object v0, p0, Lcom/baidu/mapapi/map/MapFragment;->b:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 105
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 131
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
