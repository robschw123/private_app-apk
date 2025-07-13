.class public Lcom/baidu/mapapi/map/SupportMapFragment;
.super Landroidx/fragment/app/Fragment;
.source "SupportMapFragment.java"


# static fields
.field private static final a:Ljava/lang/String; = "SupportMapFragment"


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

    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/baidu/mapapi/map/BaiduMapOptions;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/baidu/mapapi/map/SupportMapFragment;->c:Lcom/baidu/mapapi/map/BaiduMapOptions;

    return-void
.end method

.method public static newInstance()Lcom/baidu/mapapi/map/SupportMapFragment;
    .locals 1

    .line 39
    new-instance v0, Lcom/baidu/mapapi/map/SupportMapFragment;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/SupportMapFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Lcom/baidu/mapapi/map/BaiduMapOptions;)Lcom/baidu/mapapi/map/SupportMapFragment;
    .locals 1

    .line 49
    new-instance v0, Lcom/baidu/mapapi/map/SupportMapFragment;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/map/SupportMapFragment;-><init>(Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    return-object v0
.end method


# virtual methods
.method public getBaiduMap()Lcom/baidu/mapapi/map/BaiduMap;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/baidu/mapapi/map/SupportMapFragment;->b:Lcom/baidu/mapapi/map/TextureMapView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TextureMapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    return-object v0
.end method

.method public getMapView()Lcom/baidu/mapapi/map/TextureMapView;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/baidu/mapapi/map/SupportMapFragment;->b:Lcom/baidu/mapapi/map/TextureMapView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 171
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 88
    new-instance p1, Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/SupportMapFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object p3, p0, Lcom/baidu/mapapi/map/SupportMapFragment;->c:Lcom/baidu/mapapi/map/BaiduMapOptions;

    invoke-direct {p1, p2, p3}, Lcom/baidu/mapapi/map/TextureMapView;-><init>(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    iput-object p1, p0, Lcom/baidu/mapapi/map/SupportMapFragment;->b:Lcom/baidu/mapapi/map/TextureMapView;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 159
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 152
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 154
    iget-object v0, p0, Lcom/baidu/mapapi/map/SupportMapFragment;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TextureMapView;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 165
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 139
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 141
    iget-object v0, p0, Lcom/baidu/mapapi/map/SupportMapFragment;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TextureMapView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 128
    iget-object v0, p0, Lcom/baidu/mapapi/map/SupportMapFragment;->b:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TextureMapView;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 133
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 120
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 146
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method
