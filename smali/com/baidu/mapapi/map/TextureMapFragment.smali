.class public Lcom/baidu/mapapi/map/TextureMapFragment;
.super Landroid/app/Fragment;
.source "TextureMapFragment.java"


# static fields
.field private static final a:Ljava/lang/String; = "TextureMapFragment"


# instance fields
.field private b:Lcom/baidu/mapapi/map/TextureMapView;

.field private c:Lcom/baidu/mapapi/map/BaiduMapOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/baidu/mapapi/map/BaiduMapOptions;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/baidu/mapapi/map/TextureMapFragment;->c:Lcom/baidu/mapapi/map/BaiduMapOptions;

    return-void
.end method

.method public static newInstance()Lcom/baidu/mapapi/map/TextureMapFragment;
    .locals 1

    .line 37
    new-instance v0, Lcom/baidu/mapapi/map/TextureMapFragment;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/TextureMapFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Lcom/baidu/mapapi/map/BaiduMapOptions;)Lcom/baidu/mapapi/map/TextureMapFragment;
    .locals 1

    .line 47
    new-instance v0, Lcom/baidu/mapapi/map/TextureMapFragment;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/TextureMapFragment;-><init>(Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-object v0
.end method


# virtual methods
.method public getBaiduMap()Lcom/baidu/mapapi/map/BaiduMap;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapFragment;->b:Lcom/baidu/mapapi/map/TextureMapView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TextureMapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    return-object v0
.end method

.method public getMapView()Lcom/baidu/mapapi/map/TextureMapView;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapFragment;->b:Lcom/baidu/mapapi/map/TextureMapView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 98
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

    .line 155
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

    .line 86
    new-instance p1, Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/TextureMapFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lcom/baidu/mapapi/map/TextureMapFragment;->c:Lcom/baidu/mapapi/map/BaiduMapOptions;

    invoke-direct {p1, p2, p3}, Lcom/baidu/mapapi/map/TextureMapView;-><init>(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    iput-object p1, p0, Lcom/baidu/mapapi/map/TextureMapFragment;->b:Lcom/baidu/mapapi/map/TextureMapView;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 143
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 136
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 138
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapFragment;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TextureMapView;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 149
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 123
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 125
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapFragment;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TextureMapView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/baidu/mapapi/map/TextureMapFragment;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TextureMapView;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 104
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 130
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 92
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
